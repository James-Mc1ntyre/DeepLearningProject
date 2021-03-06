'''
load and preprocess data using MNE

output: should be epochs of 2 channels (laterally symmetric channels)
with labels corresponding to Right, Left, Rest
'''

# imports
import os
import numpy as np
import pandas as pd
import mne 
mne.utils.set_config('MNE_USE_CUDA', 'true')  
from BCI2kReader import BCI2kReader as b2k
import scipy.io
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split


# Load data
# Data is filtered
srate = 250

filepath = os.getcwd()

datafile = scipy.io.loadmat(filepath + '//Data_For_James//rawdata.mat')
data = datafile['X_raw']

# Format for MNE

data_sh = np.transpose(data, axes=[0,2,1])
ch_names=['Fz', 'FC3', 'FC1', 'FCz', 'FC2', 'FC4', 'C5', 'C3', 'C1', 'Cz', 'C2', 'C4', 'C6', 'CP3', 'CP1', 'CPz', 'CP2', 'CP4', 'P1', 'Pz', 'P2', 'Oz', 'EoG1', 'EoG2', 'EoG3']
info = mne.create_info(ch_names=ch_names, ch_types='eeg', sfreq=srate)
event_data = np.genfromtxt(filepath + '//Data_for_James//labels.csv')[1:].ravel()
events = np.stack([np.arange(len(event_data))*1250, np.zeros(len(event_data)), event_data], axis=1)
event_ids = dict(Left = 1, Right = 2, Feet = 3, Tongue = 4)
epochs = mne.EpochsArray(data_sh, info, events=events.astype(int), event_id=event_ids)

# Filter again
epochs.filter(5,50)

# CAR filter
epochs.set_eeg_reference()
# Re-sample
epochs.resample(160)
# crop 4s (to be similar to other analyses)
epochs.crop(0,4)

# Organize into pairs for NN input
pairs = [['C1', 'C2'],['C3', 'C4'], ['FC3', 'FC4'], ['CP1', 'CP2'], ['CP3', 'CP4']]
# Use all Central electrodes for now
# pair = ['C3', 'C4']


epochs_CHsets_Right = []
epochs_CHsets_Left = []
epochs_CHsets_Feet = []
epochs_CHsets_Tongue = []
for pair in pairs:
    epochs_CHsets_Right.append(epochs.copy().pick(pair)['Right'].get_data()[:,:,:-1])
    epochs_CHsets_Left.append(epochs.copy().pick(pair)['Left'].get_data()[:,:,:-1])
    epochs_CHsets_Feet.append(epochs.copy().pick(pair)['Feet'].get_data()[:,:,:-1])
    epochs_CHsets_Tongue.append(epochs.copy().pick(pair)['Tongue'].get_data()[:,:,:-1])

epochs_Right = np.concatenate(epochs_CHsets_Right, axis=0)
epochs_Left = np.concatenate(epochs_CHsets_Left, axis=0)
epochs_Feet = np.concatenate(epochs_CHsets_Feet, axis=0)
epochs_Tongue = np.concatenate(epochs_CHsets_Tongue, axis=0)

all_epochs = np.concatenate([epochs_Right, epochs_Left, epochs_Feet, epochs_Tongue], axis=0)
all_labels = ['Right']*epochs_Right.shape[0] + ['Left']*epochs_Left.shape[0] + ['Feet']*epochs_Feet.shape[0] + ['Tongue']*epochs_Tongue.shape[0]

# Separate training and testing 
training_epochs, testing_epochs, training_labels, testing_labels = train_test_split(all_epochs,
                                                                                    all_labels,
                                                                                    stratify=all_labels,
                                                                                    test_size=0.70,
                                                                                    random_state=42)

# save processed epochs and labels
np.savez(filepath + '\\Data_For_James\\preprocessedOnlineDataset_EpochsAndLabels.npz', training_epochs=training_epochs, training_labels=training_labels, testing_epochs=testing_epochs, testing_labels=testing_labels)
