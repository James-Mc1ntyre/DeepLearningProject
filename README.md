<h1 align="center" > Deep Learning Project </h1>

Using multiple strategies to train a state of the art machine learning architecture to classify 4 differrent Motor Imagery classes.

<h3 align="center" > Reference paper </h3>
 <div> Mattioli F, Porcaro C, Baldassarre G. <a href="https://iopscience.iop.org/article/10.1088/1741-2552/ac4430">A 1D CNN for high accuracy classification and 
transfer learning in motor imagery EEG-based brain-computer interface </a>. J Neural Eng. 2022 
Jan 6;
18(6). doi: 10.1088/1741-2552/ac4430. PMID: 34920443. </div> 

<div align="center">
<img src="Architecture_Images/hopefullnet.png" alt="HopefullNet">
</div>

<h2 align="center" > Usage </h2>

<h3 align="center" > Install the dependencies </h3>

In order to train the network (and perform inference) you need to install the dependencies. There are two ways to install dependencies: (1) **Using a docker container** (recommended), (2) **Using a python environment**. An NVIDIA GPU with at least 6 GB is also recommended. The network was trained with an NVIDIA RTX 2060 and an NVIDIA TESLA P100, the former taking about 30 minutes to train, the latter about 15 minutes.
