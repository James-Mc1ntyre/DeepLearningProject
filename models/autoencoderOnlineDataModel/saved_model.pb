??<
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
?
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??8
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
'autoencoder/my_encoder/conv1d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'autoencoder/my_encoder/conv1d_20/kernel
?
;autoencoder/my_encoder/conv1d_20/kernel/Read/ReadVariableOpReadVariableOp'autoencoder/my_encoder/conv1d_20/kernel*"
_output_shapes
: *
dtype0
?
%autoencoder/my_encoder/conv1d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%autoencoder/my_encoder/conv1d_20/bias
?
9autoencoder/my_encoder/conv1d_20/bias/Read/ReadVariableOpReadVariableOp%autoencoder/my_encoder/conv1d_20/bias*
_output_shapes
: *
dtype0
?
Wautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *h
shared_nameYWautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean
?
kautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean/Read/ReadVariableOpReadVariableOpWautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean*
_output_shapes
: *
dtype0
?
[autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *l
shared_name][autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance
?
oautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance/Read/ReadVariableOpReadVariableOp[autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance*
_output_shapes
: *
dtype0
?
Qautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *b
shared_nameSQautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma
?
eautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/Read/ReadVariableOpReadVariableOpQautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma*
_output_shapes
: *
dtype0
?
Pautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *a
shared_nameRPautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta
?
dautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/Read/ReadVariableOpReadVariableOpPautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta*
_output_shapes
: *
dtype0
?
'autoencoder/my_encoder/conv1d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *8
shared_name)'autoencoder/my_encoder/conv1d_21/kernel
?
;autoencoder/my_encoder/conv1d_21/kernel/Read/ReadVariableOpReadVariableOp'autoencoder/my_encoder/conv1d_21/kernel*"
_output_shapes
:  *
dtype0
?
%autoencoder/my_encoder/conv1d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%autoencoder/my_encoder/conv1d_21/bias
?
9autoencoder/my_encoder/conv1d_21/bias/Read/ReadVariableOpReadVariableOp%autoencoder/my_encoder/conv1d_21/bias*
_output_shapes
: *
dtype0
?
Yautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *j
shared_name[Yautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean
?
mautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean/Read/ReadVariableOpReadVariableOpYautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean*
_output_shapes
: *
dtype0
?
]autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *n
shared_name_]autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance
?
qautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance/Read/ReadVariableOpReadVariableOp]autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance*
_output_shapes
: *
dtype0
?
Sautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *d
shared_nameUSautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma
?
gautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/Read/ReadVariableOpReadVariableOpSautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma*
_output_shapes
: *
dtype0
?
Rautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *c
shared_nameTRautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta
?
fautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/Read/ReadVariableOpReadVariableOpRautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta*
_output_shapes
: *
dtype0
?
'autoencoder/my_encoder/conv1d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *8
shared_name)'autoencoder/my_encoder/conv1d_22/kernel
?
;autoencoder/my_encoder/conv1d_22/kernel/Read/ReadVariableOpReadVariableOp'autoencoder/my_encoder/conv1d_22/kernel*"
_output_shapes
:  *
dtype0
?
%autoencoder/my_encoder/conv1d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%autoencoder/my_encoder/conv1d_22/bias
?
9autoencoder/my_encoder/conv1d_22/bias/Read/ReadVariableOpReadVariableOp%autoencoder/my_encoder/conv1d_22/bias*
_output_shapes
: *
dtype0
?
'autoencoder/my_encoder/conv1d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *8
shared_name)'autoencoder/my_encoder/conv1d_23/kernel
?
;autoencoder/my_encoder/conv1d_23/kernel/Read/ReadVariableOpReadVariableOp'autoencoder/my_encoder/conv1d_23/kernel*"
_output_shapes
:  *
dtype0
?
%autoencoder/my_encoder/conv1d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%autoencoder/my_encoder/conv1d_23/bias
?
9autoencoder/my_encoder/conv1d_23/bias/Read/ReadVariableOpReadVariableOp%autoencoder/my_encoder/conv1d_23/bias*
_output_shapes
: *
dtype0
?
&autoencoder/my_encoder/dense_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?K?*7
shared_name(&autoencoder/my_encoder/dense_71/kernel
?
:autoencoder/my_encoder/dense_71/kernel/Read/ReadVariableOpReadVariableOp&autoencoder/my_encoder/dense_71/kernel* 
_output_shapes
:
?K?*
dtype0
?
$autoencoder/my_encoder/dense_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$autoencoder/my_encoder/dense_71/bias
?
8autoencoder/my_encoder/dense_71/bias/Read/ReadVariableOpReadVariableOp$autoencoder/my_encoder/dense_71/bias*
_output_shapes	
:?*
dtype0
?
.autoencoder/my_decoder/conv1d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *?
shared_name0.autoencoder/my_decoder/conv1d_transpose/kernel
?
Bautoencoder/my_decoder/conv1d_transpose/kernel/Read/ReadVariableOpReadVariableOp.autoencoder/my_decoder/conv1d_transpose/kernel*"
_output_shapes
:  *
dtype0
?
,autoencoder/my_decoder/conv1d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,autoencoder/my_decoder/conv1d_transpose/bias
?
@autoencoder/my_decoder/conv1d_transpose/bias/Read/ReadVariableOpReadVariableOp,autoencoder/my_decoder/conv1d_transpose/bias*
_output_shapes
: *
dtype0
?
Yautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *j
shared_name[Yautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean
?
mautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean/Read/ReadVariableOpReadVariableOpYautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean*
_output_shapes
: *
dtype0
?
]autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *n
shared_name_]autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance
?
qautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance/Read/ReadVariableOpReadVariableOp]autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance*
_output_shapes
: *
dtype0
?
Sautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *d
shared_nameUSautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma
?
gautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/Read/ReadVariableOpReadVariableOpSautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma*
_output_shapes
: *
dtype0
?
Rautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *c
shared_nameTRautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta
?
fautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/Read/ReadVariableOpReadVariableOpRautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta*
_output_shapes
: *
dtype0
?
0autoencoder/my_decoder/conv1d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *A
shared_name20autoencoder/my_decoder/conv1d_transpose_1/kernel
?
Dautoencoder/my_decoder/conv1d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp0autoencoder/my_decoder/conv1d_transpose_1/kernel*"
_output_shapes
:  *
dtype0
?
.autoencoder/my_decoder/conv1d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.autoencoder/my_decoder/conv1d_transpose_1/bias
?
Bautoencoder/my_decoder/conv1d_transpose_1/bias/Read/ReadVariableOpReadVariableOp.autoencoder/my_decoder/conv1d_transpose_1/bias*
_output_shapes
: *
dtype0
?
Wautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *h
shared_nameYWautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean
?
kautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean/Read/ReadVariableOpReadVariableOpWautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean*
_output_shapes
: *
dtype0
?
[autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *l
shared_name][autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance
?
oautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance/Read/ReadVariableOpReadVariableOp[autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance*
_output_shapes
: *
dtype0
?
Qautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *b
shared_nameSQautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma
?
eautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/Read/ReadVariableOpReadVariableOpQautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma*
_output_shapes
: *
dtype0
?
Pautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *a
shared_nameRPautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta
?
dautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/Read/ReadVariableOpReadVariableOpPautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta*
_output_shapes
: *
dtype0
?
0autoencoder/my_decoder/conv1d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *A
shared_name20autoencoder/my_decoder/conv1d_transpose_2/kernel
?
Dautoencoder/my_decoder/conv1d_transpose_2/kernel/Read/ReadVariableOpReadVariableOp0autoencoder/my_decoder/conv1d_transpose_2/kernel*"
_output_shapes
:  *
dtype0
?
.autoencoder/my_decoder/conv1d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.autoencoder/my_decoder/conv1d_transpose_2/bias
?
Bautoencoder/my_decoder/conv1d_transpose_2/bias/Read/ReadVariableOpReadVariableOp.autoencoder/my_decoder/conv1d_transpose_2/bias*
_output_shapes
: *
dtype0
?
0autoencoder/my_decoder/conv1d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *A
shared_name20autoencoder/my_decoder/conv1d_transpose_3/kernel
?
Dautoencoder/my_decoder/conv1d_transpose_3/kernel/Read/ReadVariableOpReadVariableOp0autoencoder/my_decoder/conv1d_transpose_3/kernel*"
_output_shapes
: *
dtype0
?
.autoencoder/my_decoder/conv1d_transpose_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.autoencoder/my_decoder/conv1d_transpose_3/bias
?
Bautoencoder/my_decoder/conv1d_transpose_3/bias/Read/ReadVariableOpReadVariableOp.autoencoder/my_decoder/conv1d_transpose_3/bias*
_output_shapes
: *
dtype0
?
&autoencoder/my_decoder/dense_72/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&autoencoder/my_decoder/dense_72/kernel
?
:autoencoder/my_decoder/dense_72/kernel/Read/ReadVariableOpReadVariableOp&autoencoder/my_decoder/dense_72/kernel* 
_output_shapes
:
??*
dtype0
?
$autoencoder/my_decoder/dense_72/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$autoencoder/my_decoder/dense_72/bias
?
8autoencoder/my_decoder/dense_72/bias/Read/ReadVariableOpReadVariableOp$autoencoder/my_decoder/dense_72/bias*
_output_shapes	
:?*
dtype0
?
&autoencoder/my_decoder/dense_74/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*7
shared_name(&autoencoder/my_decoder/dense_74/kernel
?
:autoencoder/my_decoder/dense_74/kernel/Read/ReadVariableOpReadVariableOp&autoencoder/my_decoder/dense_74/kernel* 
_output_shapes
:
??
*
dtype0
?
$autoencoder/my_decoder/dense_74/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*5
shared_name&$autoencoder/my_decoder/dense_74/bias
?
8autoencoder/my_decoder/dense_74/bias/Read/ReadVariableOpReadVariableOp$autoencoder/my_decoder/dense_74/bias*
_output_shapes	
:?
*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
.Adam/autoencoder/my_encoder/conv1d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adam/autoencoder/my_encoder/conv1d_20/kernel/m
?
BAdam/autoencoder/my_encoder/conv1d_20/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/autoencoder/my_encoder/conv1d_20/kernel/m*"
_output_shapes
: *
dtype0
?
,Adam/autoencoder/my_encoder/conv1d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/autoencoder/my_encoder/conv1d_20/bias/m
?
@Adam/autoencoder/my_encoder/conv1d_20/bias/m/Read/ReadVariableOpReadVariableOp,Adam/autoencoder/my_encoder/conv1d_20/bias/m*
_output_shapes
: *
dtype0
?
XAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *i
shared_nameZXAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/m
?
lAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/m/Read/ReadVariableOpReadVariableOpXAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/m*
_output_shapes
: *
dtype0
?
WAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *h
shared_nameYWAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m
?
kAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m/Read/ReadVariableOpReadVariableOpWAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m*
_output_shapes
: *
dtype0
?
.Adam/autoencoder/my_encoder/conv1d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *?
shared_name0.Adam/autoencoder/my_encoder/conv1d_21/kernel/m
?
BAdam/autoencoder/my_encoder/conv1d_21/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/autoencoder/my_encoder/conv1d_21/kernel/m*"
_output_shapes
:  *
dtype0
?
,Adam/autoencoder/my_encoder/conv1d_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/autoencoder/my_encoder/conv1d_21/bias/m
?
@Adam/autoencoder/my_encoder/conv1d_21/bias/m/Read/ReadVariableOpReadVariableOp,Adam/autoencoder/my_encoder/conv1d_21/bias/m*
_output_shapes
: *
dtype0
?
ZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *k
shared_name\ZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/m
?
nAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/m/Read/ReadVariableOpReadVariableOpZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/m*
_output_shapes
: *
dtype0
?
YAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *j
shared_name[YAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m
?
mAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m/Read/ReadVariableOpReadVariableOpYAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m*
_output_shapes
: *
dtype0
?
.Adam/autoencoder/my_encoder/conv1d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *?
shared_name0.Adam/autoencoder/my_encoder/conv1d_22/kernel/m
?
BAdam/autoencoder/my_encoder/conv1d_22/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/autoencoder/my_encoder/conv1d_22/kernel/m*"
_output_shapes
:  *
dtype0
?
,Adam/autoencoder/my_encoder/conv1d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/autoencoder/my_encoder/conv1d_22/bias/m
?
@Adam/autoencoder/my_encoder/conv1d_22/bias/m/Read/ReadVariableOpReadVariableOp,Adam/autoencoder/my_encoder/conv1d_22/bias/m*
_output_shapes
: *
dtype0
?
.Adam/autoencoder/my_encoder/conv1d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *?
shared_name0.Adam/autoencoder/my_encoder/conv1d_23/kernel/m
?
BAdam/autoencoder/my_encoder/conv1d_23/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/autoencoder/my_encoder/conv1d_23/kernel/m*"
_output_shapes
:  *
dtype0
?
,Adam/autoencoder/my_encoder/conv1d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/autoencoder/my_encoder/conv1d_23/bias/m
?
@Adam/autoencoder/my_encoder/conv1d_23/bias/m/Read/ReadVariableOpReadVariableOp,Adam/autoencoder/my_encoder/conv1d_23/bias/m*
_output_shapes
: *
dtype0
?
-Adam/autoencoder/my_encoder/dense_71/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?K?*>
shared_name/-Adam/autoencoder/my_encoder/dense_71/kernel/m
?
AAdam/autoencoder/my_encoder/dense_71/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/autoencoder/my_encoder/dense_71/kernel/m* 
_output_shapes
:
?K?*
dtype0
?
+Adam/autoencoder/my_encoder/dense_71/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*<
shared_name-+Adam/autoencoder/my_encoder/dense_71/bias/m
?
?Adam/autoencoder/my_encoder/dense_71/bias/m/Read/ReadVariableOpReadVariableOp+Adam/autoencoder/my_encoder/dense_71/bias/m*
_output_shapes	
:?*
dtype0
?
5Adam/autoencoder/my_decoder/conv1d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *F
shared_name75Adam/autoencoder/my_decoder/conv1d_transpose/kernel/m
?
IAdam/autoencoder/my_decoder/conv1d_transpose/kernel/m/Read/ReadVariableOpReadVariableOp5Adam/autoencoder/my_decoder/conv1d_transpose/kernel/m*"
_output_shapes
:  *
dtype0
?
3Adam/autoencoder/my_decoder/conv1d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *D
shared_name53Adam/autoencoder/my_decoder/conv1d_transpose/bias/m
?
GAdam/autoencoder/my_decoder/conv1d_transpose/bias/m/Read/ReadVariableOpReadVariableOp3Adam/autoencoder/my_decoder/conv1d_transpose/bias/m*
_output_shapes
: *
dtype0
?
ZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *k
shared_name\ZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/m
?
nAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/m/Read/ReadVariableOpReadVariableOpZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/m*
_output_shapes
: *
dtype0
?
YAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *j
shared_name[YAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m
?
mAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m/Read/ReadVariableOpReadVariableOpYAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m*
_output_shapes
: *
dtype0
?
7Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/m
?
KAdam/autoencoder/my_decoder/conv1d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp7Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/m*"
_output_shapes
:  *
dtype0
?
5Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/m
?
IAdam/autoencoder/my_decoder/conv1d_transpose_1/bias/m/Read/ReadVariableOpReadVariableOp5Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/m*
_output_shapes
: *
dtype0
?
XAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *i
shared_nameZXAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/m
?
lAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/m/Read/ReadVariableOpReadVariableOpXAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/m*
_output_shapes
: *
dtype0
?
WAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *h
shared_nameYWAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m
?
kAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m/Read/ReadVariableOpReadVariableOpWAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m*
_output_shapes
: *
dtype0
?
7Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/m
?
KAdam/autoencoder/my_decoder/conv1d_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOp7Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/m*"
_output_shapes
:  *
dtype0
?
5Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/m
?
IAdam/autoencoder/my_decoder/conv1d_transpose_2/bias/m/Read/ReadVariableOpReadVariableOp5Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/m*
_output_shapes
: *
dtype0
?
7Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/m
?
KAdam/autoencoder/my_decoder/conv1d_transpose_3/kernel/m/Read/ReadVariableOpReadVariableOp7Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/m*"
_output_shapes
: *
dtype0
?
5Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/m
?
IAdam/autoencoder/my_decoder/conv1d_transpose_3/bias/m/Read/ReadVariableOpReadVariableOp5Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/m*
_output_shapes
: *
dtype0
?
-Adam/autoencoder/my_decoder/dense_72/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*>
shared_name/-Adam/autoencoder/my_decoder/dense_72/kernel/m
?
AAdam/autoencoder/my_decoder/dense_72/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/autoencoder/my_decoder/dense_72/kernel/m* 
_output_shapes
:
??*
dtype0
?
+Adam/autoencoder/my_decoder/dense_72/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*<
shared_name-+Adam/autoencoder/my_decoder/dense_72/bias/m
?
?Adam/autoencoder/my_decoder/dense_72/bias/m/Read/ReadVariableOpReadVariableOp+Adam/autoencoder/my_decoder/dense_72/bias/m*
_output_shapes	
:?*
dtype0
?
-Adam/autoencoder/my_decoder/dense_74/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*>
shared_name/-Adam/autoencoder/my_decoder/dense_74/kernel/m
?
AAdam/autoencoder/my_decoder/dense_74/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/autoencoder/my_decoder/dense_74/kernel/m* 
_output_shapes
:
??
*
dtype0
?
+Adam/autoencoder/my_decoder/dense_74/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*<
shared_name-+Adam/autoencoder/my_decoder/dense_74/bias/m
?
?Adam/autoencoder/my_decoder/dense_74/bias/m/Read/ReadVariableOpReadVariableOp+Adam/autoencoder/my_decoder/dense_74/bias/m*
_output_shapes	
:?
*
dtype0
?
.Adam/autoencoder/my_encoder/conv1d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adam/autoencoder/my_encoder/conv1d_20/kernel/v
?
BAdam/autoencoder/my_encoder/conv1d_20/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/autoencoder/my_encoder/conv1d_20/kernel/v*"
_output_shapes
: *
dtype0
?
,Adam/autoencoder/my_encoder/conv1d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/autoencoder/my_encoder/conv1d_20/bias/v
?
@Adam/autoencoder/my_encoder/conv1d_20/bias/v/Read/ReadVariableOpReadVariableOp,Adam/autoencoder/my_encoder/conv1d_20/bias/v*
_output_shapes
: *
dtype0
?
XAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *i
shared_nameZXAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/v
?
lAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/v/Read/ReadVariableOpReadVariableOpXAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/v*
_output_shapes
: *
dtype0
?
WAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *h
shared_nameYWAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v
?
kAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v/Read/ReadVariableOpReadVariableOpWAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v*
_output_shapes
: *
dtype0
?
.Adam/autoencoder/my_encoder/conv1d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *?
shared_name0.Adam/autoencoder/my_encoder/conv1d_21/kernel/v
?
BAdam/autoencoder/my_encoder/conv1d_21/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/autoencoder/my_encoder/conv1d_21/kernel/v*"
_output_shapes
:  *
dtype0
?
,Adam/autoencoder/my_encoder/conv1d_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/autoencoder/my_encoder/conv1d_21/bias/v
?
@Adam/autoencoder/my_encoder/conv1d_21/bias/v/Read/ReadVariableOpReadVariableOp,Adam/autoencoder/my_encoder/conv1d_21/bias/v*
_output_shapes
: *
dtype0
?
ZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *k
shared_name\ZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/v
?
nAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/v/Read/ReadVariableOpReadVariableOpZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/v*
_output_shapes
: *
dtype0
?
YAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *j
shared_name[YAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v
?
mAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v/Read/ReadVariableOpReadVariableOpYAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v*
_output_shapes
: *
dtype0
?
.Adam/autoencoder/my_encoder/conv1d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *?
shared_name0.Adam/autoencoder/my_encoder/conv1d_22/kernel/v
?
BAdam/autoencoder/my_encoder/conv1d_22/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/autoencoder/my_encoder/conv1d_22/kernel/v*"
_output_shapes
:  *
dtype0
?
,Adam/autoencoder/my_encoder/conv1d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/autoencoder/my_encoder/conv1d_22/bias/v
?
@Adam/autoencoder/my_encoder/conv1d_22/bias/v/Read/ReadVariableOpReadVariableOp,Adam/autoencoder/my_encoder/conv1d_22/bias/v*
_output_shapes
: *
dtype0
?
.Adam/autoencoder/my_encoder/conv1d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *?
shared_name0.Adam/autoencoder/my_encoder/conv1d_23/kernel/v
?
BAdam/autoencoder/my_encoder/conv1d_23/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/autoencoder/my_encoder/conv1d_23/kernel/v*"
_output_shapes
:  *
dtype0
?
,Adam/autoencoder/my_encoder/conv1d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/autoencoder/my_encoder/conv1d_23/bias/v
?
@Adam/autoencoder/my_encoder/conv1d_23/bias/v/Read/ReadVariableOpReadVariableOp,Adam/autoencoder/my_encoder/conv1d_23/bias/v*
_output_shapes
: *
dtype0
?
-Adam/autoencoder/my_encoder/dense_71/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?K?*>
shared_name/-Adam/autoencoder/my_encoder/dense_71/kernel/v
?
AAdam/autoencoder/my_encoder/dense_71/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/autoencoder/my_encoder/dense_71/kernel/v* 
_output_shapes
:
?K?*
dtype0
?
+Adam/autoencoder/my_encoder/dense_71/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*<
shared_name-+Adam/autoencoder/my_encoder/dense_71/bias/v
?
?Adam/autoencoder/my_encoder/dense_71/bias/v/Read/ReadVariableOpReadVariableOp+Adam/autoencoder/my_encoder/dense_71/bias/v*
_output_shapes	
:?*
dtype0
?
5Adam/autoencoder/my_decoder/conv1d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *F
shared_name75Adam/autoencoder/my_decoder/conv1d_transpose/kernel/v
?
IAdam/autoencoder/my_decoder/conv1d_transpose/kernel/v/Read/ReadVariableOpReadVariableOp5Adam/autoencoder/my_decoder/conv1d_transpose/kernel/v*"
_output_shapes
:  *
dtype0
?
3Adam/autoencoder/my_decoder/conv1d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *D
shared_name53Adam/autoencoder/my_decoder/conv1d_transpose/bias/v
?
GAdam/autoencoder/my_decoder/conv1d_transpose/bias/v/Read/ReadVariableOpReadVariableOp3Adam/autoencoder/my_decoder/conv1d_transpose/bias/v*
_output_shapes
: *
dtype0
?
ZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *k
shared_name\ZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/v
?
nAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/v/Read/ReadVariableOpReadVariableOpZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/v*
_output_shapes
: *
dtype0
?
YAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *j
shared_name[YAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v
?
mAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v/Read/ReadVariableOpReadVariableOpYAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v*
_output_shapes
: *
dtype0
?
7Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/v
?
KAdam/autoencoder/my_decoder/conv1d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp7Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/v*"
_output_shapes
:  *
dtype0
?
5Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/v
?
IAdam/autoencoder/my_decoder/conv1d_transpose_1/bias/v/Read/ReadVariableOpReadVariableOp5Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/v*
_output_shapes
: *
dtype0
?
XAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *i
shared_nameZXAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/v
?
lAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/v/Read/ReadVariableOpReadVariableOpXAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/v*
_output_shapes
: *
dtype0
?
WAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *h
shared_nameYWAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v
?
kAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v/Read/ReadVariableOpReadVariableOpWAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v*
_output_shapes
: *
dtype0
?
7Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/v
?
KAdam/autoencoder/my_decoder/conv1d_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOp7Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/v*"
_output_shapes
:  *
dtype0
?
5Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/v
?
IAdam/autoencoder/my_decoder/conv1d_transpose_2/bias/v/Read/ReadVariableOpReadVariableOp5Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/v*
_output_shapes
: *
dtype0
?
7Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/v
?
KAdam/autoencoder/my_decoder/conv1d_transpose_3/kernel/v/Read/ReadVariableOpReadVariableOp7Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/v*"
_output_shapes
: *
dtype0
?
5Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/v
?
IAdam/autoencoder/my_decoder/conv1d_transpose_3/bias/v/Read/ReadVariableOpReadVariableOp5Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/v*
_output_shapes
: *
dtype0
?
-Adam/autoencoder/my_decoder/dense_72/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*>
shared_name/-Adam/autoencoder/my_decoder/dense_72/kernel/v
?
AAdam/autoencoder/my_decoder/dense_72/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/autoencoder/my_decoder/dense_72/kernel/v* 
_output_shapes
:
??*
dtype0
?
+Adam/autoencoder/my_decoder/dense_72/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*<
shared_name-+Adam/autoencoder/my_decoder/dense_72/bias/v
?
?Adam/autoencoder/my_decoder/dense_72/bias/v/Read/ReadVariableOpReadVariableOp+Adam/autoencoder/my_decoder/dense_72/bias/v*
_output_shapes	
:?*
dtype0
?
-Adam/autoencoder/my_decoder/dense_74/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*>
shared_name/-Adam/autoencoder/my_decoder/dense_74/kernel/v
?
AAdam/autoencoder/my_decoder/dense_74/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/autoencoder/my_decoder/dense_74/kernel/v* 
_output_shapes
:
??
*
dtype0
?
+Adam/autoencoder/my_decoder/dense_74/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*<
shared_name-+Adam/autoencoder/my_decoder/dense_74/bias/v
?
?Adam/autoencoder/my_decoder/dense_74/bias/v/Read/ReadVariableOpReadVariableOp+Adam/autoencoder/my_decoder/dense_74/bias/v*
_output_shapes	
:?
*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
encoder
decoder
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
?
	conv1
	batch_n_1
	conv2
	batch_n_2
spatial_drop_1
	conv3
	avg_pool1
	conv4
spatial_drop_2
flat
out
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	conv1
	batch_n_1
	conv2
 	batch_n_2
!spatial_drop_1
	"conv3
#	avg_pool1
	$conv4
%spatial_drop_2
&reshape1
'flat

(dense1
)dropout1

*dense2
+dropout2
,out
-reshape2
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses*
?
4iter

5beta_1

6beta_2
	7decay
8learning_rate9m?:m?=m?>m??m?@m?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Om?Pm?Qm?Rm?Um?Vm?Wm?Xm?Ym?Zm?[m?\m?]m?^m?9v?:v?=v?>v??v?@v?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Ov?Pv?Qv?Rv?Uv?Vv?Wv?Xv?Yv?Zv?[v?\v?]v?^v?*
?
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
O22
P23
Q24
R25
S26
T27
U28
V29
W30
X31
Y32
Z33
[34
\35
]36
^37*
?
90
:1
=2
>3
?4
@5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
O16
P17
Q18
R19
U20
V21
W22
X23
Y24
Z25
[26
\27
]28
^29*
* 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

dserving_default* 
?

9kernel
:bias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses*

k	batchnorm*
?

?kernel
@bias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses*

r	batchnorm*
?
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w_random_generator
x__call__
*y&call_and_return_all_conditional_losses* 
?

Ekernel
Fbias
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?

Gkernel
Hbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?

Ikernel
Jbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17*
j
90
:1
=2
>3
?4
@5
C6
D7
E8
F9
G10
H11
I12
J13*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
?

Kkernel
Lbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*

?	batchnorm*
?

Qkernel
Rbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*

?	batchnorm*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?

Wkernel
Xbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?

Ykernel
Zbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?

[kernel
\bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
*
?	keras_api
?_random_generator* 

?	keras_api* 
*
?	keras_api
?_random_generator* 
?

]kernel
^bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
K0
L1
M2
N3
O4
P5
Q6
R7
S8
T9
U10
V11
W12
X13
Y14
Z15
[16
\17
]18
^19*
z
K0
L1
O2
P3
Q4
R5
U6
V7
W8
X9
Y10
Z11
[12
\13
]14
^15*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'autoencoder/my_encoder/conv1d_20/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%autoencoder/my_encoder/conv1d_20/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEWautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE[autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEQautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEPautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'autoencoder/my_encoder/conv1d_21/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%autoencoder/my_encoder/conv1d_21/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEYautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE]autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUESautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE'autoencoder/my_encoder/conv1d_22/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%autoencoder/my_encoder/conv1d_22/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE'autoencoder/my_encoder/conv1d_23/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%autoencoder/my_encoder/conv1d_23/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&autoencoder/my_encoder/dense_71/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$autoencoder/my_encoder/dense_71/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.autoencoder/my_decoder/conv1d_transpose/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,autoencoder/my_decoder/conv1d_transpose/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEYautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE]autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUESautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0autoencoder/my_decoder/conv1d_transpose_1/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.autoencoder/my_decoder/conv1d_transpose_1/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEWautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE[autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEQautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEPautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0autoencoder/my_decoder/conv1d_transpose_2/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.autoencoder/my_decoder/conv1d_transpose_2/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0autoencoder/my_decoder/conv1d_transpose_3/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.autoencoder/my_decoder/conv1d_transpose_3/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&autoencoder/my_decoder/dense_72/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$autoencoder/my_decoder/dense_72/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&autoencoder/my_decoder/dense_74/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$autoencoder/my_decoder/dense_74/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
<
;0
<1
A2
B3
M4
N5
S6
T7*

0
1*

?0*
* 
* 
* 

90
:1*

90
:1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*
* 
* 
?
	?axis
	=gamma
>beta
;moving_mean
<moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*

?0
@1*

?0
@1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*
* 
* 
?
	?axis
	Cgamma
Dbeta
Amoving_mean
Bmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
s	variables
ttrainable_variables
uregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 
* 
* 
* 

E0
F1*

E0
F1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 

G0
H1*

G0
H1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 

I0
J1*

I0
J1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
 
;0
<1
A2
B3*
C
0
1
2
3
4
5
6
7
8*
* 
* 
* 

K0
L1*

K0
L1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
?
	?axis
	Ogamma
Pbeta
Mmoving_mean
Nmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*

Q0
R1*

Q0
R1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
?
	?axis
	Ugamma
Vbeta
Smoving_mean
Tmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 

W0
X1*

W0
X1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 

Y0
Z1*

Y0
Z1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 

[0
\1*

[0
\1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

]0
^1*

]0
^1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
 
M0
N1
S2
T3*
r
0
1
!2
"3
#4
$5
%6
&7
'8
(9
)10
*11
+12
,13
-14*
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
* 
* 
* 
* 
* 
* 
 
=0
>1
;2
<3*

=0
>1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
 
C0
D1
A2
B3*

C0
D1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
 
O0
P1
M2
N3*

O0
P1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
 
U0
V1
S2
T3*

U0
V1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*

;0
<1*
* 
* 
* 
* 

A0
B1*
* 
* 
* 
* 

M0
N1*
* 
* 
* 
* 

S0
T1*
* 
* 
* 
* 
??
VARIABLE_VALUE.Adam/autoencoder/my_encoder/conv1d_20/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/autoencoder/my_encoder/conv1d_20/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEXAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEWAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/autoencoder/my_encoder/conv1d_21/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/autoencoder/my_encoder/conv1d_21/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEYAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/autoencoder/my_encoder/conv1d_22/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/autoencoder/my_encoder/conv1d_22/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/autoencoder/my_encoder/conv1d_23/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/autoencoder/my_encoder/conv1d_23/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/autoencoder/my_encoder/dense_71/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE+Adam/autoencoder/my_encoder/dense_71/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/autoencoder/my_decoder/conv1d_transpose/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE3Adam/autoencoder/my_decoder/conv1d_transpose/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEYAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE7Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEXAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/mCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEWAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/mCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE7Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/mCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/mCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE7Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/autoencoder/my_decoder/dense_72/kernel/mCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE+Adam/autoencoder/my_decoder/dense_72/bias/mCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/autoencoder/my_decoder/dense_74/kernel/mCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE+Adam/autoencoder/my_decoder/dense_74/bias/mCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/autoencoder/my_encoder/conv1d_20/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/autoencoder/my_encoder/conv1d_20/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEXAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEWAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/autoencoder/my_encoder/conv1d_21/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/autoencoder/my_encoder/conv1d_21/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEYAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/autoencoder/my_encoder/conv1d_22/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/autoencoder/my_encoder/conv1d_22/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/autoencoder/my_encoder/conv1d_23/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE,Adam/autoencoder/my_encoder/conv1d_23/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/autoencoder/my_encoder/dense_71/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE+Adam/autoencoder/my_encoder/dense_71/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/autoencoder/my_decoder/conv1d_transpose/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE3Adam/autoencoder/my_decoder/conv1d_transpose/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEYAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE7Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEXAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/vCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEWAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/vCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE7Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/vCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/vCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE7Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/autoencoder/my_decoder/dense_72/kernel/vCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE+Adam/autoencoder/my_decoder/dense_72/bias/vCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE-Adam/autoencoder/my_decoder/dense_74/kernel/vCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE+Adam/autoencoder/my_decoder/dense_74/bias/vCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_input_1Placeholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1'autoencoder/my_encoder/conv1d_20/kernel%autoencoder/my_encoder/conv1d_20/bias[autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_varianceQautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gammaPautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/betaWautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean'autoencoder/my_encoder/conv1d_21/kernel%autoencoder/my_encoder/conv1d_21/bias]autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_varianceSautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gammaRautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/betaYautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean'autoencoder/my_encoder/conv1d_22/kernel%autoencoder/my_encoder/conv1d_22/bias'autoencoder/my_encoder/conv1d_23/kernel%autoencoder/my_encoder/conv1d_23/bias&autoencoder/my_encoder/dense_71/kernel$autoencoder/my_encoder/dense_71/bias&autoencoder/my_decoder/dense_72/kernel$autoencoder/my_decoder/dense_72/bias0autoencoder/my_decoder/conv1d_transpose_3/kernel.autoencoder/my_decoder/conv1d_transpose_3/bias0autoencoder/my_decoder/conv1d_transpose_2/kernel.autoencoder/my_decoder/conv1d_transpose_2/bias[autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_varianceQautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gammaPautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/betaWautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean0autoencoder/my_decoder/conv1d_transpose_1/kernel.autoencoder/my_decoder/conv1d_transpose_1/bias]autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_varianceSautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gammaRautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/betaYautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean.autoencoder/my_decoder/conv1d_transpose/kernel,autoencoder/my_decoder/conv1d_transpose/bias&autoencoder/my_decoder/dense_74/kernel$autoencoder/my_decoder/dense_74/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_418623
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?B
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp;autoencoder/my_encoder/conv1d_20/kernel/Read/ReadVariableOp9autoencoder/my_encoder/conv1d_20/bias/Read/ReadVariableOpkautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean/Read/ReadVariableOpoautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance/Read/ReadVariableOpeautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/Read/ReadVariableOpdautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/Read/ReadVariableOp;autoencoder/my_encoder/conv1d_21/kernel/Read/ReadVariableOp9autoencoder/my_encoder/conv1d_21/bias/Read/ReadVariableOpmautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean/Read/ReadVariableOpqautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance/Read/ReadVariableOpgautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/Read/ReadVariableOpfautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/Read/ReadVariableOp;autoencoder/my_encoder/conv1d_22/kernel/Read/ReadVariableOp9autoencoder/my_encoder/conv1d_22/bias/Read/ReadVariableOp;autoencoder/my_encoder/conv1d_23/kernel/Read/ReadVariableOp9autoencoder/my_encoder/conv1d_23/bias/Read/ReadVariableOp:autoencoder/my_encoder/dense_71/kernel/Read/ReadVariableOp8autoencoder/my_encoder/dense_71/bias/Read/ReadVariableOpBautoencoder/my_decoder/conv1d_transpose/kernel/Read/ReadVariableOp@autoencoder/my_decoder/conv1d_transpose/bias/Read/ReadVariableOpmautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean/Read/ReadVariableOpqautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance/Read/ReadVariableOpgautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/Read/ReadVariableOpfautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/Read/ReadVariableOpDautoencoder/my_decoder/conv1d_transpose_1/kernel/Read/ReadVariableOpBautoencoder/my_decoder/conv1d_transpose_1/bias/Read/ReadVariableOpkautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean/Read/ReadVariableOpoautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance/Read/ReadVariableOpeautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/Read/ReadVariableOpdautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/Read/ReadVariableOpDautoencoder/my_decoder/conv1d_transpose_2/kernel/Read/ReadVariableOpBautoencoder/my_decoder/conv1d_transpose_2/bias/Read/ReadVariableOpDautoencoder/my_decoder/conv1d_transpose_3/kernel/Read/ReadVariableOpBautoencoder/my_decoder/conv1d_transpose_3/bias/Read/ReadVariableOp:autoencoder/my_decoder/dense_72/kernel/Read/ReadVariableOp8autoencoder/my_decoder/dense_72/bias/Read/ReadVariableOp:autoencoder/my_decoder/dense_74/kernel/Read/ReadVariableOp8autoencoder/my_decoder/dense_74/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpBAdam/autoencoder/my_encoder/conv1d_20/kernel/m/Read/ReadVariableOp@Adam/autoencoder/my_encoder/conv1d_20/bias/m/Read/ReadVariableOplAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/m/Read/ReadVariableOpkAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m/Read/ReadVariableOpBAdam/autoencoder/my_encoder/conv1d_21/kernel/m/Read/ReadVariableOp@Adam/autoencoder/my_encoder/conv1d_21/bias/m/Read/ReadVariableOpnAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/m/Read/ReadVariableOpmAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m/Read/ReadVariableOpBAdam/autoencoder/my_encoder/conv1d_22/kernel/m/Read/ReadVariableOp@Adam/autoencoder/my_encoder/conv1d_22/bias/m/Read/ReadVariableOpBAdam/autoencoder/my_encoder/conv1d_23/kernel/m/Read/ReadVariableOp@Adam/autoencoder/my_encoder/conv1d_23/bias/m/Read/ReadVariableOpAAdam/autoencoder/my_encoder/dense_71/kernel/m/Read/ReadVariableOp?Adam/autoencoder/my_encoder/dense_71/bias/m/Read/ReadVariableOpIAdam/autoencoder/my_decoder/conv1d_transpose/kernel/m/Read/ReadVariableOpGAdam/autoencoder/my_decoder/conv1d_transpose/bias/m/Read/ReadVariableOpnAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/m/Read/ReadVariableOpmAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m/Read/ReadVariableOpKAdam/autoencoder/my_decoder/conv1d_transpose_1/kernel/m/Read/ReadVariableOpIAdam/autoencoder/my_decoder/conv1d_transpose_1/bias/m/Read/ReadVariableOplAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/m/Read/ReadVariableOpkAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m/Read/ReadVariableOpKAdam/autoencoder/my_decoder/conv1d_transpose_2/kernel/m/Read/ReadVariableOpIAdam/autoencoder/my_decoder/conv1d_transpose_2/bias/m/Read/ReadVariableOpKAdam/autoencoder/my_decoder/conv1d_transpose_3/kernel/m/Read/ReadVariableOpIAdam/autoencoder/my_decoder/conv1d_transpose_3/bias/m/Read/ReadVariableOpAAdam/autoencoder/my_decoder/dense_72/kernel/m/Read/ReadVariableOp?Adam/autoencoder/my_decoder/dense_72/bias/m/Read/ReadVariableOpAAdam/autoencoder/my_decoder/dense_74/kernel/m/Read/ReadVariableOp?Adam/autoencoder/my_decoder/dense_74/bias/m/Read/ReadVariableOpBAdam/autoencoder/my_encoder/conv1d_20/kernel/v/Read/ReadVariableOp@Adam/autoencoder/my_encoder/conv1d_20/bias/v/Read/ReadVariableOplAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/v/Read/ReadVariableOpkAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v/Read/ReadVariableOpBAdam/autoencoder/my_encoder/conv1d_21/kernel/v/Read/ReadVariableOp@Adam/autoencoder/my_encoder/conv1d_21/bias/v/Read/ReadVariableOpnAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/v/Read/ReadVariableOpmAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v/Read/ReadVariableOpBAdam/autoencoder/my_encoder/conv1d_22/kernel/v/Read/ReadVariableOp@Adam/autoencoder/my_encoder/conv1d_22/bias/v/Read/ReadVariableOpBAdam/autoencoder/my_encoder/conv1d_23/kernel/v/Read/ReadVariableOp@Adam/autoencoder/my_encoder/conv1d_23/bias/v/Read/ReadVariableOpAAdam/autoencoder/my_encoder/dense_71/kernel/v/Read/ReadVariableOp?Adam/autoencoder/my_encoder/dense_71/bias/v/Read/ReadVariableOpIAdam/autoencoder/my_decoder/conv1d_transpose/kernel/v/Read/ReadVariableOpGAdam/autoencoder/my_decoder/conv1d_transpose/bias/v/Read/ReadVariableOpnAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/v/Read/ReadVariableOpmAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v/Read/ReadVariableOpKAdam/autoencoder/my_decoder/conv1d_transpose_1/kernel/v/Read/ReadVariableOpIAdam/autoencoder/my_decoder/conv1d_transpose_1/bias/v/Read/ReadVariableOplAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/v/Read/ReadVariableOpkAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v/Read/ReadVariableOpKAdam/autoencoder/my_decoder/conv1d_transpose_2/kernel/v/Read/ReadVariableOpIAdam/autoencoder/my_decoder/conv1d_transpose_2/bias/v/Read/ReadVariableOpKAdam/autoencoder/my_decoder/conv1d_transpose_3/kernel/v/Read/ReadVariableOpIAdam/autoencoder/my_decoder/conv1d_transpose_3/bias/v/Read/ReadVariableOpAAdam/autoencoder/my_decoder/dense_72/kernel/v/Read/ReadVariableOp?Adam/autoencoder/my_decoder/dense_72/bias/v/Read/ReadVariableOpAAdam/autoencoder/my_decoder/dense_74/kernel/v/Read/ReadVariableOp?Adam/autoencoder/my_decoder/dense_74/bias/v/Read/ReadVariableOpConst*v
Tino
m2k	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_421093
?2
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate'autoencoder/my_encoder/conv1d_20/kernel%autoencoder/my_encoder/conv1d_20/biasWautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean[autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_varianceQautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gammaPautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta'autoencoder/my_encoder/conv1d_21/kernel%autoencoder/my_encoder/conv1d_21/biasYautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean]autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_varianceSautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gammaRautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta'autoencoder/my_encoder/conv1d_22/kernel%autoencoder/my_encoder/conv1d_22/bias'autoencoder/my_encoder/conv1d_23/kernel%autoencoder/my_encoder/conv1d_23/bias&autoencoder/my_encoder/dense_71/kernel$autoencoder/my_encoder/dense_71/bias.autoencoder/my_decoder/conv1d_transpose/kernel,autoencoder/my_decoder/conv1d_transpose/biasYautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean]autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_varianceSautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gammaRautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta0autoencoder/my_decoder/conv1d_transpose_1/kernel.autoencoder/my_decoder/conv1d_transpose_1/biasWautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean[autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_varianceQautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gammaPautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta0autoencoder/my_decoder/conv1d_transpose_2/kernel.autoencoder/my_decoder/conv1d_transpose_2/bias0autoencoder/my_decoder/conv1d_transpose_3/kernel.autoencoder/my_decoder/conv1d_transpose_3/bias&autoencoder/my_decoder/dense_72/kernel$autoencoder/my_decoder/dense_72/bias&autoencoder/my_decoder/dense_74/kernel$autoencoder/my_decoder/dense_74/biastotalcount.Adam/autoencoder/my_encoder/conv1d_20/kernel/m,Adam/autoencoder/my_encoder/conv1d_20/bias/mXAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/mWAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m.Adam/autoencoder/my_encoder/conv1d_21/kernel/m,Adam/autoencoder/my_encoder/conv1d_21/bias/mZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/mYAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m.Adam/autoencoder/my_encoder/conv1d_22/kernel/m,Adam/autoencoder/my_encoder/conv1d_22/bias/m.Adam/autoencoder/my_encoder/conv1d_23/kernel/m,Adam/autoencoder/my_encoder/conv1d_23/bias/m-Adam/autoencoder/my_encoder/dense_71/kernel/m+Adam/autoencoder/my_encoder/dense_71/bias/m5Adam/autoencoder/my_decoder/conv1d_transpose/kernel/m3Adam/autoencoder/my_decoder/conv1d_transpose/bias/mZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/mYAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m7Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/m5Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/mXAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/mWAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m7Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/m5Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/m7Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/m5Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/m-Adam/autoencoder/my_decoder/dense_72/kernel/m+Adam/autoencoder/my_decoder/dense_72/bias/m-Adam/autoencoder/my_decoder/dense_74/kernel/m+Adam/autoencoder/my_decoder/dense_74/bias/m.Adam/autoencoder/my_encoder/conv1d_20/kernel/v,Adam/autoencoder/my_encoder/conv1d_20/bias/vXAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/vWAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v.Adam/autoencoder/my_encoder/conv1d_21/kernel/v,Adam/autoencoder/my_encoder/conv1d_21/bias/vZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/vYAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v.Adam/autoencoder/my_encoder/conv1d_22/kernel/v,Adam/autoencoder/my_encoder/conv1d_22/bias/v.Adam/autoencoder/my_encoder/conv1d_23/kernel/v,Adam/autoencoder/my_encoder/conv1d_23/bias/v-Adam/autoencoder/my_encoder/dense_71/kernel/v+Adam/autoencoder/my_encoder/dense_71/bias/v5Adam/autoencoder/my_decoder/conv1d_transpose/kernel/v3Adam/autoencoder/my_decoder/conv1d_transpose/bias/vZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/vYAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v7Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/v5Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/vXAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/vWAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v7Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/v5Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/v7Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/v5Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/v-Adam/autoencoder/my_decoder/dense_72/kernel/v+Adam/autoencoder/my_decoder/dense_72/bias/v-Adam/autoencoder/my_decoder/dense_74/kernel/v+Adam/autoencoder/my_decoder/dense_74/bias/v*u
Tinn
l2j*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_421418۴2
?j
?
F__inference_my_encoder_layer_call_and_return_conditional_losses_415725
input_tensor&
conv1d_20_415593: 
conv1d_20_415595: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: &
conv1d_21_415631:  
conv1d_21_415633: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: &
conv1d_22_415670:  
conv1d_22_415672: &
conv1d_23_415693:  
conv1d_23_415695: #
dense_71_415719:
?K?
dense_71_415721:	?
identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp?!conv1d_20/StatefulPartitionedCall?!conv1d_21/StatefulPartitionedCall?!conv1d_22/StatefulPartitionedCall?!conv1d_23/StatefulPartitionedCall? dense_71/StatefulPartitionedCall?
!conv1d_20/StatefulPartitionedCallStatefulPartitionedCallinput_tensorconv1d_20_415593conv1d_20_415595*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_20_layer_call_and_return_conditional_losses_415592?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMul*conv1d_20/StatefulPartitionedCall:output:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
!conv1d_21/StatefulPartitionedCallStatefulPartitionedCall>batch_normalization/forward/undo_batch_normalization/add_1:z:0conv1d_21_415631conv1d_21_415633*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_21_layer_call_and_return_conditional_losses_415630?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMul*conv1d_21/StatefulPartitionedCall:output:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
$spatial_dropout1d_10/PartitionedCallPartitionedCall@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_415485?
!conv1d_22/StatefulPartitionedCallStatefulPartitionedCall-spatial_dropout1d_10/PartitionedCall:output:0conv1d_22_415670conv1d_22_415672*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_22_layer_call_and_return_conditional_losses_415669?
#average_pooling1d_5/PartitionedCallPartitionedCall*conv1d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_415527?
!conv1d_23/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_5/PartitionedCall:output:0conv1d_23_415693conv1d_23_415695*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_23_layer_call_and_return_conditional_losses_415692?
$spatial_dropout1d_11/PartitionedCallPartitionedCall*conv1d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_415539?
flatten_5/PartitionedCallPartitionedCall-spatial_dropout1d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????K* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_415705?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_71_415719dense_71_415721*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_71_layer_call_and_return_conditional_losses_415718y
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp"^conv1d_20/StatefulPartitionedCall"^conv1d_21/StatefulPartitionedCall"^conv1d_22/StatefulPartitionedCall"^conv1d_23/StatefulPartitionedCall!^dense_71/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2F
!conv1d_20/StatefulPartitionedCall!conv1d_20/StatefulPartitionedCall2F
!conv1d_21/StatefulPartitionedCall!conv1d_21/StatefulPartitionedCall2F
!conv1d_22/StatefulPartitionedCall!conv1d_22/StatefulPartitionedCall2F
!conv1d_23/StatefulPartitionedCall!conv1d_23/StatefulPartitionedCall2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall:Z V
,
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?
?
E__inference_conv1d_20_layer_call_and_return_conditional_losses_419538

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?	
,__inference_autoencoder_layer_call_fn_417749
x
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15:
?K?

unknown_16:	?

unknown_17:
??

unknown_18:	? 

unknown_19: 

unknown_20:  

unknown_21:  

unknown_22: 

unknown_23: 

unknown_24: 

unknown_25: 

unknown_26:  

unknown_27:  

unknown_28: 

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32:  

unknown_33:  

unknown_34: 

unknown_35:
??


unknown_36:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_autoencoder_layer_call_and_return_conditional_losses_417094t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
,
_output_shapes
:??????????

_user_specified_namex
??
?
F__inference_my_encoder_layer_call_and_return_conditional_losses_418937
input_tensorK
5conv1d_20_conv1d_expanddims_1_readvariableop_resource: 7
)conv1d_20_biasadd_readvariableop_resource: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: K
5conv1d_21_conv1d_expanddims_1_readvariableop_resource:  7
)conv1d_21_biasadd_readvariableop_resource: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: K
5conv1d_22_conv1d_expanddims_1_readvariableop_resource:  7
)conv1d_22_biasadd_readvariableop_resource: K
5conv1d_23_conv1d_expanddims_1_readvariableop_resource:  7
)conv1d_23_biasadd_readvariableop_resource: ;
'dense_71_matmul_readvariableop_resource:
?K?7
(dense_71_biasadd_readvariableop_resource:	?
identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp? conv1d_20/BiasAdd/ReadVariableOp?,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp? conv1d_21/BiasAdd/ReadVariableOp?,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp? conv1d_22/BiasAdd/ReadVariableOp?,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp? conv1d_23/BiasAdd/ReadVariableOp?,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp?dense_71/BiasAdd/ReadVariableOp?dense_71/MatMul/ReadVariableOpj
conv1d_20/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_20/Conv1D/ExpandDims
ExpandDimsinput_tensor(conv1d_20/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_20_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0c
!conv1d_20/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_20/Conv1D/ExpandDims_1
ExpandDims4conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_20/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
conv1d_20/Conv1DConv2D$conv1d_20/Conv1D/ExpandDims:output:0&conv1d_20/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
conv1d_20/Conv1D/SqueezeSqueezeconv1d_20/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
 conv1d_20/BiasAdd/ReadVariableOpReadVariableOp)conv1d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_20/BiasAddBiasAdd!conv1d_20/Conv1D/Squeeze:output:0(conv1d_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? i
conv1d_20/ReluReluconv1d_20/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMulconv1d_20/Relu:activations:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? j
conv1d_21/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_21/Conv1D/ExpandDims
ExpandDims>batch_normalization/forward/undo_batch_normalization/add_1:z:0(conv1d_21/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_21_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_21/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_21/Conv1D/ExpandDims_1
ExpandDims4conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_21/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
conv1d_21/Conv1DConv2D$conv1d_21/Conv1D/ExpandDims:output:0&conv1d_21/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
conv1d_21/Conv1D/SqueezeSqueezeconv1d_21/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
 conv1d_21/BiasAdd/ReadVariableOpReadVariableOp)conv1d_21_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_21/BiasAddBiasAdd!conv1d_21/Conv1D/Squeeze:output:0(conv1d_21/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? i
conv1d_21/ReluReluconv1d_21/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMulconv1d_21/Relu:activations:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
spatial_dropout1d_10/ShapeShape@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:r
(spatial_dropout1d_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*spatial_dropout1d_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*spatial_dropout1d_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"spatial_dropout1d_10/strided_sliceStridedSlice#spatial_dropout1d_10/Shape:output:01spatial_dropout1d_10/strided_slice/stack:output:03spatial_dropout1d_10/strided_slice/stack_1:output:03spatial_dropout1d_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
*spatial_dropout1d_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,spatial_dropout1d_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,spatial_dropout1d_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$spatial_dropout1d_10/strided_slice_1StridedSlice#spatial_dropout1d_10/Shape:output:03spatial_dropout1d_10/strided_slice_1/stack:output:05spatial_dropout1d_10/strided_slice_1/stack_1:output:05spatial_dropout1d_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
"spatial_dropout1d_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
 spatial_dropout1d_10/dropout/MulMul@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0+spatial_dropout1d_10/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? u
3spatial_dropout1d_10/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
1spatial_dropout1d_10/dropout/random_uniform/shapePack+spatial_dropout1d_10/strided_slice:output:0<spatial_dropout1d_10/dropout/random_uniform/shape/1:output:0-spatial_dropout1d_10/strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
9spatial_dropout1d_10/dropout/random_uniform/RandomUniformRandomUniform:spatial_dropout1d_10/dropout/random_uniform/shape:output:0*
T0*+
_output_shapes
:????????? *
dtype0p
+spatial_dropout1d_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
)spatial_dropout1d_10/dropout/GreaterEqualGreaterEqualBspatial_dropout1d_10/dropout/random_uniform/RandomUniform:output:04spatial_dropout1d_10/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? ?
!spatial_dropout1d_10/dropout/CastCast-spatial_dropout1d_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? ?
"spatial_dropout1d_10/dropout/Mul_1Mul$spatial_dropout1d_10/dropout/Mul:z:0%spatial_dropout1d_10/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? j
conv1d_22/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_22/Conv1D/ExpandDims
ExpandDims&spatial_dropout1d_10/dropout/Mul_1:z:0(conv1d_22/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_22_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_22/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_22/Conv1D/ExpandDims_1
ExpandDims4conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_22/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
conv1d_22/Conv1DConv2D$conv1d_22/Conv1D/ExpandDims:output:0&conv1d_22/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
conv1d_22/Conv1D/SqueezeSqueezeconv1d_22/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
 conv1d_22/BiasAdd/ReadVariableOpReadVariableOp)conv1d_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_22/BiasAddBiasAdd!conv1d_22/Conv1D/Squeeze:output:0(conv1d_22/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? i
conv1d_22/ReluReluconv1d_22/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? d
"average_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
average_pooling1d_5/ExpandDims
ExpandDimsconv1d_22/Relu:activations:0+average_pooling1d_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
average_pooling1d_5/AvgPoolAvgPool'average_pooling1d_5/ExpandDims:output:0*
T0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
?
average_pooling1d_5/SqueezeSqueeze$average_pooling1d_5/AvgPool:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
j
conv1d_23/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_23/Conv1D/ExpandDims
ExpandDims$average_pooling1d_5/Squeeze:output:0(conv1d_23/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_23_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_23/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_23/Conv1D/ExpandDims_1
ExpandDims4conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_23/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
conv1d_23/Conv1DConv2D$conv1d_23/Conv1D/ExpandDims:output:0&conv1d_23/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
conv1d_23/Conv1D/SqueezeSqueezeconv1d_23/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
 conv1d_23/BiasAdd/ReadVariableOpReadVariableOp)conv1d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_23/BiasAddBiasAdd!conv1d_23/Conv1D/Squeeze:output:0(conv1d_23/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? i
conv1d_23/ReluReluconv1d_23/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? f
spatial_dropout1d_11/ShapeShapeconv1d_23/Relu:activations:0*
T0*
_output_shapes
:r
(spatial_dropout1d_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*spatial_dropout1d_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*spatial_dropout1d_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"spatial_dropout1d_11/strided_sliceStridedSlice#spatial_dropout1d_11/Shape:output:01spatial_dropout1d_11/strided_slice/stack:output:03spatial_dropout1d_11/strided_slice/stack_1:output:03spatial_dropout1d_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
*spatial_dropout1d_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,spatial_dropout1d_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,spatial_dropout1d_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$spatial_dropout1d_11/strided_slice_1StridedSlice#spatial_dropout1d_11/Shape:output:03spatial_dropout1d_11/strided_slice_1/stack:output:05spatial_dropout1d_11/strided_slice_1/stack_1:output:05spatial_dropout1d_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
"spatial_dropout1d_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
 spatial_dropout1d_11/dropout/MulMulconv1d_23/Relu:activations:0+spatial_dropout1d_11/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? u
3spatial_dropout1d_11/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
1spatial_dropout1d_11/dropout/random_uniform/shapePack+spatial_dropout1d_11/strided_slice:output:0<spatial_dropout1d_11/dropout/random_uniform/shape/1:output:0-spatial_dropout1d_11/strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
9spatial_dropout1d_11/dropout/random_uniform/RandomUniformRandomUniform:spatial_dropout1d_11/dropout/random_uniform/shape:output:0*
T0*+
_output_shapes
:????????? *
dtype0p
+spatial_dropout1d_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
)spatial_dropout1d_11/dropout/GreaterEqualGreaterEqualBspatial_dropout1d_11/dropout/random_uniform/RandomUniform:output:04spatial_dropout1d_11/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? ?
!spatial_dropout1d_11/dropout/CastCast-spatial_dropout1d_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? ?
"spatial_dropout1d_11/dropout/Mul_1Mul$spatial_dropout1d_11/dropout/Mul:z:0%spatial_dropout1d_11/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? `
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????%  ?
flatten_5/ReshapeReshape&spatial_dropout1d_11/dropout/Mul_1:z:0flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????K?
dense_71/MatMul/ReadVariableOpReadVariableOp'dense_71_matmul_readvariableop_resource* 
_output_shapes
:
?K?*
dtype0?
dense_71/MatMulMatMulflatten_5/Reshape:output:0&dense_71/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_71/BiasAdd/ReadVariableOpReadVariableOp(dense_71_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_71/BiasAddBiasAdddense_71/MatMul:product:0'dense_71/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
dense_71/ReluReludense_71/BiasAdd:output:0*
T0*(
_output_shapes
:??????????k
IdentityIdentitydense_71/Relu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp!^conv1d_20/BiasAdd/ReadVariableOp-^conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_21/BiasAdd/ReadVariableOp-^conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_22/BiasAdd/ReadVariableOp-^conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_23/BiasAdd/ReadVariableOp-^conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp ^dense_71/BiasAdd/ReadVariableOp^dense_71/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2D
 conv1d_20/BiasAdd/ReadVariableOp conv1d_20/BiasAdd/ReadVariableOp2\
,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_21/BiasAdd/ReadVariableOp conv1d_21/BiasAdd/ReadVariableOp2\
,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_22/BiasAdd/ReadVariableOp conv1d_22/BiasAdd/ReadVariableOp2\
,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_23/BiasAdd/ReadVariableOp conv1d_23/BiasAdd/ReadVariableOp2\
,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_71/BiasAdd/ReadVariableOpdense_71/BiasAdd/ReadVariableOp2@
dense_71/MatMul/ReadVariableOpdense_71/MatMul/ReadVariableOp:Z V
,
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?

?
D__inference_dense_71_layer_call_and_return_conditional_losses_415718

inputs2
matmul_readvariableop_resource:
?K?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?K?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????K: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????K
 
_user_specified_nameinputs
?
F
*__inference_reshape_1_layer_call_fn_420094

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_416573e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????
:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
?
?
3__inference_conv1d_transpose_2_layer_call_fn_419877

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_2_layer_call_and_return_conditional_losses_416327|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_420020

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????o
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_420397

inputs*
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: ,
cast_2_readvariableop_resource: ,
cast_3_readvariableop_resource: 
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_419846

inputs

identity_1d
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????q

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_6_layer_call_and_return_conditional_losses_416541

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d :S O
+
_output_shapes
:?????????d 
 
_user_specified_nameinputs
?
Q
5__inference_spatial_dropout1d_12_layer_call_fn_419836

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_416251v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv1d_22_layer_call_and_return_conditional_losses_419625

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?,
?
N__inference_conv1d_transpose_2_layer_call_and_return_conditional_losses_416327

inputsK
5conv1d_transpose_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : n
stackPackstrided_slice:output:0add:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
paddingVALID*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :?????????????????? *
squeeze_dims
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? ]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :?????????????????? n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_420455

inputs*
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: ,
cast_2_readvariableop_resource: ,
cast_3_readvariableop_resource: 
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_416438

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????o
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_autoencoder_layer_call_and_return_conditional_losses_417094
x'
my_encoder_417015: 
my_encoder_417017: 
my_encoder_417019: 
my_encoder_417021: 
my_encoder_417023: 
my_encoder_417025: '
my_encoder_417027:  
my_encoder_417029: 
my_encoder_417031: 
my_encoder_417033: 
my_encoder_417035: 
my_encoder_417037: '
my_encoder_417039:  
my_encoder_417041: '
my_encoder_417043:  
my_encoder_417045: %
my_encoder_417047:
?K? 
my_encoder_417049:	?%
my_decoder_417052:
?? 
my_decoder_417054:	?'
my_decoder_417056: 
my_decoder_417058: '
my_decoder_417060:  
my_decoder_417062: 
my_decoder_417064: 
my_decoder_417066: 
my_decoder_417068: 
my_decoder_417070: '
my_decoder_417072:  
my_decoder_417074: 
my_decoder_417076: 
my_decoder_417078: 
my_decoder_417080: 
my_decoder_417082: '
my_decoder_417084:  
my_decoder_417086: %
my_decoder_417088:
??
 
my_decoder_417090:	?

identity??"my_decoder/StatefulPartitionedCall?"my_encoder/StatefulPartitionedCall?
"my_encoder/StatefulPartitionedCallStatefulPartitionedCallxmy_encoder_417015my_encoder_417017my_encoder_417019my_encoder_417021my_encoder_417023my_encoder_417025my_encoder_417027my_encoder_417029my_encoder_417031my_encoder_417033my_encoder_417035my_encoder_417037my_encoder_417039my_encoder_417041my_encoder_417043my_encoder_417045my_encoder_417047my_encoder_417049*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_encoder_layer_call_and_return_conditional_losses_415725?
"my_decoder/StatefulPartitionedCallStatefulPartitionedCall+my_encoder/StatefulPartitionedCall:output:0my_decoder_417052my_decoder_417054my_decoder_417056my_decoder_417058my_decoder_417060my_decoder_417062my_decoder_417064my_decoder_417066my_decoder_417068my_decoder_417070my_decoder_417072my_decoder_417074my_decoder_417076my_decoder_417078my_decoder_417080my_decoder_417082my_decoder_417084my_decoder_417086my_decoder_417088my_decoder_417090* 
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_decoder_layer_call_and_return_conditional_losses_416576
IdentityIdentity+my_decoder/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp#^my_decoder/StatefulPartitionedCall#^my_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"my_decoder/StatefulPartitionedCall"my_decoder/StatefulPartitionedCall2H
"my_encoder/StatefulPartitionedCall"my_encoder/StatefulPartitionedCall:O K
,
_output_shapes
:??????????

_user_specified_namex
?
?
+__inference_my_encoder_layer_call_fn_415764
input_1
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15:
?K?

unknown_16:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_encoder_layer_call_and_return_conditional_losses_415725p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?
G__inference_autoencoder_layer_call_and_return_conditional_losses_417662
input_1'
my_encoder_417583: 
my_encoder_417585: 
my_encoder_417587: 
my_encoder_417589: 
my_encoder_417591: 
my_encoder_417593: '
my_encoder_417595:  
my_encoder_417597: 
my_encoder_417599: 
my_encoder_417601: 
my_encoder_417603: 
my_encoder_417605: '
my_encoder_417607:  
my_encoder_417609: '
my_encoder_417611:  
my_encoder_417613: %
my_encoder_417615:
?K? 
my_encoder_417617:	?%
my_decoder_417620:
?? 
my_decoder_417622:	?'
my_decoder_417624: 
my_decoder_417626: '
my_decoder_417628:  
my_decoder_417630: 
my_decoder_417632: 
my_decoder_417634: 
my_decoder_417636: 
my_decoder_417638: '
my_decoder_417640:  
my_decoder_417642: 
my_decoder_417644: 
my_decoder_417646: 
my_decoder_417648: 
my_decoder_417650: '
my_decoder_417652:  
my_decoder_417654: %
my_decoder_417656:
??
 
my_decoder_417658:	?

identity??"my_decoder/StatefulPartitionedCall?"my_encoder/StatefulPartitionedCall?
"my_encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1my_encoder_417583my_encoder_417585my_encoder_417587my_encoder_417589my_encoder_417591my_encoder_417593my_encoder_417595my_encoder_417597my_encoder_417599my_encoder_417601my_encoder_417603my_encoder_417605my_encoder_417607my_encoder_417609my_encoder_417611my_encoder_417613my_encoder_417615my_encoder_417617*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_encoder_layer_call_and_return_conditional_losses_415928?
"my_decoder/StatefulPartitionedCallStatefulPartitionedCall+my_encoder/StatefulPartitionedCall:output:0my_decoder_417620my_decoder_417622my_decoder_417624my_decoder_417626my_decoder_417628my_decoder_417630my_decoder_417632my_decoder_417634my_decoder_417636my_decoder_417638my_decoder_417640my_decoder_417642my_decoder_417644my_decoder_417646my_decoder_417648my_decoder_417650my_decoder_417652my_decoder_417654my_decoder_417656my_decoder_417658* 
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_decoder_layer_call_and_return_conditional_losses_416776
IdentityIdentity+my_decoder/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp#^my_decoder/StatefulPartitionedCall#^my_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"my_decoder/StatefulPartitionedCall"my_decoder/StatefulPartitionedCall2H
"my_encoder/StatefulPartitionedCall"my_encoder/StatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?{
?
F__inference_my_decoder_layer_call_and_return_conditional_losses_417008
input_1#
dense_72_416939:
??
dense_72_416941:	?/
conv1d_transpose_3_416946: '
conv1d_transpose_3_416948: /
conv1d_transpose_2_416952:  '
conv1d_transpose_2_416954: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: /
conv1d_transpose_1_416974:  '
conv1d_transpose_1_416976: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: -
conv1d_transpose_416995:  %
conv1d_transpose_416997: #
dense_74_417001:
??

dense_74_417003:	?

identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp?(conv1d_transpose/StatefulPartitionedCall?*conv1d_transpose_1/StatefulPartitionedCall?*conv1d_transpose_2/StatefulPartitionedCall?*conv1d_transpose_3/StatefulPartitionedCall? dense_72/StatefulPartitionedCall? dense_74/StatefulPartitionedCall?,spatial_dropout1d_12/StatefulPartitionedCall?,spatial_dropout1d_13/StatefulPartitionedCall?
 dense_72/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_72_416939dense_72_416941*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_72_layer_call_and_return_conditional_losses_416459?
reshape/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_416478?
,spatial_dropout1d_13/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_416438?
*conv1d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall5spatial_dropout1d_13/StatefulPartitionedCall:output:0conv1d_transpose_3_416946conv1d_transpose_3_416948*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_3_layer_call_and_return_conditional_losses_416395?
#average_pooling1d_6/PartitionedCallPartitionedCall3conv1d_transpose_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????L * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_average_pooling1d_6_layer_call_and_return_conditional_losses_416346?
*conv1d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_6/PartitionedCall:output:0conv1d_transpose_2_416952conv1d_transpose_2_416954*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_2_layer_call_and_return_conditional_losses_416327?
,spatial_dropout1d_12/StatefulPartitionedCallStatefulPartitionedCall3conv1d_transpose_2/StatefulPartitionedCall:output:0-^spatial_dropout1d_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_416278?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMul5spatial_dropout1d_12/StatefulPartitionedCall:output:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????Q ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????Q ?
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall>batch_normalization/forward/undo_batch_normalization/add_1:z:0conv1d_transpose_1_416974conv1d_transpose_1_416976*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_416235?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMul3conv1d_transpose_1/StatefulPartitionedCall:output:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????d ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????d ?
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0conv1d_transpose_416995conv1d_transpose_416997*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv1d_transpose_layer_call_and_return_conditional_losses_416182?
flatten_6/PartitionedCallPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_416541?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_74_417001dense_74_417003*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_74_layer_call_and_return_conditional_losses_416554?
reshape_1/PartitionedCallPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_416573v
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall+^conv1d_transpose_2/StatefulPartitionedCall+^conv1d_transpose_3/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall-^spatial_dropout1d_12/StatefulPartitionedCall-^spatial_dropout1d_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall2X
*conv1d_transpose_2/StatefulPartitionedCall*conv1d_transpose_2/StatefulPartitionedCall2X
*conv1d_transpose_3/StatefulPartitionedCall*conv1d_transpose_3/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2\
,spatial_dropout1d_12/StatefulPartitionedCall,spatial_dropout1d_12/StatefulPartitionedCall2\
,spatial_dropout1d_13/StatefulPartitionedCall,spatial_dropout1d_13/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?j
?
F__inference_my_encoder_layer_call_and_return_conditional_losses_416073
input_1&
conv1d_20_416011: 
conv1d_20_416013: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: &
conv1d_21_416032:  
conv1d_21_416034: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: &
conv1d_22_416054:  
conv1d_22_416056: &
conv1d_23_416060:  
conv1d_23_416062: #
dense_71_416067:
?K?
dense_71_416069:	?
identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp?!conv1d_20/StatefulPartitionedCall?!conv1d_21/StatefulPartitionedCall?!conv1d_22/StatefulPartitionedCall?!conv1d_23/StatefulPartitionedCall? dense_71/StatefulPartitionedCall?
!conv1d_20/StatefulPartitionedCallStatefulPartitionedCallinput_1conv1d_20_416011conv1d_20_416013*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_20_layer_call_and_return_conditional_losses_415592?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMul*conv1d_20/StatefulPartitionedCall:output:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
!conv1d_21/StatefulPartitionedCallStatefulPartitionedCall>batch_normalization/forward/undo_batch_normalization/add_1:z:0conv1d_21_416032conv1d_21_416034*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_21_layer_call_and_return_conditional_losses_415630?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMul*conv1d_21/StatefulPartitionedCall:output:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
$spatial_dropout1d_10/PartitionedCallPartitionedCall@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_415485?
!conv1d_22/StatefulPartitionedCallStatefulPartitionedCall-spatial_dropout1d_10/PartitionedCall:output:0conv1d_22_416054conv1d_22_416056*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_22_layer_call_and_return_conditional_losses_415669?
#average_pooling1d_5/PartitionedCallPartitionedCall*conv1d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_415527?
!conv1d_23/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_5/PartitionedCall:output:0conv1d_23_416060conv1d_23_416062*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_23_layer_call_and_return_conditional_losses_415692?
$spatial_dropout1d_11/PartitionedCallPartitionedCall*conv1d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_415539?
flatten_5/PartitionedCallPartitionedCall-spatial_dropout1d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????K* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_415705?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_71_416067dense_71_416069*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_71_layer_call_and_return_conditional_losses_415718y
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp"^conv1d_20/StatefulPartitionedCall"^conv1d_21/StatefulPartitionedCall"^conv1d_22/StatefulPartitionedCall"^conv1d_23/StatefulPartitionedCall!^dense_71/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2F
!conv1d_20/StatefulPartitionedCall!conv1d_20/StatefulPartitionedCall2F
!conv1d_21/StatefulPartitionedCall!conv1d_21/StatefulPartitionedCall2F
!conv1d_22/StatefulPartitionedCall!conv1d_22/StatefulPartitionedCall2F
!conv1d_23/StatefulPartitionedCall!conv1d_23/StatefulPartitionedCall2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?	
,__inference_autoencoder_layer_call_fn_417830
x
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15:
?K?

unknown_16:	?

unknown_17:
??

unknown_18:	? 

unknown_19: 

unknown_20:  

unknown_21:  

unknown_22: 

unknown_23: 

unknown_24: 

unknown_25: 

unknown_26:  

unknown_27:  

unknown_28: 

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32:  

unknown_33:  

unknown_34: 

unknown_35:
??


unknown_36:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_autoencoder_layer_call_and_return_conditional_losses_417338t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
,
_output_shapes
:??????????

_user_specified_namex
?
n
5__inference_spatial_dropout1d_10_layer_call_fn_419573

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_415512?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*=
_output_shapes+
):'???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
n
5__inference_spatial_dropout1d_13_layer_call_fn_419993

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_416438?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*=
_output_shapes+
):'???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_420431

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: *
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :?????????????????? s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
+__inference_my_decoder_layer_call_fn_418982
input_tensor
unknown:
??
	unknown_0:	?
	unknown_1: 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:  

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:  

unknown_15:  

unknown_16: 

unknown_17:
??


unknown_18:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_decoder_layer_call_and_return_conditional_losses_416576t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?
?
G__inference_autoencoder_layer_call_and_return_conditional_losses_417338
x'
my_encoder_417259: 
my_encoder_417261: 
my_encoder_417263: 
my_encoder_417265: 
my_encoder_417267: 
my_encoder_417269: '
my_encoder_417271:  
my_encoder_417273: 
my_encoder_417275: 
my_encoder_417277: 
my_encoder_417279: 
my_encoder_417281: '
my_encoder_417283:  
my_encoder_417285: '
my_encoder_417287:  
my_encoder_417289: %
my_encoder_417291:
?K? 
my_encoder_417293:	?%
my_decoder_417296:
?? 
my_decoder_417298:	?'
my_decoder_417300: 
my_decoder_417302: '
my_decoder_417304:  
my_decoder_417306: 
my_decoder_417308: 
my_decoder_417310: 
my_decoder_417312: 
my_decoder_417314: '
my_decoder_417316:  
my_decoder_417318: 
my_decoder_417320: 
my_decoder_417322: 
my_decoder_417324: 
my_decoder_417326: '
my_decoder_417328:  
my_decoder_417330: %
my_decoder_417332:
??
 
my_decoder_417334:	?

identity??"my_decoder/StatefulPartitionedCall?"my_encoder/StatefulPartitionedCall?
"my_encoder/StatefulPartitionedCallStatefulPartitionedCallxmy_encoder_417259my_encoder_417261my_encoder_417263my_encoder_417265my_encoder_417267my_encoder_417269my_encoder_417271my_encoder_417273my_encoder_417275my_encoder_417277my_encoder_417279my_encoder_417281my_encoder_417283my_encoder_417285my_encoder_417287my_encoder_417289my_encoder_417291my_encoder_417293*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_encoder_layer_call_and_return_conditional_losses_415928?
"my_decoder/StatefulPartitionedCallStatefulPartitionedCall+my_encoder/StatefulPartitionedCall:output:0my_decoder_417296my_decoder_417298my_decoder_417300my_decoder_417302my_decoder_417304my_decoder_417306my_decoder_417308my_decoder_417310my_decoder_417312my_decoder_417314my_decoder_417316my_decoder_417318my_decoder_417320my_decoder_417322my_decoder_417324my_decoder_417326my_decoder_417328my_decoder_417330my_decoder_417332my_decoder_417334* 
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_decoder_layer_call_and_return_conditional_losses_416776
IdentityIdentity+my_decoder/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp#^my_decoder/StatefulPartitionedCall#^my_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"my_decoder/StatefulPartitionedCall"my_decoder/StatefulPartitionedCall2H
"my_encoder/StatefulPartitionedCall"my_encoder/StatefulPartitionedCall:O K
,
_output_shapes
:??????????

_user_specified_namex
?
?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_420559

inputs*
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: ,
cast_2_readvariableop_resource: ,
cast_3_readvariableop_resource: 
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
)__inference_dense_71_layer_call_fn_419720

inputs
unknown:
?K?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_71_layer_call_and_return_conditional_losses_415718p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????K: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????K
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_420755

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: *
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :?????????????????? s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_11_layer_call_fn_420377

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_420340|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
)__inference_dense_74_layer_call_fn_420078

inputs
unknown:
??

	unknown_0:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_74_layer_call_and_return_conditional_losses_416554p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?+
?
L__inference_conv1d_transpose_layer_call_and_return_conditional_losses_419780

inputsK
5conv1d_transpose_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :?????????????????? *
squeeze_dims
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? ]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :?????????????????? n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
*__inference_conv1d_23_layer_call_fn_419647

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_23_layer_call_and_return_conditional_losses_415692t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?

?
D__inference_dense_74_layer_call_and_return_conditional_losses_420089

inputs2
matmul_readvariableop_resource:
??
.
biasadd_readvariableop_resource:	?

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????
b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
N__inference_conv1d_transpose_3_layer_call_and_return_conditional_losses_419983

inputsK
5conv1d_transpose_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : n
stackPackstrided_slice:output:0add:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"???????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
paddingVALID*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :?????????????????? *
squeeze_dims
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? ]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :?????????????????? n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
3__inference_conv1d_transpose_3_layer_call_fn_419941

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_3_layer_call_and_return_conditional_losses_416395|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_13_layer_call_fn_420688

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_420617|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
F
*__inference_flatten_5_layer_call_fn_419705

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????K* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_415705a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????K"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_419998

inputs

identity_1d
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????q

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_12_layer_call_fn_420526

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_420455|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_420293

inputs*
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: ,
cast_2_readvariableop_resource: ,
cast_3_readvariableop_resource: 
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?	
,__inference_autoencoder_layer_call_fn_417173
input_1
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15:
?K?

unknown_16:	?

unknown_17:
??

unknown_18:	? 

unknown_19: 

unknown_20:  

unknown_21:  

unknown_22: 

unknown_23: 

unknown_24: 

unknown_25: 

unknown_26:  

unknown_27:  

unknown_28: 

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32:  

unknown_33:  

unknown_34: 

unknown_35:
??


unknown_36:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_autoencoder_layer_call_and_return_conditional_losses_417094t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?,
?
N__inference_conv1d_transpose_2_layer_call_and_return_conditional_losses_419919

inputsK
5conv1d_transpose_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : n
stackPackstrided_slice:output:0add:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
paddingVALID*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :?????????????????? *
squeeze_dims
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? ]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :?????????????????? n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_419868

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????o
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?
F__inference_my_decoder_layer_call_and_return_conditional_losses_419513
input_tensor;
'dense_72_matmul_readvariableop_resource:
??7
(dense_72_biasadd_readvariableop_resource:	?^
Hconv1d_transpose_3_conv1d_transpose_expanddims_1_readvariableop_resource: @
2conv1d_transpose_3_biasadd_readvariableop_resource: ^
Hconv1d_transpose_2_conv1d_transpose_expanddims_1_readvariableop_resource:  @
2conv1d_transpose_2_biasadd_readvariableop_resource: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: ^
Hconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_resource:  @
2conv1d_transpose_1_biasadd_readvariableop_resource: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: \
Fconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_resource:  >
0conv1d_transpose_biasadd_readvariableop_resource: ;
'dense_74_matmul_readvariableop_resource:
??
7
(dense_74_biasadd_readvariableop_resource:	?

identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp?'conv1d_transpose/BiasAdd/ReadVariableOp?=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp?)conv1d_transpose_1/BiasAdd/ReadVariableOp??conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?)conv1d_transpose_2/BiasAdd/ReadVariableOp??conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp?)conv1d_transpose_3/BiasAdd/ReadVariableOp??conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp?dense_72/BiasAdd/ReadVariableOp?dense_72/MatMul/ReadVariableOp?dense_74/BiasAdd/ReadVariableOp?dense_74/MatMul/ReadVariableOp?
dense_72/MatMul/ReadVariableOpReadVariableOp'dense_72_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_72/MatMulMatMulinput_tensor&dense_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_72/BiasAdd/ReadVariableOpReadVariableOp(dense_72_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_72/BiasAddBiasAdddense_72/MatMul:product:0'dense_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
dense_72/ReluReludense_72/BiasAdd:output:0*
T0*(
_output_shapes
:??????????X
reshape/ShapeShapedense_72/Relu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape/ReshapeReshapedense_72/Relu:activations:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????b
spatial_dropout1d_13/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:r
(spatial_dropout1d_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*spatial_dropout1d_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*spatial_dropout1d_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"spatial_dropout1d_13/strided_sliceStridedSlice#spatial_dropout1d_13/Shape:output:01spatial_dropout1d_13/strided_slice/stack:output:03spatial_dropout1d_13/strided_slice/stack_1:output:03spatial_dropout1d_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
*spatial_dropout1d_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,spatial_dropout1d_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,spatial_dropout1d_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$spatial_dropout1d_13/strided_slice_1StridedSlice#spatial_dropout1d_13/Shape:output:03spatial_dropout1d_13/strided_slice_1/stack:output:05spatial_dropout1d_13/strided_slice_1/stack_1:output:05spatial_dropout1d_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
"spatial_dropout1d_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
 spatial_dropout1d_13/dropout/MulMulreshape/Reshape:output:0+spatial_dropout1d_13/dropout/Const:output:0*
T0*,
_output_shapes
:??????????u
3spatial_dropout1d_13/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
1spatial_dropout1d_13/dropout/random_uniform/shapePack+spatial_dropout1d_13/strided_slice:output:0<spatial_dropout1d_13/dropout/random_uniform/shape/1:output:0-spatial_dropout1d_13/strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
9spatial_dropout1d_13/dropout/random_uniform/RandomUniformRandomUniform:spatial_dropout1d_13/dropout/random_uniform/shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0p
+spatial_dropout1d_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
)spatial_dropout1d_13/dropout/GreaterEqualGreaterEqualBspatial_dropout1d_13/dropout/random_uniform/RandomUniform:output:04spatial_dropout1d_13/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
!spatial_dropout1d_13/dropout/CastCast-spatial_dropout1d_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
"spatial_dropout1d_13/dropout/Mul_1Mul$spatial_dropout1d_13/dropout/Mul:z:0%spatial_dropout1d_13/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????n
conv1d_transpose_3/ShapeShape&spatial_dropout1d_13/dropout/Mul_1:z:0*
T0*
_output_shapes
:p
&conv1d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose_3/strided_sliceStridedSlice!conv1d_transpose_3/Shape:output:0/conv1d_transpose_3/strided_slice/stack:output:01conv1d_transpose_3/strided_slice/stack_1:output:01conv1d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv1d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv1d_transpose_3/strided_slice_1StridedSlice!conv1d_transpose_3/Shape:output:01conv1d_transpose_3/strided_slice_1/stack:output:03conv1d_transpose_3/strided_slice_1/stack_1:output:03conv1d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv1d_transpose_3/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose_3/mulMul+conv1d_transpose_3/strided_slice_1:output:0!conv1d_transpose_3/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose_3/add/yConst*
_output_shapes
: *
dtype0*
value	B :
conv1d_transpose_3/addAddV2conv1d_transpose_3/mul:z:0!conv1d_transpose_3/add/y:output:0*
T0*
_output_shapes
: \
conv1d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose_3/stackPack)conv1d_transpose_3/strided_slice:output:0conv1d_transpose_3/add:z:0#conv1d_transpose_3/stack/2:output:0*
N*
T0*
_output_shapes
:t
2conv1d_transpose_3/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
.conv1d_transpose_3/conv1d_transpose/ExpandDims
ExpandDims&spatial_dropout1d_13/dropout/Mul_1:z:0;conv1d_transpose_3/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
?conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpHconv1d_transpose_3_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0v
4conv1d_transpose_3/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0conv1d_transpose_3/conv1d_transpose/ExpandDims_1
ExpandDimsGconv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0=conv1d_transpose_3/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
7conv1d_transpose_3/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose_3/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose_3/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose_3/conv1d_transpose/strided_sliceStridedSlice!conv1d_transpose_3/stack:output:0@conv1d_transpose_3/conv1d_transpose/strided_slice/stack:output:0Bconv1d_transpose_3/conv1d_transpose/strided_slice/stack_1:output:0Bconv1d_transpose_3/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
9conv1d_transpose_3/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
;conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
;conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3conv1d_transpose_3/conv1d_transpose/strided_slice_1StridedSlice!conv1d_transpose_3/stack:output:0Bconv1d_transpose_3/conv1d_transpose/strided_slice_1/stack:output:0Dconv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_1:output:0Dconv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
3conv1d_transpose_3/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:q
/conv1d_transpose_3/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*conv1d_transpose_3/conv1d_transpose/concatConcatV2:conv1d_transpose_3/conv1d_transpose/strided_slice:output:0<conv1d_transpose_3/conv1d_transpose/concat/values_1:output:0<conv1d_transpose_3/conv1d_transpose/strided_slice_1:output:08conv1d_transpose_3/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
#conv1d_transpose_3/conv1d_transposeConv2DBackpropInput3conv1d_transpose_3/conv1d_transpose/concat:output:09conv1d_transpose_3/conv1d_transpose/ExpandDims_1:output:07conv1d_transpose_3/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
+conv1d_transpose_3/conv1d_transpose/SqueezeSqueeze,conv1d_transpose_3/conv1d_transpose:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
?
)conv1d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv1d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_transpose_3/BiasAddBiasAdd4conv1d_transpose_3/conv1d_transpose/Squeeze:output:01conv1d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? {
conv1d_transpose_3/ReluRelu#conv1d_transpose_3/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? d
"average_pooling1d_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
average_pooling1d_6/ExpandDims
ExpandDims%conv1d_transpose_3/Relu:activations:0+average_pooling1d_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
average_pooling1d_6/AvgPoolAvgPool'average_pooling1d_6/ExpandDims:output:0*
T0*/
_output_shapes
:?????????L *
ksize
*
paddingVALID*
strides
?
average_pooling1d_6/SqueezeSqueeze$average_pooling1d_6/AvgPool:output:0*
T0*+
_output_shapes
:?????????L *
squeeze_dims
l
conv1d_transpose_2/ShapeShape$average_pooling1d_6/Squeeze:output:0*
T0*
_output_shapes
:p
&conv1d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose_2/strided_sliceStridedSlice!conv1d_transpose_2/Shape:output:0/conv1d_transpose_2/strided_slice/stack:output:01conv1d_transpose_2/strided_slice/stack_1:output:01conv1d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv1d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv1d_transpose_2/strided_slice_1StridedSlice!conv1d_transpose_2/Shape:output:01conv1d_transpose_2/strided_slice_1/stack:output:03conv1d_transpose_2/strided_slice_1/stack_1:output:03conv1d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv1d_transpose_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose_2/mulMul+conv1d_transpose_2/strided_slice_1:output:0!conv1d_transpose_2/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose_2/add/yConst*
_output_shapes
: *
dtype0*
value	B :
conv1d_transpose_2/addAddV2conv1d_transpose_2/mul:z:0!conv1d_transpose_2/add/y:output:0*
T0*
_output_shapes
: \
conv1d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose_2/stackPack)conv1d_transpose_2/strided_slice:output:0conv1d_transpose_2/add:z:0#conv1d_transpose_2/stack/2:output:0*
N*
T0*
_output_shapes
:t
2conv1d_transpose_2/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
.conv1d_transpose_2/conv1d_transpose/ExpandDims
ExpandDims$average_pooling1d_6/Squeeze:output:0;conv1d_transpose_2/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????L ?
?conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpHconv1d_transpose_2_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0v
4conv1d_transpose_2/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0conv1d_transpose_2/conv1d_transpose/ExpandDims_1
ExpandDimsGconv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0=conv1d_transpose_2/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
7conv1d_transpose_2/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose_2/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose_2/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose_2/conv1d_transpose/strided_sliceStridedSlice!conv1d_transpose_2/stack:output:0@conv1d_transpose_2/conv1d_transpose/strided_slice/stack:output:0Bconv1d_transpose_2/conv1d_transpose/strided_slice/stack_1:output:0Bconv1d_transpose_2/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
9conv1d_transpose_2/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
;conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
;conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3conv1d_transpose_2/conv1d_transpose/strided_slice_1StridedSlice!conv1d_transpose_2/stack:output:0Bconv1d_transpose_2/conv1d_transpose/strided_slice_1/stack:output:0Dconv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_1:output:0Dconv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
3conv1d_transpose_2/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:q
/conv1d_transpose_2/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*conv1d_transpose_2/conv1d_transpose/concatConcatV2:conv1d_transpose_2/conv1d_transpose/strided_slice:output:0<conv1d_transpose_2/conv1d_transpose/concat/values_1:output:0<conv1d_transpose_2/conv1d_transpose/strided_slice_1:output:08conv1d_transpose_2/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
#conv1d_transpose_2/conv1d_transposeConv2DBackpropInput3conv1d_transpose_2/conv1d_transpose/concat:output:09conv1d_transpose_2/conv1d_transpose/ExpandDims_1:output:07conv1d_transpose_2/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????Q *
paddingVALID*
strides
?
+conv1d_transpose_2/conv1d_transpose/SqueezeSqueeze,conv1d_transpose_2/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????Q *
squeeze_dims
?
)conv1d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv1d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_transpose_2/BiasAddBiasAdd4conv1d_transpose_2/conv1d_transpose/Squeeze:output:01conv1d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????Q z
conv1d_transpose_2/ReluRelu#conv1d_transpose_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????Q o
spatial_dropout1d_12/ShapeShape%conv1d_transpose_2/Relu:activations:0*
T0*
_output_shapes
:r
(spatial_dropout1d_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*spatial_dropout1d_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*spatial_dropout1d_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"spatial_dropout1d_12/strided_sliceStridedSlice#spatial_dropout1d_12/Shape:output:01spatial_dropout1d_12/strided_slice/stack:output:03spatial_dropout1d_12/strided_slice/stack_1:output:03spatial_dropout1d_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
*spatial_dropout1d_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,spatial_dropout1d_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,spatial_dropout1d_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$spatial_dropout1d_12/strided_slice_1StridedSlice#spatial_dropout1d_12/Shape:output:03spatial_dropout1d_12/strided_slice_1/stack:output:05spatial_dropout1d_12/strided_slice_1/stack_1:output:05spatial_dropout1d_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
"spatial_dropout1d_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
 spatial_dropout1d_12/dropout/MulMul%conv1d_transpose_2/Relu:activations:0+spatial_dropout1d_12/dropout/Const:output:0*
T0*+
_output_shapes
:?????????Q u
3spatial_dropout1d_12/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
1spatial_dropout1d_12/dropout/random_uniform/shapePack+spatial_dropout1d_12/strided_slice:output:0<spatial_dropout1d_12/dropout/random_uniform/shape/1:output:0-spatial_dropout1d_12/strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
9spatial_dropout1d_12/dropout/random_uniform/RandomUniformRandomUniform:spatial_dropout1d_12/dropout/random_uniform/shape:output:0*
T0*+
_output_shapes
:????????? *
dtype0p
+spatial_dropout1d_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
)spatial_dropout1d_12/dropout/GreaterEqualGreaterEqualBspatial_dropout1d_12/dropout/random_uniform/RandomUniform:output:04spatial_dropout1d_12/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? ?
!spatial_dropout1d_12/dropout/CastCast-spatial_dropout1d_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? ?
"spatial_dropout1d_12/dropout/Mul_1Mul$spatial_dropout1d_12/dropout/Mul:z:0%spatial_dropout1d_12/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????Q ?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMul&spatial_dropout1d_12/dropout/Mul_1:z:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????Q ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????Q ?
conv1d_transpose_1/ShapeShape>batch_normalization/forward/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:p
&conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose_1/strided_sliceStridedSlice!conv1d_transpose_1/Shape:output:0/conv1d_transpose_1/strided_slice/stack:output:01conv1d_transpose_1/strided_slice/stack_1:output:01conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv1d_transpose_1/strided_slice_1StridedSlice!conv1d_transpose_1/Shape:output:01conv1d_transpose_1/strided_slice_1/stack:output:03conv1d_transpose_1/strided_slice_1/stack_1:output:03conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose_1/mulMul+conv1d_transpose_1/strided_slice_1:output:0!conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :
conv1d_transpose_1/addAddV2conv1d_transpose_1/mul:z:0!conv1d_transpose_1/add/y:output:0*
T0*
_output_shapes
: \
conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose_1/stackPack)conv1d_transpose_1/strided_slice:output:0conv1d_transpose_1/add:z:0#conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:t
2conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
.conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDims>batch_normalization/forward/undo_batch_normalization/add_1:z:0;conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????Q ?
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpHconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0v
4conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDimsGconv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0=conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
7conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice!conv1d_transpose_1/stack:output:0@conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
9conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice!conv1d_transpose_1/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
3conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:q
/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*conv1d_transpose_1/conv1d_transpose/concatConcatV2:conv1d_transpose_1/conv1d_transpose/strided_slice:output:0<conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0<conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:08conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
#conv1d_transpose_1/conv1d_transposeConv2DBackpropInput3conv1d_transpose_1/conv1d_transpose/concat:output:09conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:07conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????d *
paddingVALID*
strides
?
+conv1d_transpose_1/conv1d_transpose/SqueezeSqueeze,conv1d_transpose_1/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????d *
squeeze_dims
?
)conv1d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv1d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_transpose_1/BiasAddBiasAdd4conv1d_transpose_1/conv1d_transpose/Squeeze:output:01conv1d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d z
conv1d_transpose_1/ReluRelu#conv1d_transpose_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????d ?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMul%conv1d_transpose_1/Relu:activations:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????d ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????d ?
conv1d_transpose/ShapeShape@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/Shape:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/Shape:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/mulMul)conv1d_transpose/strided_slice_1:output:0conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/stackPack'conv1d_transpose/strided_slice:output:0conv1d_transpose/mul:z:0!conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:r
0conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
,conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDims@batch_normalization/forward_1/undo_batch_normalization/add_1:z:09conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????d ?
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpFconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0t
2conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
.conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDimsEconv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0;conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  
5conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/conv1d_transpose/conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/stack:output:0>conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
7conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose/conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask{
1conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:o
-conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(conv1d_transpose/conv1d_transpose/concatConcatV28conv1d_transpose/conv1d_transpose/strided_slice:output:0:conv1d_transpose/conv1d_transpose/concat/values_1:output:0:conv1d_transpose/conv1d_transpose/strided_slice_1:output:06conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
!conv1d_transpose/conv1d_transposeConv2DBackpropInput1conv1d_transpose/conv1d_transpose/concat:output:07conv1d_transpose/conv1d_transpose/ExpandDims_1:output:05conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????d *
paddingSAME*
strides
?
)conv1d_transpose/conv1d_transpose/SqueezeSqueeze*conv1d_transpose/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????d *
squeeze_dims
?
'conv1d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv1d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_transpose/BiasAddBiasAdd2conv1d_transpose/conv1d_transpose/Squeeze:output:0/conv1d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d v
conv1d_transpose/ReluRelu!conv1d_transpose/BiasAdd:output:0*
T0*+
_output_shapes
:?????????d `
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_6/ReshapeReshape#conv1d_transpose/Relu:activations:0flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0?
dense_74/MatMulMatMulflatten_6/Reshape:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
?
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype0?
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
c
dense_74/ReluReludense_74/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
Z
reshape_1/ShapeShapedense_74/Relu:activations:0*
T0*
_output_shapes
:g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?[
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape_1/ReshapeReshapedense_74/Relu:activations:0 reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????n
IdentityIdentityreshape_1/Reshape:output:0^NoOp*
T0*,
_output_shapes
:???????????	
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp(^conv1d_transpose/BiasAdd/ReadVariableOp>^conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp*^conv1d_transpose_1/BiasAdd/ReadVariableOp@^conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp*^conv1d_transpose_2/BiasAdd/ReadVariableOp@^conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp*^conv1d_transpose_3/BiasAdd/ReadVariableOp@^conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp ^dense_72/BiasAdd/ReadVariableOp^dense_72/MatMul/ReadVariableOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2R
'conv1d_transpose/BiasAdd/ReadVariableOp'conv1d_transpose/BiasAdd/ReadVariableOp2~
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2V
)conv1d_transpose_1/BiasAdd/ReadVariableOp)conv1d_transpose_1/BiasAdd/ReadVariableOp2?
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp2V
)conv1d_transpose_2/BiasAdd/ReadVariableOp)conv1d_transpose_2/BiasAdd/ReadVariableOp2?
?conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp?conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp2V
)conv1d_transpose_3/BiasAdd/ReadVariableOp)conv1d_transpose_3/BiasAdd/ReadVariableOp2?
?conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp?conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp2B
dense_72/BiasAdd/ReadVariableOpdense_72/BiasAdd/ReadVariableOp2@
dense_72/MatMul/ReadVariableOpdense_72/MatMul/ReadVariableOp2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp:V R
(
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?%
?
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_420269

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: *
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :?????????????????? s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
E__inference_conv1d_22_layer_call_and_return_conditional_losses_415669

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
E__inference_conv1d_23_layer_call_and_return_conditional_losses_415692

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
*__inference_conv1d_20_layer_call_fn_419522

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_20_layer_call_and_return_conditional_losses_415592t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_autoencoder_layer_call_and_return_conditional_losses_417580
input_1'
my_encoder_417501: 
my_encoder_417503: 
my_encoder_417505: 
my_encoder_417507: 
my_encoder_417509: 
my_encoder_417511: '
my_encoder_417513:  
my_encoder_417515: 
my_encoder_417517: 
my_encoder_417519: 
my_encoder_417521: 
my_encoder_417523: '
my_encoder_417525:  
my_encoder_417527: '
my_encoder_417529:  
my_encoder_417531: %
my_encoder_417533:
?K? 
my_encoder_417535:	?%
my_decoder_417538:
?? 
my_decoder_417540:	?'
my_decoder_417542: 
my_decoder_417544: '
my_decoder_417546:  
my_decoder_417548: 
my_decoder_417550: 
my_decoder_417552: 
my_decoder_417554: 
my_decoder_417556: '
my_decoder_417558:  
my_decoder_417560: 
my_decoder_417562: 
my_decoder_417564: 
my_decoder_417566: 
my_decoder_417568: '
my_decoder_417570:  
my_decoder_417572: %
my_decoder_417574:
??
 
my_decoder_417576:	?

identity??"my_decoder/StatefulPartitionedCall?"my_encoder/StatefulPartitionedCall?
"my_encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1my_encoder_417501my_encoder_417503my_encoder_417505my_encoder_417507my_encoder_417509my_encoder_417511my_encoder_417513my_encoder_417515my_encoder_417517my_encoder_417519my_encoder_417521my_encoder_417523my_encoder_417525my_encoder_417527my_encoder_417529my_encoder_417531my_encoder_417533my_encoder_417535*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_encoder_layer_call_and_return_conditional_losses_415725?
"my_decoder/StatefulPartitionedCallStatefulPartitionedCall+my_encoder/StatefulPartitionedCall:output:0my_decoder_417538my_decoder_417540my_decoder_417542my_decoder_417544my_decoder_417546my_decoder_417548my_decoder_417550my_decoder_417552my_decoder_417554my_decoder_417556my_decoder_417558my_decoder_417560my_decoder_417562my_decoder_417564my_decoder_417566my_decoder_417568my_decoder_417570my_decoder_417572my_decoder_417574my_decoder_417576* 
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_decoder_layer_call_and_return_conditional_losses_416576
IdentityIdentity+my_decoder/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp#^my_decoder/StatefulPartitionedCall#^my_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"my_decoder/StatefulPartitionedCall"my_decoder/StatefulPartitionedCall2H
"my_encoder/StatefulPartitionedCall"my_encoder/StatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?
k
O__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_419638

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_415539

inputs

identity_1d
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????q

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?w
?
F__inference_my_decoder_layer_call_and_return_conditional_losses_416576
input_tensor#
dense_72_416460:
??
dense_72_416462:	?/
conv1d_transpose_3_416481: '
conv1d_transpose_3_416483: /
conv1d_transpose_2_416487:  '
conv1d_transpose_2_416489: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: /
conv1d_transpose_1_416509:  '
conv1d_transpose_1_416511: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: -
conv1d_transpose_416530:  %
conv1d_transpose_416532: #
dense_74_416555:
??

dense_74_416557:	?

identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp?(conv1d_transpose/StatefulPartitionedCall?*conv1d_transpose_1/StatefulPartitionedCall?*conv1d_transpose_2/StatefulPartitionedCall?*conv1d_transpose_3/StatefulPartitionedCall? dense_72/StatefulPartitionedCall? dense_74/StatefulPartitionedCall?
 dense_72/StatefulPartitionedCallStatefulPartitionedCallinput_tensordense_72_416460dense_72_416462*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_72_layer_call_and_return_conditional_losses_416459?
reshape/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_416478?
$spatial_dropout1d_13/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_416411?
*conv1d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall-spatial_dropout1d_13/PartitionedCall:output:0conv1d_transpose_3_416481conv1d_transpose_3_416483*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_3_layer_call_and_return_conditional_losses_416395?
#average_pooling1d_6/PartitionedCallPartitionedCall3conv1d_transpose_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????L * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_average_pooling1d_6_layer_call_and_return_conditional_losses_416346?
*conv1d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_6/PartitionedCall:output:0conv1d_transpose_2_416487conv1d_transpose_2_416489*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_2_layer_call_and_return_conditional_losses_416327?
$spatial_dropout1d_12/PartitionedCallPartitionedCall3conv1d_transpose_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_416251?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMul-spatial_dropout1d_12/PartitionedCall:output:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????Q ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????Q ?
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall>batch_normalization/forward/undo_batch_normalization/add_1:z:0conv1d_transpose_1_416509conv1d_transpose_1_416511*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_416235?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMul3conv1d_transpose_1/StatefulPartitionedCall:output:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????d ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????d ?
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0conv1d_transpose_416530conv1d_transpose_416532*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv1d_transpose_layer_call_and_return_conditional_losses_416182?
flatten_6/PartitionedCallPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_416541?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_74_416555dense_74_416557*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_74_layer_call_and_return_conditional_losses_416554?
reshape_1/PartitionedCallPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_416573v
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall+^conv1d_transpose_2/StatefulPartitionedCall+^conv1d_transpose_3/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall2X
*conv1d_transpose_2/StatefulPartitionedCall*conv1d_transpose_2/StatefulPartitionedCall2X
*conv1d_transpose_3/StatefulPartitionedCall*conv1d_transpose_3/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?
?
7__inference_batch_normalization_12_layer_call_fn_420539

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_420502|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_415705

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????%  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????KY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????K"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_420664

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: *
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :?????????????????? s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
+__inference_my_encoder_layer_call_fn_416008
input_1
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15:
?K?

unknown_16:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_encoder_layer_call_and_return_conditional_losses_415928p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?
*__inference_conv1d_21_layer_call_fn_419547

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_21_layer_call_and_return_conditional_losses_415630t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
P
4__inference_average_pooling1d_6_layer_call_fn_419924

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_average_pooling1d_6_layer_call_and_return_conditional_losses_416346v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_415566

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????o
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv1d_21_layer_call_and_return_conditional_losses_419563

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
3__inference_conv1d_transpose_1_layer_call_fn_419789

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_416235|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?

?
D__inference_dense_72_layer_call_and_return_conditional_losses_416459

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_10_layer_call_fn_420215

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_420178|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
??
?
F__inference_my_decoder_layer_call_and_return_conditional_losses_419253
input_tensor;
'dense_72_matmul_readvariableop_resource:
??7
(dense_72_biasadd_readvariableop_resource:	?^
Hconv1d_transpose_3_conv1d_transpose_expanddims_1_readvariableop_resource: @
2conv1d_transpose_3_biasadd_readvariableop_resource: ^
Hconv1d_transpose_2_conv1d_transpose_expanddims_1_readvariableop_resource:  @
2conv1d_transpose_2_biasadd_readvariableop_resource: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: ^
Hconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_resource:  @
2conv1d_transpose_1_biasadd_readvariableop_resource: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: \
Fconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_resource:  >
0conv1d_transpose_biasadd_readvariableop_resource: ;
'dense_74_matmul_readvariableop_resource:
??
7
(dense_74_biasadd_readvariableop_resource:	?

identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp?'conv1d_transpose/BiasAdd/ReadVariableOp?=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp?)conv1d_transpose_1/BiasAdd/ReadVariableOp??conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?)conv1d_transpose_2/BiasAdd/ReadVariableOp??conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp?)conv1d_transpose_3/BiasAdd/ReadVariableOp??conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp?dense_72/BiasAdd/ReadVariableOp?dense_72/MatMul/ReadVariableOp?dense_74/BiasAdd/ReadVariableOp?dense_74/MatMul/ReadVariableOp?
dense_72/MatMul/ReadVariableOpReadVariableOp'dense_72_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_72/MatMulMatMulinput_tensor&dense_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_72/BiasAdd/ReadVariableOpReadVariableOp(dense_72_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_72/BiasAddBiasAdddense_72/MatMul:product:0'dense_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
dense_72/ReluReludense_72/BiasAdd:output:0*
T0*(
_output_shapes
:??????????X
reshape/ShapeShapedense_72/Relu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape/ReshapeReshapedense_72/Relu:activations:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????z
spatial_dropout1d_13/IdentityIdentityreshape/Reshape:output:0*
T0*,
_output_shapes
:??????????n
conv1d_transpose_3/ShapeShape&spatial_dropout1d_13/Identity:output:0*
T0*
_output_shapes
:p
&conv1d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose_3/strided_sliceStridedSlice!conv1d_transpose_3/Shape:output:0/conv1d_transpose_3/strided_slice/stack:output:01conv1d_transpose_3/strided_slice/stack_1:output:01conv1d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv1d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv1d_transpose_3/strided_slice_1StridedSlice!conv1d_transpose_3/Shape:output:01conv1d_transpose_3/strided_slice_1/stack:output:03conv1d_transpose_3/strided_slice_1/stack_1:output:03conv1d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv1d_transpose_3/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose_3/mulMul+conv1d_transpose_3/strided_slice_1:output:0!conv1d_transpose_3/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose_3/add/yConst*
_output_shapes
: *
dtype0*
value	B :
conv1d_transpose_3/addAddV2conv1d_transpose_3/mul:z:0!conv1d_transpose_3/add/y:output:0*
T0*
_output_shapes
: \
conv1d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose_3/stackPack)conv1d_transpose_3/strided_slice:output:0conv1d_transpose_3/add:z:0#conv1d_transpose_3/stack/2:output:0*
N*
T0*
_output_shapes
:t
2conv1d_transpose_3/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
.conv1d_transpose_3/conv1d_transpose/ExpandDims
ExpandDims&spatial_dropout1d_13/Identity:output:0;conv1d_transpose_3/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
?conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpHconv1d_transpose_3_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0v
4conv1d_transpose_3/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0conv1d_transpose_3/conv1d_transpose/ExpandDims_1
ExpandDimsGconv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0=conv1d_transpose_3/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
7conv1d_transpose_3/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose_3/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose_3/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose_3/conv1d_transpose/strided_sliceStridedSlice!conv1d_transpose_3/stack:output:0@conv1d_transpose_3/conv1d_transpose/strided_slice/stack:output:0Bconv1d_transpose_3/conv1d_transpose/strided_slice/stack_1:output:0Bconv1d_transpose_3/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
9conv1d_transpose_3/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
;conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
;conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3conv1d_transpose_3/conv1d_transpose/strided_slice_1StridedSlice!conv1d_transpose_3/stack:output:0Bconv1d_transpose_3/conv1d_transpose/strided_slice_1/stack:output:0Dconv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_1:output:0Dconv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
3conv1d_transpose_3/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:q
/conv1d_transpose_3/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*conv1d_transpose_3/conv1d_transpose/concatConcatV2:conv1d_transpose_3/conv1d_transpose/strided_slice:output:0<conv1d_transpose_3/conv1d_transpose/concat/values_1:output:0<conv1d_transpose_3/conv1d_transpose/strided_slice_1:output:08conv1d_transpose_3/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
#conv1d_transpose_3/conv1d_transposeConv2DBackpropInput3conv1d_transpose_3/conv1d_transpose/concat:output:09conv1d_transpose_3/conv1d_transpose/ExpandDims_1:output:07conv1d_transpose_3/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
+conv1d_transpose_3/conv1d_transpose/SqueezeSqueeze,conv1d_transpose_3/conv1d_transpose:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
?
)conv1d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv1d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_transpose_3/BiasAddBiasAdd4conv1d_transpose_3/conv1d_transpose/Squeeze:output:01conv1d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? {
conv1d_transpose_3/ReluRelu#conv1d_transpose_3/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? d
"average_pooling1d_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
average_pooling1d_6/ExpandDims
ExpandDims%conv1d_transpose_3/Relu:activations:0+average_pooling1d_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
average_pooling1d_6/AvgPoolAvgPool'average_pooling1d_6/ExpandDims:output:0*
T0*/
_output_shapes
:?????????L *
ksize
*
paddingVALID*
strides
?
average_pooling1d_6/SqueezeSqueeze$average_pooling1d_6/AvgPool:output:0*
T0*+
_output_shapes
:?????????L *
squeeze_dims
l
conv1d_transpose_2/ShapeShape$average_pooling1d_6/Squeeze:output:0*
T0*
_output_shapes
:p
&conv1d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose_2/strided_sliceStridedSlice!conv1d_transpose_2/Shape:output:0/conv1d_transpose_2/strided_slice/stack:output:01conv1d_transpose_2/strided_slice/stack_1:output:01conv1d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv1d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv1d_transpose_2/strided_slice_1StridedSlice!conv1d_transpose_2/Shape:output:01conv1d_transpose_2/strided_slice_1/stack:output:03conv1d_transpose_2/strided_slice_1/stack_1:output:03conv1d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv1d_transpose_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose_2/mulMul+conv1d_transpose_2/strided_slice_1:output:0!conv1d_transpose_2/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose_2/add/yConst*
_output_shapes
: *
dtype0*
value	B :
conv1d_transpose_2/addAddV2conv1d_transpose_2/mul:z:0!conv1d_transpose_2/add/y:output:0*
T0*
_output_shapes
: \
conv1d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose_2/stackPack)conv1d_transpose_2/strided_slice:output:0conv1d_transpose_2/add:z:0#conv1d_transpose_2/stack/2:output:0*
N*
T0*
_output_shapes
:t
2conv1d_transpose_2/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
.conv1d_transpose_2/conv1d_transpose/ExpandDims
ExpandDims$average_pooling1d_6/Squeeze:output:0;conv1d_transpose_2/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????L ?
?conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpHconv1d_transpose_2_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0v
4conv1d_transpose_2/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0conv1d_transpose_2/conv1d_transpose/ExpandDims_1
ExpandDimsGconv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0=conv1d_transpose_2/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
7conv1d_transpose_2/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose_2/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose_2/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose_2/conv1d_transpose/strided_sliceStridedSlice!conv1d_transpose_2/stack:output:0@conv1d_transpose_2/conv1d_transpose/strided_slice/stack:output:0Bconv1d_transpose_2/conv1d_transpose/strided_slice/stack_1:output:0Bconv1d_transpose_2/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
9conv1d_transpose_2/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
;conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
;conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3conv1d_transpose_2/conv1d_transpose/strided_slice_1StridedSlice!conv1d_transpose_2/stack:output:0Bconv1d_transpose_2/conv1d_transpose/strided_slice_1/stack:output:0Dconv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_1:output:0Dconv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
3conv1d_transpose_2/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:q
/conv1d_transpose_2/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*conv1d_transpose_2/conv1d_transpose/concatConcatV2:conv1d_transpose_2/conv1d_transpose/strided_slice:output:0<conv1d_transpose_2/conv1d_transpose/concat/values_1:output:0<conv1d_transpose_2/conv1d_transpose/strided_slice_1:output:08conv1d_transpose_2/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
#conv1d_transpose_2/conv1d_transposeConv2DBackpropInput3conv1d_transpose_2/conv1d_transpose/concat:output:09conv1d_transpose_2/conv1d_transpose/ExpandDims_1:output:07conv1d_transpose_2/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????Q *
paddingVALID*
strides
?
+conv1d_transpose_2/conv1d_transpose/SqueezeSqueeze,conv1d_transpose_2/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????Q *
squeeze_dims
?
)conv1d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv1d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_transpose_2/BiasAddBiasAdd4conv1d_transpose_2/conv1d_transpose/Squeeze:output:01conv1d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????Q z
conv1d_transpose_2/ReluRelu#conv1d_transpose_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????Q ?
spatial_dropout1d_12/IdentityIdentity%conv1d_transpose_2/Relu:activations:0*
T0*+
_output_shapes
:?????????Q ?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMul&spatial_dropout1d_12/Identity:output:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????Q ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????Q ?
conv1d_transpose_1/ShapeShape>batch_normalization/forward/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:p
&conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose_1/strided_sliceStridedSlice!conv1d_transpose_1/Shape:output:0/conv1d_transpose_1/strided_slice/stack:output:01conv1d_transpose_1/strided_slice/stack_1:output:01conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv1d_transpose_1/strided_slice_1StridedSlice!conv1d_transpose_1/Shape:output:01conv1d_transpose_1/strided_slice_1/stack:output:03conv1d_transpose_1/strided_slice_1/stack_1:output:03conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose_1/mulMul+conv1d_transpose_1/strided_slice_1:output:0!conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :
conv1d_transpose_1/addAddV2conv1d_transpose_1/mul:z:0!conv1d_transpose_1/add/y:output:0*
T0*
_output_shapes
: \
conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose_1/stackPack)conv1d_transpose_1/strided_slice:output:0conv1d_transpose_1/add:z:0#conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:t
2conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
.conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDims>batch_normalization/forward/undo_batch_normalization/add_1:z:0;conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????Q ?
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpHconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0v
4conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDimsGconv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0=conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
7conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice!conv1d_transpose_1/stack:output:0@conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
9conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice!conv1d_transpose_1/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
3conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:q
/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*conv1d_transpose_1/conv1d_transpose/concatConcatV2:conv1d_transpose_1/conv1d_transpose/strided_slice:output:0<conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0<conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:08conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
#conv1d_transpose_1/conv1d_transposeConv2DBackpropInput3conv1d_transpose_1/conv1d_transpose/concat:output:09conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:07conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????d *
paddingVALID*
strides
?
+conv1d_transpose_1/conv1d_transpose/SqueezeSqueeze,conv1d_transpose_1/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????d *
squeeze_dims
?
)conv1d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv1d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_transpose_1/BiasAddBiasAdd4conv1d_transpose_1/conv1d_transpose/Squeeze:output:01conv1d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d z
conv1d_transpose_1/ReluRelu#conv1d_transpose_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????d ?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMul%conv1d_transpose_1/Relu:activations:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????d ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????d ?
conv1d_transpose/ShapeShape@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/Shape:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/Shape:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/mulMul)conv1d_transpose/strided_slice_1:output:0conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/stackPack'conv1d_transpose/strided_slice:output:0conv1d_transpose/mul:z:0!conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:r
0conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
,conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDims@batch_normalization/forward_1/undo_batch_normalization/add_1:z:09conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????d ?
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpFconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0t
2conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
.conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDimsEconv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0;conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  
5conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/conv1d_transpose/conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/stack:output:0>conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
7conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose/conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask{
1conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:o
-conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(conv1d_transpose/conv1d_transpose/concatConcatV28conv1d_transpose/conv1d_transpose/strided_slice:output:0:conv1d_transpose/conv1d_transpose/concat/values_1:output:0:conv1d_transpose/conv1d_transpose/strided_slice_1:output:06conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
!conv1d_transpose/conv1d_transposeConv2DBackpropInput1conv1d_transpose/conv1d_transpose/concat:output:07conv1d_transpose/conv1d_transpose/ExpandDims_1:output:05conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????d *
paddingSAME*
strides
?
)conv1d_transpose/conv1d_transpose/SqueezeSqueeze*conv1d_transpose/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????d *
squeeze_dims
?
'conv1d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv1d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_transpose/BiasAddBiasAdd2conv1d_transpose/conv1d_transpose/Squeeze:output:0/conv1d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d v
conv1d_transpose/ReluRelu!conv1d_transpose/BiasAdd:output:0*
T0*+
_output_shapes
:?????????d `
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_6/ReshapeReshape#conv1d_transpose/Relu:activations:0flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0?
dense_74/MatMulMatMulflatten_6/Reshape:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
?
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype0?
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
c
dense_74/ReluReludense_74/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
Z
reshape_1/ShapeShapedense_74/Relu:activations:0*
T0*
_output_shapes
:g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?[
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape_1/ReshapeReshapedense_74/Relu:activations:0 reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????n
IdentityIdentityreshape_1/Reshape:output:0^NoOp*
T0*,
_output_shapes
:???????????	
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp(^conv1d_transpose/BiasAdd/ReadVariableOp>^conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp*^conv1d_transpose_1/BiasAdd/ReadVariableOp@^conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp*^conv1d_transpose_2/BiasAdd/ReadVariableOp@^conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp*^conv1d_transpose_3/BiasAdd/ReadVariableOp@^conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp ^dense_72/BiasAdd/ReadVariableOp^dense_72/MatMul/ReadVariableOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2R
'conv1d_transpose/BiasAdd/ReadVariableOp'conv1d_transpose/BiasAdd/ReadVariableOp2~
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2V
)conv1d_transpose_1/BiasAdd/ReadVariableOp)conv1d_transpose_1/BiasAdd/ReadVariableOp2?
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp2V
)conv1d_transpose_2/BiasAdd/ReadVariableOp)conv1d_transpose_2/BiasAdd/ReadVariableOp2?
?conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp?conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp2V
)conv1d_transpose_3/BiasAdd/ReadVariableOp)conv1d_transpose_3/BiasAdd/ReadVariableOp2?
?conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp?conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp2B
dense_72/BiasAdd/ReadVariableOpdense_72/BiasAdd/ReadVariableOp2@
dense_72/MatMul/ReadVariableOpdense_72/MatMul/ReadVariableOp2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp:V R
(
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?%
?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_420593

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: *
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :?????????????????? s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?n
?
F__inference_my_encoder_layer_call_and_return_conditional_losses_415928
input_tensor&
conv1d_20_415866: 
conv1d_20_415868: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: &
conv1d_21_415887:  
conv1d_21_415889: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: &
conv1d_22_415909:  
conv1d_22_415911: &
conv1d_23_415915:  
conv1d_23_415917: #
dense_71_415922:
?K?
dense_71_415924:	?
identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp?!conv1d_20/StatefulPartitionedCall?!conv1d_21/StatefulPartitionedCall?!conv1d_22/StatefulPartitionedCall?!conv1d_23/StatefulPartitionedCall? dense_71/StatefulPartitionedCall?,spatial_dropout1d_10/StatefulPartitionedCall?,spatial_dropout1d_11/StatefulPartitionedCall?
!conv1d_20/StatefulPartitionedCallStatefulPartitionedCallinput_tensorconv1d_20_415866conv1d_20_415868*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_20_layer_call_and_return_conditional_losses_415592?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMul*conv1d_20/StatefulPartitionedCall:output:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
!conv1d_21/StatefulPartitionedCallStatefulPartitionedCall>batch_normalization/forward/undo_batch_normalization/add_1:z:0conv1d_21_415887conv1d_21_415889*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_21_layer_call_and_return_conditional_losses_415630?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMul*conv1d_21/StatefulPartitionedCall:output:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
,spatial_dropout1d_10/StatefulPartitionedCallStatefulPartitionedCall@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_415512?
!conv1d_22/StatefulPartitionedCallStatefulPartitionedCall5spatial_dropout1d_10/StatefulPartitionedCall:output:0conv1d_22_415909conv1d_22_415911*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_22_layer_call_and_return_conditional_losses_415669?
#average_pooling1d_5/PartitionedCallPartitionedCall*conv1d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_415527?
!conv1d_23/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_5/PartitionedCall:output:0conv1d_23_415915conv1d_23_415917*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_23_layer_call_and_return_conditional_losses_415692?
,spatial_dropout1d_11/StatefulPartitionedCallStatefulPartitionedCall*conv1d_23/StatefulPartitionedCall:output:0-^spatial_dropout1d_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_415566?
flatten_5/PartitionedCallPartitionedCall5spatial_dropout1d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????K* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_415705?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_71_415922dense_71_415924*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_71_layer_call_and_return_conditional_losses_415718y
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp"^conv1d_20/StatefulPartitionedCall"^conv1d_21/StatefulPartitionedCall"^conv1d_22/StatefulPartitionedCall"^conv1d_23/StatefulPartitionedCall!^dense_71/StatefulPartitionedCall-^spatial_dropout1d_10/StatefulPartitionedCall-^spatial_dropout1d_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2F
!conv1d_20/StatefulPartitionedCall!conv1d_20/StatefulPartitionedCall2F
!conv1d_21/StatefulPartitionedCall!conv1d_21/StatefulPartitionedCall2F
!conv1d_22/StatefulPartitionedCall!conv1d_22/StatefulPartitionedCall2F
!conv1d_23/StatefulPartitionedCall!conv1d_23/StatefulPartitionedCall2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2\
,spatial_dropout1d_10/StatefulPartitionedCall,spatial_dropout1d_10/StatefulPartitionedCall2\
,spatial_dropout1d_11/StatefulPartitionedCall,spatial_dropout1d_11/StatefulPartitionedCall:Z V
,
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
̕
?
F__inference_my_encoder_layer_call_and_return_conditional_losses_418804
input_tensorK
5conv1d_20_conv1d_expanddims_1_readvariableop_resource: 7
)conv1d_20_biasadd_readvariableop_resource: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: K
5conv1d_21_conv1d_expanddims_1_readvariableop_resource:  7
)conv1d_21_biasadd_readvariableop_resource: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: K
5conv1d_22_conv1d_expanddims_1_readvariableop_resource:  7
)conv1d_22_biasadd_readvariableop_resource: K
5conv1d_23_conv1d_expanddims_1_readvariableop_resource:  7
)conv1d_23_biasadd_readvariableop_resource: ;
'dense_71_matmul_readvariableop_resource:
?K?7
(dense_71_biasadd_readvariableop_resource:	?
identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp? conv1d_20/BiasAdd/ReadVariableOp?,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp? conv1d_21/BiasAdd/ReadVariableOp?,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp? conv1d_22/BiasAdd/ReadVariableOp?,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp? conv1d_23/BiasAdd/ReadVariableOp?,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp?dense_71/BiasAdd/ReadVariableOp?dense_71/MatMul/ReadVariableOpj
conv1d_20/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_20/Conv1D/ExpandDims
ExpandDimsinput_tensor(conv1d_20/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_20_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0c
!conv1d_20/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_20/Conv1D/ExpandDims_1
ExpandDims4conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_20/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
conv1d_20/Conv1DConv2D$conv1d_20/Conv1D/ExpandDims:output:0&conv1d_20/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
conv1d_20/Conv1D/SqueezeSqueezeconv1d_20/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
 conv1d_20/BiasAdd/ReadVariableOpReadVariableOp)conv1d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_20/BiasAddBiasAdd!conv1d_20/Conv1D/Squeeze:output:0(conv1d_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? i
conv1d_20/ReluReluconv1d_20/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMulconv1d_20/Relu:activations:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? j
conv1d_21/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_21/Conv1D/ExpandDims
ExpandDims>batch_normalization/forward/undo_batch_normalization/add_1:z:0(conv1d_21/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_21_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_21/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_21/Conv1D/ExpandDims_1
ExpandDims4conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_21/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
conv1d_21/Conv1DConv2D$conv1d_21/Conv1D/ExpandDims:output:0&conv1d_21/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
conv1d_21/Conv1D/SqueezeSqueezeconv1d_21/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
 conv1d_21/BiasAdd/ReadVariableOpReadVariableOp)conv1d_21_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_21/BiasAddBiasAdd!conv1d_21/Conv1D/Squeeze:output:0(conv1d_21/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? i
conv1d_21/ReluReluconv1d_21/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMulconv1d_21/Relu:activations:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
spatial_dropout1d_10/IdentityIdentity@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0*
T0*,
_output_shapes
:?????????? j
conv1d_22/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_22/Conv1D/ExpandDims
ExpandDims&spatial_dropout1d_10/Identity:output:0(conv1d_22/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_22_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_22/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_22/Conv1D/ExpandDims_1
ExpandDims4conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_22/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
conv1d_22/Conv1DConv2D$conv1d_22/Conv1D/ExpandDims:output:0&conv1d_22/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
conv1d_22/Conv1D/SqueezeSqueezeconv1d_22/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
 conv1d_22/BiasAdd/ReadVariableOpReadVariableOp)conv1d_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_22/BiasAddBiasAdd!conv1d_22/Conv1D/Squeeze:output:0(conv1d_22/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? i
conv1d_22/ReluReluconv1d_22/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? d
"average_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
average_pooling1d_5/ExpandDims
ExpandDimsconv1d_22/Relu:activations:0+average_pooling1d_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
average_pooling1d_5/AvgPoolAvgPool'average_pooling1d_5/ExpandDims:output:0*
T0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
?
average_pooling1d_5/SqueezeSqueeze$average_pooling1d_5/AvgPool:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
j
conv1d_23/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_23/Conv1D/ExpandDims
ExpandDims$average_pooling1d_5/Squeeze:output:0(conv1d_23/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_23_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_23/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_23/Conv1D/ExpandDims_1
ExpandDims4conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_23/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
conv1d_23/Conv1DConv2D$conv1d_23/Conv1D/ExpandDims:output:0&conv1d_23/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
conv1d_23/Conv1D/SqueezeSqueezeconv1d_23/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
 conv1d_23/BiasAdd/ReadVariableOpReadVariableOp)conv1d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d_23/BiasAddBiasAdd!conv1d_23/Conv1D/Squeeze:output:0(conv1d_23/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? i
conv1d_23/ReluReluconv1d_23/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ~
spatial_dropout1d_11/IdentityIdentityconv1d_23/Relu:activations:0*
T0*,
_output_shapes
:?????????? `
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????%  ?
flatten_5/ReshapeReshape&spatial_dropout1d_11/Identity:output:0flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????K?
dense_71/MatMul/ReadVariableOpReadVariableOp'dense_71_matmul_readvariableop_resource* 
_output_shapes
:
?K?*
dtype0?
dense_71/MatMulMatMulflatten_5/Reshape:output:0&dense_71/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_71/BiasAdd/ReadVariableOpReadVariableOp(dense_71_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_71/BiasAddBiasAdddense_71/MatMul:product:0'dense_71/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
dense_71/ReluReludense_71/BiasAdd:output:0*
T0*(
_output_shapes
:??????????k
IdentityIdentitydense_71/Relu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp!^conv1d_20/BiasAdd/ReadVariableOp-^conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_21/BiasAdd/ReadVariableOp-^conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_22/BiasAdd/ReadVariableOp-^conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_23/BiasAdd/ReadVariableOp-^conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp ^dense_71/BiasAdd/ReadVariableOp^dense_71/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2D
 conv1d_20/BiasAdd/ReadVariableOp conv1d_20/BiasAdd/ReadVariableOp2\
,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_21/BiasAdd/ReadVariableOp conv1d_21/BiasAdd/ReadVariableOp2\
,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_22/BiasAdd/ReadVariableOp conv1d_22/BiasAdd/ReadVariableOp2\
,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_23/BiasAdd/ReadVariableOp conv1d_23/BiasAdd/ReadVariableOp2\
,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_71/BiasAdd/ReadVariableOpdense_71/BiasAdd/ReadVariableOp2@
dense_71/MatMul/ReadVariableOpdense_71/MatMul/ReadVariableOp:Z V
,
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?
n
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_419678

inputs

identity_1d
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????q

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?I
__inference__traced_save_421093
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopF
Bsavev2_autoencoder_my_encoder_conv1d_20_kernel_read_readvariableopD
@savev2_autoencoder_my_encoder_conv1d_20_bias_read_readvariableopv
rsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_moving_mean_read_readvariableopz
vsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_moving_variance_read_readvariableopp
lsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma_read_readvariableopo
ksavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta_read_readvariableopF
Bsavev2_autoencoder_my_encoder_conv1d_21_kernel_read_readvariableopD
@savev2_autoencoder_my_encoder_conv1d_21_bias_read_readvariableopx
tsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_moving_mean_read_readvariableop|
xsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_moving_variance_read_readvariableopr
nsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma_read_readvariableopq
msavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta_read_readvariableopF
Bsavev2_autoencoder_my_encoder_conv1d_22_kernel_read_readvariableopD
@savev2_autoencoder_my_encoder_conv1d_22_bias_read_readvariableopF
Bsavev2_autoencoder_my_encoder_conv1d_23_kernel_read_readvariableopD
@savev2_autoencoder_my_encoder_conv1d_23_bias_read_readvariableopE
Asavev2_autoencoder_my_encoder_dense_71_kernel_read_readvariableopC
?savev2_autoencoder_my_encoder_dense_71_bias_read_readvariableopM
Isavev2_autoencoder_my_decoder_conv1d_transpose_kernel_read_readvariableopK
Gsavev2_autoencoder_my_decoder_conv1d_transpose_bias_read_readvariableopx
tsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_moving_mean_read_readvariableop|
xsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_moving_variance_read_readvariableopr
nsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma_read_readvariableopq
msavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta_read_readvariableopO
Ksavev2_autoencoder_my_decoder_conv1d_transpose_1_kernel_read_readvariableopM
Isavev2_autoencoder_my_decoder_conv1d_transpose_1_bias_read_readvariableopv
rsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_moving_mean_read_readvariableopz
vsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_moving_variance_read_readvariableopp
lsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma_read_readvariableopo
ksavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta_read_readvariableopO
Ksavev2_autoencoder_my_decoder_conv1d_transpose_2_kernel_read_readvariableopM
Isavev2_autoencoder_my_decoder_conv1d_transpose_2_bias_read_readvariableopO
Ksavev2_autoencoder_my_decoder_conv1d_transpose_3_kernel_read_readvariableopM
Isavev2_autoencoder_my_decoder_conv1d_transpose_3_bias_read_readvariableopE
Asavev2_autoencoder_my_decoder_dense_72_kernel_read_readvariableopC
?savev2_autoencoder_my_decoder_dense_72_bias_read_readvariableopE
Asavev2_autoencoder_my_decoder_dense_74_kernel_read_readvariableopC
?savev2_autoencoder_my_decoder_dense_74_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopM
Isavev2_adam_autoencoder_my_encoder_conv1d_20_kernel_m_read_readvariableopK
Gsavev2_adam_autoencoder_my_encoder_conv1d_20_bias_m_read_readvariableopw
ssavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma_m_read_readvariableopv
rsavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta_m_read_readvariableopM
Isavev2_adam_autoencoder_my_encoder_conv1d_21_kernel_m_read_readvariableopK
Gsavev2_adam_autoencoder_my_encoder_conv1d_21_bias_m_read_readvariableopy
usavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma_m_read_readvariableopx
tsavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta_m_read_readvariableopM
Isavev2_adam_autoencoder_my_encoder_conv1d_22_kernel_m_read_readvariableopK
Gsavev2_adam_autoencoder_my_encoder_conv1d_22_bias_m_read_readvariableopM
Isavev2_adam_autoencoder_my_encoder_conv1d_23_kernel_m_read_readvariableopK
Gsavev2_adam_autoencoder_my_encoder_conv1d_23_bias_m_read_readvariableopL
Hsavev2_adam_autoencoder_my_encoder_dense_71_kernel_m_read_readvariableopJ
Fsavev2_adam_autoencoder_my_encoder_dense_71_bias_m_read_readvariableopT
Psavev2_adam_autoencoder_my_decoder_conv1d_transpose_kernel_m_read_readvariableopR
Nsavev2_adam_autoencoder_my_decoder_conv1d_transpose_bias_m_read_readvariableopy
usavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma_m_read_readvariableopx
tsavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta_m_read_readvariableopV
Rsavev2_adam_autoencoder_my_decoder_conv1d_transpose_1_kernel_m_read_readvariableopT
Psavev2_adam_autoencoder_my_decoder_conv1d_transpose_1_bias_m_read_readvariableopw
ssavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma_m_read_readvariableopv
rsavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta_m_read_readvariableopV
Rsavev2_adam_autoencoder_my_decoder_conv1d_transpose_2_kernel_m_read_readvariableopT
Psavev2_adam_autoencoder_my_decoder_conv1d_transpose_2_bias_m_read_readvariableopV
Rsavev2_adam_autoencoder_my_decoder_conv1d_transpose_3_kernel_m_read_readvariableopT
Psavev2_adam_autoencoder_my_decoder_conv1d_transpose_3_bias_m_read_readvariableopL
Hsavev2_adam_autoencoder_my_decoder_dense_72_kernel_m_read_readvariableopJ
Fsavev2_adam_autoencoder_my_decoder_dense_72_bias_m_read_readvariableopL
Hsavev2_adam_autoencoder_my_decoder_dense_74_kernel_m_read_readvariableopJ
Fsavev2_adam_autoencoder_my_decoder_dense_74_bias_m_read_readvariableopM
Isavev2_adam_autoencoder_my_encoder_conv1d_20_kernel_v_read_readvariableopK
Gsavev2_adam_autoencoder_my_encoder_conv1d_20_bias_v_read_readvariableopw
ssavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma_v_read_readvariableopv
rsavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta_v_read_readvariableopM
Isavev2_adam_autoencoder_my_encoder_conv1d_21_kernel_v_read_readvariableopK
Gsavev2_adam_autoencoder_my_encoder_conv1d_21_bias_v_read_readvariableopy
usavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma_v_read_readvariableopx
tsavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta_v_read_readvariableopM
Isavev2_adam_autoencoder_my_encoder_conv1d_22_kernel_v_read_readvariableopK
Gsavev2_adam_autoencoder_my_encoder_conv1d_22_bias_v_read_readvariableopM
Isavev2_adam_autoencoder_my_encoder_conv1d_23_kernel_v_read_readvariableopK
Gsavev2_adam_autoencoder_my_encoder_conv1d_23_bias_v_read_readvariableopL
Hsavev2_adam_autoencoder_my_encoder_dense_71_kernel_v_read_readvariableopJ
Fsavev2_adam_autoencoder_my_encoder_dense_71_bias_v_read_readvariableopT
Psavev2_adam_autoencoder_my_decoder_conv1d_transpose_kernel_v_read_readvariableopR
Nsavev2_adam_autoencoder_my_decoder_conv1d_transpose_bias_v_read_readvariableopy
usavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma_v_read_readvariableopx
tsavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta_v_read_readvariableopV
Rsavev2_adam_autoencoder_my_decoder_conv1d_transpose_1_kernel_v_read_readvariableopT
Psavev2_adam_autoencoder_my_decoder_conv1d_transpose_1_bias_v_read_readvariableopw
ssavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma_v_read_readvariableopv
rsavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta_v_read_readvariableopV
Rsavev2_adam_autoencoder_my_decoder_conv1d_transpose_2_kernel_v_read_readvariableopT
Psavev2_adam_autoencoder_my_decoder_conv1d_transpose_2_bias_v_read_readvariableopV
Rsavev2_adam_autoencoder_my_decoder_conv1d_transpose_3_kernel_v_read_readvariableopT
Psavev2_adam_autoencoder_my_decoder_conv1d_transpose_3_bias_v_read_readvariableopL
Hsavev2_adam_autoencoder_my_decoder_dense_72_kernel_v_read_readvariableopJ
Fsavev2_adam_autoencoder_my_decoder_dense_72_bias_v_read_readvariableopL
Hsavev2_adam_autoencoder_my_decoder_dense_74_kernel_v_read_readvariableopJ
Fsavev2_adam_autoencoder_my_decoder_dense_74_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?0
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*?/
value?/B?/jB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*?
value?B?jB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?G
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopBsavev2_autoencoder_my_encoder_conv1d_20_kernel_read_readvariableop@savev2_autoencoder_my_encoder_conv1d_20_bias_read_readvariableoprsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_moving_mean_read_readvariableopvsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_moving_variance_read_readvariableoplsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma_read_readvariableopksavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta_read_readvariableopBsavev2_autoencoder_my_encoder_conv1d_21_kernel_read_readvariableop@savev2_autoencoder_my_encoder_conv1d_21_bias_read_readvariableoptsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_moving_mean_read_readvariableopxsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_moving_variance_read_readvariableopnsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma_read_readvariableopmsavev2_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta_read_readvariableopBsavev2_autoencoder_my_encoder_conv1d_22_kernel_read_readvariableop@savev2_autoencoder_my_encoder_conv1d_22_bias_read_readvariableopBsavev2_autoencoder_my_encoder_conv1d_23_kernel_read_readvariableop@savev2_autoencoder_my_encoder_conv1d_23_bias_read_readvariableopAsavev2_autoencoder_my_encoder_dense_71_kernel_read_readvariableop?savev2_autoencoder_my_encoder_dense_71_bias_read_readvariableopIsavev2_autoencoder_my_decoder_conv1d_transpose_kernel_read_readvariableopGsavev2_autoencoder_my_decoder_conv1d_transpose_bias_read_readvariableoptsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_moving_mean_read_readvariableopxsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_moving_variance_read_readvariableopnsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma_read_readvariableopmsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta_read_readvariableopKsavev2_autoencoder_my_decoder_conv1d_transpose_1_kernel_read_readvariableopIsavev2_autoencoder_my_decoder_conv1d_transpose_1_bias_read_readvariableoprsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_moving_mean_read_readvariableopvsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_moving_variance_read_readvariableoplsavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma_read_readvariableopksavev2_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta_read_readvariableopKsavev2_autoencoder_my_decoder_conv1d_transpose_2_kernel_read_readvariableopIsavev2_autoencoder_my_decoder_conv1d_transpose_2_bias_read_readvariableopKsavev2_autoencoder_my_decoder_conv1d_transpose_3_kernel_read_readvariableopIsavev2_autoencoder_my_decoder_conv1d_transpose_3_bias_read_readvariableopAsavev2_autoencoder_my_decoder_dense_72_kernel_read_readvariableop?savev2_autoencoder_my_decoder_dense_72_bias_read_readvariableopAsavev2_autoencoder_my_decoder_dense_74_kernel_read_readvariableop?savev2_autoencoder_my_decoder_dense_74_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopIsavev2_adam_autoencoder_my_encoder_conv1d_20_kernel_m_read_readvariableopGsavev2_adam_autoencoder_my_encoder_conv1d_20_bias_m_read_readvariableopssavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma_m_read_readvariableoprsavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta_m_read_readvariableopIsavev2_adam_autoencoder_my_encoder_conv1d_21_kernel_m_read_readvariableopGsavev2_adam_autoencoder_my_encoder_conv1d_21_bias_m_read_readvariableopusavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma_m_read_readvariableoptsavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta_m_read_readvariableopIsavev2_adam_autoencoder_my_encoder_conv1d_22_kernel_m_read_readvariableopGsavev2_adam_autoencoder_my_encoder_conv1d_22_bias_m_read_readvariableopIsavev2_adam_autoencoder_my_encoder_conv1d_23_kernel_m_read_readvariableopGsavev2_adam_autoencoder_my_encoder_conv1d_23_bias_m_read_readvariableopHsavev2_adam_autoencoder_my_encoder_dense_71_kernel_m_read_readvariableopFsavev2_adam_autoencoder_my_encoder_dense_71_bias_m_read_readvariableopPsavev2_adam_autoencoder_my_decoder_conv1d_transpose_kernel_m_read_readvariableopNsavev2_adam_autoencoder_my_decoder_conv1d_transpose_bias_m_read_readvariableopusavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma_m_read_readvariableoptsavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta_m_read_readvariableopRsavev2_adam_autoencoder_my_decoder_conv1d_transpose_1_kernel_m_read_readvariableopPsavev2_adam_autoencoder_my_decoder_conv1d_transpose_1_bias_m_read_readvariableopssavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma_m_read_readvariableoprsavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta_m_read_readvariableopRsavev2_adam_autoencoder_my_decoder_conv1d_transpose_2_kernel_m_read_readvariableopPsavev2_adam_autoencoder_my_decoder_conv1d_transpose_2_bias_m_read_readvariableopRsavev2_adam_autoencoder_my_decoder_conv1d_transpose_3_kernel_m_read_readvariableopPsavev2_adam_autoencoder_my_decoder_conv1d_transpose_3_bias_m_read_readvariableopHsavev2_adam_autoencoder_my_decoder_dense_72_kernel_m_read_readvariableopFsavev2_adam_autoencoder_my_decoder_dense_72_bias_m_read_readvariableopHsavev2_adam_autoencoder_my_decoder_dense_74_kernel_m_read_readvariableopFsavev2_adam_autoencoder_my_decoder_dense_74_bias_m_read_readvariableopIsavev2_adam_autoencoder_my_encoder_conv1d_20_kernel_v_read_readvariableopGsavev2_adam_autoencoder_my_encoder_conv1d_20_bias_v_read_readvariableopssavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma_v_read_readvariableoprsavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta_v_read_readvariableopIsavev2_adam_autoencoder_my_encoder_conv1d_21_kernel_v_read_readvariableopGsavev2_adam_autoencoder_my_encoder_conv1d_21_bias_v_read_readvariableopusavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma_v_read_readvariableoptsavev2_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta_v_read_readvariableopIsavev2_adam_autoencoder_my_encoder_conv1d_22_kernel_v_read_readvariableopGsavev2_adam_autoencoder_my_encoder_conv1d_22_bias_v_read_readvariableopIsavev2_adam_autoencoder_my_encoder_conv1d_23_kernel_v_read_readvariableopGsavev2_adam_autoencoder_my_encoder_conv1d_23_bias_v_read_readvariableopHsavev2_adam_autoencoder_my_encoder_dense_71_kernel_v_read_readvariableopFsavev2_adam_autoencoder_my_encoder_dense_71_bias_v_read_readvariableopPsavev2_adam_autoencoder_my_decoder_conv1d_transpose_kernel_v_read_readvariableopNsavev2_adam_autoencoder_my_decoder_conv1d_transpose_bias_v_read_readvariableopusavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma_v_read_readvariableoptsavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta_v_read_readvariableopRsavev2_adam_autoencoder_my_decoder_conv1d_transpose_1_kernel_v_read_readvariableopPsavev2_adam_autoencoder_my_decoder_conv1d_transpose_1_bias_v_read_readvariableopssavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma_v_read_readvariableoprsavev2_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta_v_read_readvariableopRsavev2_adam_autoencoder_my_decoder_conv1d_transpose_2_kernel_v_read_readvariableopPsavev2_adam_autoencoder_my_decoder_conv1d_transpose_2_bias_v_read_readvariableopRsavev2_adam_autoencoder_my_decoder_conv1d_transpose_3_kernel_v_read_readvariableopPsavev2_adam_autoencoder_my_decoder_conv1d_transpose_3_bias_v_read_readvariableopHsavev2_adam_autoencoder_my_decoder_dense_72_kernel_v_read_readvariableopFsavev2_adam_autoencoder_my_decoder_dense_72_bias_v_read_readvariableopHsavev2_adam_autoencoder_my_decoder_dense_74_kernel_v_read_readvariableopFsavev2_adam_autoencoder_my_decoder_dense_74_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *x
dtypesn
l2j	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : : : : : :  : : : : : :  : :  : :
?K?:?:  : : : : : :  : : : : : :  : : : :
??:?:
??
:?
: : : : : : :  : : : :  : :  : :
?K?:?:  : : : :  : : : :  : : : :
??:?:
??
:?
: : : : :  : : : :  : :  : :
?K?:?:  : : : :  : : : :  : : : :
??:?:
??
:?
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
:  : 

_output_shapes
: :($
"
_output_shapes
:  : 

_output_shapes
: :&"
 
_output_shapes
:
?K?:!

_output_shapes	
:?:($
"
_output_shapes
:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
:  : 

_output_shapes
: :  

_output_shapes
: : !

_output_shapes
: : "

_output_shapes
: : #

_output_shapes
: :($$
"
_output_shapes
:  : %

_output_shapes
: :(&$
"
_output_shapes
: : '

_output_shapes
: :&("
 
_output_shapes
:
??:!)

_output_shapes	
:?:&*"
 
_output_shapes
:
??
:!+

_output_shapes	
:?
:,

_output_shapes
: :-

_output_shapes
: :(.$
"
_output_shapes
: : /

_output_shapes
: : 0

_output_shapes
: : 1

_output_shapes
: :(2$
"
_output_shapes
:  : 3

_output_shapes
: : 4

_output_shapes
: : 5

_output_shapes
: :(6$
"
_output_shapes
:  : 7

_output_shapes
: :(8$
"
_output_shapes
:  : 9

_output_shapes
: :&:"
 
_output_shapes
:
?K?:!;

_output_shapes	
:?:(<$
"
_output_shapes
:  : =

_output_shapes
: : >

_output_shapes
: : ?

_output_shapes
: :(@$
"
_output_shapes
:  : A

_output_shapes
: : B

_output_shapes
: : C

_output_shapes
: :(D$
"
_output_shapes
:  : E

_output_shapes
: :(F$
"
_output_shapes
: : G

_output_shapes
: :&H"
 
_output_shapes
:
??:!I

_output_shapes	
:?:&J"
 
_output_shapes
:
??
:!K

_output_shapes	
:?
:(L$
"
_output_shapes
: : M

_output_shapes
: : N

_output_shapes
: : O

_output_shapes
: :(P$
"
_output_shapes
:  : Q

_output_shapes
: : R

_output_shapes
: : S

_output_shapes
: :(T$
"
_output_shapes
:  : U

_output_shapes
: :(V$
"
_output_shapes
:  : W

_output_shapes
: :&X"
 
_output_shapes
:
?K?:!Y

_output_shapes	
:?:(Z$
"
_output_shapes
:  : [

_output_shapes
: : \

_output_shapes
: : ]

_output_shapes
: :(^$
"
_output_shapes
:  : _

_output_shapes
: : `

_output_shapes
: : a

_output_shapes
: :(b$
"
_output_shapes
:  : c

_output_shapes
: :(d$
"
_output_shapes
: : e

_output_shapes
: :&f"
 
_output_shapes
:
??:!g

_output_shapes	
:?:&h"
 
_output_shapes
:
??
:!i

_output_shapes	
:?
:j

_output_shapes
: 
?
?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_420617

inputs*
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: ,
cast_2_readvariableop_resource: ,
cast_3_readvariableop_resource: 
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?	
,__inference_autoencoder_layer_call_fn_417498
input_1
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15:
?K?

unknown_16:	?

unknown_17:
??

unknown_18:	? 

unknown_19: 

unknown_20:  

unknown_21:  

unknown_22: 

unknown_23: 

unknown_24: 

unknown_25: 

unknown_26:  

unknown_27:  

unknown_28: 

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32:  

unknown_33:  

unknown_34: 

unknown_35:
??


unknown_36:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_autoencoder_layer_call_and_return_conditional_losses_417338t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
ʩ
?6
G__inference_autoencoder_layer_call_and_return_conditional_losses_418540
xV
@my_encoder_conv1d_20_conv1d_expanddims_1_readvariableop_resource: B
4my_encoder_conv1d_20_biasadd_readvariableop_resource: ~
pmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource: ?
xmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource: ?
rmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource: ?
rmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource: V
@my_encoder_conv1d_21_conv1d_expanddims_1_readvariableop_resource:  B
4my_encoder_conv1d_21_biasadd_readvariableop_resource: ?
rmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource: ?
zmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ?
tmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource: ?
tmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource: V
@my_encoder_conv1d_22_conv1d_expanddims_1_readvariableop_resource:  B
4my_encoder_conv1d_22_biasadd_readvariableop_resource: V
@my_encoder_conv1d_23_conv1d_expanddims_1_readvariableop_resource:  B
4my_encoder_conv1d_23_biasadd_readvariableop_resource: F
2my_encoder_dense_71_matmul_readvariableop_resource:
?K?B
3my_encoder_dense_71_biasadd_readvariableop_resource:	?F
2my_decoder_dense_72_matmul_readvariableop_resource:
??B
3my_decoder_dense_72_biasadd_readvariableop_resource:	?i
Smy_decoder_conv1d_transpose_3_conv1d_transpose_expanddims_1_readvariableop_resource: K
=my_decoder_conv1d_transpose_3_biasadd_readvariableop_resource: i
Smy_decoder_conv1d_transpose_2_conv1d_transpose_expanddims_1_readvariableop_resource:  K
=my_decoder_conv1d_transpose_2_biasadd_readvariableop_resource: ~
pmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource: ?
xmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource: ?
rmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource: ?
rmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource: i
Smy_decoder_conv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_resource:  K
=my_decoder_conv1d_transpose_1_biasadd_readvariableop_resource: ?
rmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource: ?
zmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ?
tmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource: ?
tmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource: g
Qmy_decoder_conv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_resource:  I
;my_decoder_conv1d_transpose_biasadd_readvariableop_resource: F
2my_decoder_dense_74_matmul_readvariableop_resource:
??
B
3my_decoder_dense_74_biasadd_readvariableop_resource:	?

identity??gmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp?imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1?imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2?omy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp?imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp?kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1?kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2?qmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp?2my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp?Hmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp?4my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp?Jmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?4my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp?Jmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp?4my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp?Jmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp?*my_decoder/dense_72/BiasAdd/ReadVariableOp?)my_decoder/dense_72/MatMul/ReadVariableOp?*my_decoder/dense_74/BiasAdd/ReadVariableOp?)my_decoder/dense_74/MatMul/ReadVariableOp?gmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp?imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1?imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2?omy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp?imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp?kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1?kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2?qmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp?+my_encoder/conv1d_20/BiasAdd/ReadVariableOp?7my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp?+my_encoder/conv1d_21/BiasAdd/ReadVariableOp?7my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp?+my_encoder/conv1d_22/BiasAdd/ReadVariableOp?7my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp?+my_encoder/conv1d_23/BiasAdd/ReadVariableOp?7my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp?*my_encoder/dense_71/BiasAdd/ReadVariableOp?)my_encoder/dense_71/MatMul/ReadVariableOpu
*my_encoder/conv1d_20/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&my_encoder/conv1d_20/Conv1D/ExpandDims
ExpandDimsx3my_encoder/conv1d_20/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
7my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@my_encoder_conv1d_20_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0n
,my_encoder/conv1d_20/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(my_encoder/conv1d_20/Conv1D/ExpandDims_1
ExpandDims?my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp:value:05my_encoder/conv1d_20/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
my_encoder/conv1d_20/Conv1DConv2D/my_encoder/conv1d_20/Conv1D/ExpandDims:output:01my_encoder/conv1d_20/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
#my_encoder/conv1d_20/Conv1D/SqueezeSqueeze$my_encoder/conv1d_20/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
+my_encoder/conv1d_20/BiasAdd/ReadVariableOpReadVariableOp4my_encoder_conv1d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
my_encoder/conv1d_20/BiasAddBiasAdd,my_encoder/conv1d_20/Conv1D/Squeeze:output:03my_encoder/conv1d_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 
my_encoder/conv1d_20/ReluRelu%my_encoder/conv1d_20/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
gmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpReadVariableOppmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
\my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/addAddV2omy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp:value:0gmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
]my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/SqrtSqrt`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
omy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpxmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truedivRealDivamy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/Sqrt:y:0wmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
\my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mulMul'my_encoder/conv1d_20/Relu:activations:0dmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOprmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1Mulqmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1:value:0dmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOprmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
\my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/subSubqmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2:value:0bmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1AddV2`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul:z:0`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? u
*my_encoder/conv1d_21/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&my_encoder/conv1d_21/Conv1D/ExpandDims
ExpandDimsbmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1:z:03my_encoder/conv1d_21/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
7my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@my_encoder_conv1d_21_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0n
,my_encoder/conv1d_21/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(my_encoder/conv1d_21/Conv1D/ExpandDims_1
ExpandDims?my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp:value:05my_encoder/conv1d_21/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
my_encoder/conv1d_21/Conv1DConv2D/my_encoder/conv1d_21/Conv1D/ExpandDims:output:01my_encoder/conv1d_21/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
#my_encoder/conv1d_21/Conv1D/SqueezeSqueeze$my_encoder/conv1d_21/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
+my_encoder/conv1d_21/BiasAdd/ReadVariableOpReadVariableOp4my_encoder_conv1d_21_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
my_encoder/conv1d_21/BiasAddBiasAdd,my_encoder/conv1d_21/Conv1D/Squeeze:output:03my_encoder/conv1d_21/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 
my_encoder/conv1d_21/ReluRelu%my_encoder/conv1d_21/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOprmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/addAddV2qmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp:value:0imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
_my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/SqrtSqrtbmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
qmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpzmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
bmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truedivRealDivcmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/Sqrt:y:0ymy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mulMul'my_encoder/conv1d_21/Relu:activations:0fmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOptmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1Mulsmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0fmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOptmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/subSubsmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0dmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1AddV2bmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul:z:0bmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
%my_encoder/spatial_dropout1d_10/ShapeShapedmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:}
3my_encoder/spatial_dropout1d_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5my_encoder/spatial_dropout1d_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5my_encoder/spatial_dropout1d_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-my_encoder/spatial_dropout1d_10/strided_sliceStridedSlice.my_encoder/spatial_dropout1d_10/Shape:output:0<my_encoder/spatial_dropout1d_10/strided_slice/stack:output:0>my_encoder/spatial_dropout1d_10/strided_slice/stack_1:output:0>my_encoder/spatial_dropout1d_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5my_encoder/spatial_dropout1d_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
7my_encoder/spatial_dropout1d_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7my_encoder/spatial_dropout1d_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/my_encoder/spatial_dropout1d_10/strided_slice_1StridedSlice.my_encoder/spatial_dropout1d_10/Shape:output:0>my_encoder/spatial_dropout1d_10/strided_slice_1/stack:output:0@my_encoder/spatial_dropout1d_10/strided_slice_1/stack_1:output:0@my_encoder/spatial_dropout1d_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
-my_encoder/spatial_dropout1d_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
+my_encoder/spatial_dropout1d_10/dropout/MulMuldmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1:z:06my_encoder/spatial_dropout1d_10/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? ?
>my_encoder/spatial_dropout1d_10/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
<my_encoder/spatial_dropout1d_10/dropout/random_uniform/shapePack6my_encoder/spatial_dropout1d_10/strided_slice:output:0Gmy_encoder/spatial_dropout1d_10/dropout/random_uniform/shape/1:output:08my_encoder/spatial_dropout1d_10/strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
Dmy_encoder/spatial_dropout1d_10/dropout/random_uniform/RandomUniformRandomUniformEmy_encoder/spatial_dropout1d_10/dropout/random_uniform/shape:output:0*
T0*+
_output_shapes
:????????? *
dtype0{
6my_encoder/spatial_dropout1d_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
4my_encoder/spatial_dropout1d_10/dropout/GreaterEqualGreaterEqualMmy_encoder/spatial_dropout1d_10/dropout/random_uniform/RandomUniform:output:0?my_encoder/spatial_dropout1d_10/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? ?
,my_encoder/spatial_dropout1d_10/dropout/CastCast8my_encoder/spatial_dropout1d_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? ?
-my_encoder/spatial_dropout1d_10/dropout/Mul_1Mul/my_encoder/spatial_dropout1d_10/dropout/Mul:z:00my_encoder/spatial_dropout1d_10/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? u
*my_encoder/conv1d_22/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&my_encoder/conv1d_22/Conv1D/ExpandDims
ExpandDims1my_encoder/spatial_dropout1d_10/dropout/Mul_1:z:03my_encoder/conv1d_22/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
7my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@my_encoder_conv1d_22_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0n
,my_encoder/conv1d_22/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(my_encoder/conv1d_22/Conv1D/ExpandDims_1
ExpandDims?my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp:value:05my_encoder/conv1d_22/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
my_encoder/conv1d_22/Conv1DConv2D/my_encoder/conv1d_22/Conv1D/ExpandDims:output:01my_encoder/conv1d_22/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
#my_encoder/conv1d_22/Conv1D/SqueezeSqueeze$my_encoder/conv1d_22/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
+my_encoder/conv1d_22/BiasAdd/ReadVariableOpReadVariableOp4my_encoder_conv1d_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
my_encoder/conv1d_22/BiasAddBiasAdd,my_encoder/conv1d_22/Conv1D/Squeeze:output:03my_encoder/conv1d_22/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 
my_encoder/conv1d_22/ReluRelu%my_encoder/conv1d_22/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? o
-my_encoder/average_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
)my_encoder/average_pooling1d_5/ExpandDims
ExpandDims'my_encoder/conv1d_22/Relu:activations:06my_encoder/average_pooling1d_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
&my_encoder/average_pooling1d_5/AvgPoolAvgPool2my_encoder/average_pooling1d_5/ExpandDims:output:0*
T0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
?
&my_encoder/average_pooling1d_5/SqueezeSqueeze/my_encoder/average_pooling1d_5/AvgPool:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
u
*my_encoder/conv1d_23/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&my_encoder/conv1d_23/Conv1D/ExpandDims
ExpandDims/my_encoder/average_pooling1d_5/Squeeze:output:03my_encoder/conv1d_23/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
7my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@my_encoder_conv1d_23_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0n
,my_encoder/conv1d_23/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(my_encoder/conv1d_23/Conv1D/ExpandDims_1
ExpandDims?my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp:value:05my_encoder/conv1d_23/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
my_encoder/conv1d_23/Conv1DConv2D/my_encoder/conv1d_23/Conv1D/ExpandDims:output:01my_encoder/conv1d_23/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
#my_encoder/conv1d_23/Conv1D/SqueezeSqueeze$my_encoder/conv1d_23/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
+my_encoder/conv1d_23/BiasAdd/ReadVariableOpReadVariableOp4my_encoder_conv1d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
my_encoder/conv1d_23/BiasAddBiasAdd,my_encoder/conv1d_23/Conv1D/Squeeze:output:03my_encoder/conv1d_23/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 
my_encoder/conv1d_23/ReluRelu%my_encoder/conv1d_23/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? |
%my_encoder/spatial_dropout1d_11/ShapeShape'my_encoder/conv1d_23/Relu:activations:0*
T0*
_output_shapes
:}
3my_encoder/spatial_dropout1d_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5my_encoder/spatial_dropout1d_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5my_encoder/spatial_dropout1d_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-my_encoder/spatial_dropout1d_11/strided_sliceStridedSlice.my_encoder/spatial_dropout1d_11/Shape:output:0<my_encoder/spatial_dropout1d_11/strided_slice/stack:output:0>my_encoder/spatial_dropout1d_11/strided_slice/stack_1:output:0>my_encoder/spatial_dropout1d_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5my_encoder/spatial_dropout1d_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
7my_encoder/spatial_dropout1d_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7my_encoder/spatial_dropout1d_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/my_encoder/spatial_dropout1d_11/strided_slice_1StridedSlice.my_encoder/spatial_dropout1d_11/Shape:output:0>my_encoder/spatial_dropout1d_11/strided_slice_1/stack:output:0@my_encoder/spatial_dropout1d_11/strided_slice_1/stack_1:output:0@my_encoder/spatial_dropout1d_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
-my_encoder/spatial_dropout1d_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
+my_encoder/spatial_dropout1d_11/dropout/MulMul'my_encoder/conv1d_23/Relu:activations:06my_encoder/spatial_dropout1d_11/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? ?
>my_encoder/spatial_dropout1d_11/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
<my_encoder/spatial_dropout1d_11/dropout/random_uniform/shapePack6my_encoder/spatial_dropout1d_11/strided_slice:output:0Gmy_encoder/spatial_dropout1d_11/dropout/random_uniform/shape/1:output:08my_encoder/spatial_dropout1d_11/strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
Dmy_encoder/spatial_dropout1d_11/dropout/random_uniform/RandomUniformRandomUniformEmy_encoder/spatial_dropout1d_11/dropout/random_uniform/shape:output:0*
T0*+
_output_shapes
:????????? *
dtype0{
6my_encoder/spatial_dropout1d_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
4my_encoder/spatial_dropout1d_11/dropout/GreaterEqualGreaterEqualMmy_encoder/spatial_dropout1d_11/dropout/random_uniform/RandomUniform:output:0?my_encoder/spatial_dropout1d_11/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? ?
,my_encoder/spatial_dropout1d_11/dropout/CastCast8my_encoder/spatial_dropout1d_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? ?
-my_encoder/spatial_dropout1d_11/dropout/Mul_1Mul/my_encoder/spatial_dropout1d_11/dropout/Mul:z:00my_encoder/spatial_dropout1d_11/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? k
my_encoder/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????%  ?
my_encoder/flatten_5/ReshapeReshape1my_encoder/spatial_dropout1d_11/dropout/Mul_1:z:0#my_encoder/flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????K?
)my_encoder/dense_71/MatMul/ReadVariableOpReadVariableOp2my_encoder_dense_71_matmul_readvariableop_resource* 
_output_shapes
:
?K?*
dtype0?
my_encoder/dense_71/MatMulMatMul%my_encoder/flatten_5/Reshape:output:01my_encoder/dense_71/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*my_encoder/dense_71/BiasAdd/ReadVariableOpReadVariableOp3my_encoder_dense_71_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
my_encoder/dense_71/BiasAddBiasAdd$my_encoder/dense_71/MatMul:product:02my_encoder/dense_71/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
my_encoder/dense_71/ReluRelu$my_encoder/dense_71/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
)my_decoder/dense_72/MatMul/ReadVariableOpReadVariableOp2my_decoder_dense_72_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
my_decoder/dense_72/MatMulMatMul&my_encoder/dense_71/Relu:activations:01my_decoder/dense_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*my_decoder/dense_72/BiasAdd/ReadVariableOpReadVariableOp3my_decoder_dense_72_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
my_decoder/dense_72/BiasAddBiasAdd$my_decoder/dense_72/MatMul:product:02my_decoder/dense_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
my_decoder/dense_72/ReluRelu$my_decoder/dense_72/BiasAdd:output:0*
T0*(
_output_shapes
:??????????n
my_decoder/reshape/ShapeShape&my_decoder/dense_72/Relu:activations:0*
T0*
_output_shapes
:p
&my_decoder/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(my_decoder/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(my_decoder/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 my_decoder/reshape/strided_sliceStridedSlice!my_decoder/reshape/Shape:output:0/my_decoder/reshape/strided_slice/stack:output:01my_decoder/reshape/strided_slice/stack_1:output:01my_decoder/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
"my_decoder/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?d
"my_decoder/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
 my_decoder/reshape/Reshape/shapePack)my_decoder/reshape/strided_slice:output:0+my_decoder/reshape/Reshape/shape/1:output:0+my_decoder/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
my_decoder/reshape/ReshapeReshape&my_decoder/dense_72/Relu:activations:0)my_decoder/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????x
%my_decoder/spatial_dropout1d_13/ShapeShape#my_decoder/reshape/Reshape:output:0*
T0*
_output_shapes
:}
3my_decoder/spatial_dropout1d_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5my_decoder/spatial_dropout1d_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/spatial_dropout1d_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-my_decoder/spatial_dropout1d_13/strided_sliceStridedSlice.my_decoder/spatial_dropout1d_13/Shape:output:0<my_decoder/spatial_dropout1d_13/strided_slice/stack:output:0>my_decoder/spatial_dropout1d_13/strided_slice/stack_1:output:0>my_decoder/spatial_dropout1d_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5my_decoder/spatial_dropout1d_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
7my_decoder/spatial_dropout1d_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7my_decoder/spatial_dropout1d_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/my_decoder/spatial_dropout1d_13/strided_slice_1StridedSlice.my_decoder/spatial_dropout1d_13/Shape:output:0>my_decoder/spatial_dropout1d_13/strided_slice_1/stack:output:0@my_decoder/spatial_dropout1d_13/strided_slice_1/stack_1:output:0@my_decoder/spatial_dropout1d_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
-my_decoder/spatial_dropout1d_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
+my_decoder/spatial_dropout1d_13/dropout/MulMul#my_decoder/reshape/Reshape:output:06my_decoder/spatial_dropout1d_13/dropout/Const:output:0*
T0*,
_output_shapes
:???????????
>my_decoder/spatial_dropout1d_13/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
<my_decoder/spatial_dropout1d_13/dropout/random_uniform/shapePack6my_decoder/spatial_dropout1d_13/strided_slice:output:0Gmy_decoder/spatial_dropout1d_13/dropout/random_uniform/shape/1:output:08my_decoder/spatial_dropout1d_13/strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
Dmy_decoder/spatial_dropout1d_13/dropout/random_uniform/RandomUniformRandomUniformEmy_decoder/spatial_dropout1d_13/dropout/random_uniform/shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0{
6my_decoder/spatial_dropout1d_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
4my_decoder/spatial_dropout1d_13/dropout/GreaterEqualGreaterEqualMmy_decoder/spatial_dropout1d_13/dropout/random_uniform/RandomUniform:output:0?my_decoder/spatial_dropout1d_13/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:??????????
,my_decoder/spatial_dropout1d_13/dropout/CastCast8my_decoder/spatial_dropout1d_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:??????????
-my_decoder/spatial_dropout1d_13/dropout/Mul_1Mul/my_decoder/spatial_dropout1d_13/dropout/Mul:z:00my_decoder/spatial_dropout1d_13/dropout/Cast:y:0*
T0*,
_output_shapes
:???????????
#my_decoder/conv1d_transpose_3/ShapeShape1my_decoder/spatial_dropout1d_13/dropout/Mul_1:z:0*
T0*
_output_shapes
:{
1my_decoder/conv1d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3my_decoder/conv1d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3my_decoder/conv1d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+my_decoder/conv1d_transpose_3/strided_sliceStridedSlice,my_decoder/conv1d_transpose_3/Shape:output:0:my_decoder/conv1d_transpose_3/strided_slice/stack:output:0<my_decoder/conv1d_transpose_3/strided_slice/stack_1:output:0<my_decoder/conv1d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3my_decoder/conv1d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-my_decoder/conv1d_transpose_3/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_3/Shape:output:0<my_decoder/conv1d_transpose_3/strided_slice_1/stack:output:0>my_decoder/conv1d_transpose_3/strided_slice_1/stack_1:output:0>my_decoder/conv1d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#my_decoder/conv1d_transpose_3/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_3/mulMul6my_decoder/conv1d_transpose_3/strided_slice_1:output:0,my_decoder/conv1d_transpose_3/mul/y:output:0*
T0*
_output_shapes
: e
#my_decoder/conv1d_transpose_3/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_3/addAddV2%my_decoder/conv1d_transpose_3/mul:z:0,my_decoder/conv1d_transpose_3/add/y:output:0*
T0*
_output_shapes
: g
%my_decoder/conv1d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
#my_decoder/conv1d_transpose_3/stackPack4my_decoder/conv1d_transpose_3/strided_slice:output:0%my_decoder/conv1d_transpose_3/add:z:0.my_decoder/conv1d_transpose_3/stack/2:output:0*
N*
T0*
_output_shapes
:
=my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
9my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims
ExpandDims1my_decoder/spatial_dropout1d_13/dropout/Mul_1:z:0Fmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
Jmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpSmy_decoder_conv1d_transpose_3_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0?
?my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
;my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1
ExpandDimsRmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Hmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
Bmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<my_decoder/conv1d_transpose_3/conv1d_transpose/strided_sliceStridedSlice,my_decoder/conv1d_transpose_3/stack:output:0Kmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack:output:0Mmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_1:output:0Mmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Dmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Fmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Fmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_3/stack:output:0Mmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack:output:0Omy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_1:output:0Omy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
>my_decoder/conv1d_transpose_3/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:|
:my_decoder/conv1d_transpose_3/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5my_decoder/conv1d_transpose_3/conv1d_transpose/concatConcatV2Emy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice:output:0Gmy_decoder/conv1d_transpose_3/conv1d_transpose/concat/values_1:output:0Gmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1:output:0Cmy_decoder/conv1d_transpose_3/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
.my_decoder/conv1d_transpose_3/conv1d_transposeConv2DBackpropInput>my_decoder/conv1d_transpose_3/conv1d_transpose/concat:output:0Dmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1:output:0Bmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
6my_decoder/conv1d_transpose_3/conv1d_transpose/SqueezeSqueeze7my_decoder/conv1d_transpose_3/conv1d_transpose:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
?
4my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp=my_decoder_conv1d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
%my_decoder/conv1d_transpose_3/BiasAddBiasAdd?my_decoder/conv1d_transpose_3/conv1d_transpose/Squeeze:output:0<my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? ?
"my_decoder/conv1d_transpose_3/ReluRelu.my_decoder/conv1d_transpose_3/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? o
-my_decoder/average_pooling1d_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
)my_decoder/average_pooling1d_6/ExpandDims
ExpandDims0my_decoder/conv1d_transpose_3/Relu:activations:06my_decoder/average_pooling1d_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
&my_decoder/average_pooling1d_6/AvgPoolAvgPool2my_decoder/average_pooling1d_6/ExpandDims:output:0*
T0*/
_output_shapes
:?????????L *
ksize
*
paddingVALID*
strides
?
&my_decoder/average_pooling1d_6/SqueezeSqueeze/my_decoder/average_pooling1d_6/AvgPool:output:0*
T0*+
_output_shapes
:?????????L *
squeeze_dims
?
#my_decoder/conv1d_transpose_2/ShapeShape/my_decoder/average_pooling1d_6/Squeeze:output:0*
T0*
_output_shapes
:{
1my_decoder/conv1d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3my_decoder/conv1d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3my_decoder/conv1d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+my_decoder/conv1d_transpose_2/strided_sliceStridedSlice,my_decoder/conv1d_transpose_2/Shape:output:0:my_decoder/conv1d_transpose_2/strided_slice/stack:output:0<my_decoder/conv1d_transpose_2/strided_slice/stack_1:output:0<my_decoder/conv1d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3my_decoder/conv1d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-my_decoder/conv1d_transpose_2/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_2/Shape:output:0<my_decoder/conv1d_transpose_2/strided_slice_1/stack:output:0>my_decoder/conv1d_transpose_2/strided_slice_1/stack_1:output:0>my_decoder/conv1d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#my_decoder/conv1d_transpose_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_2/mulMul6my_decoder/conv1d_transpose_2/strided_slice_1:output:0,my_decoder/conv1d_transpose_2/mul/y:output:0*
T0*
_output_shapes
: e
#my_decoder/conv1d_transpose_2/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_2/addAddV2%my_decoder/conv1d_transpose_2/mul:z:0,my_decoder/conv1d_transpose_2/add/y:output:0*
T0*
_output_shapes
: g
%my_decoder/conv1d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
#my_decoder/conv1d_transpose_2/stackPack4my_decoder/conv1d_transpose_2/strided_slice:output:0%my_decoder/conv1d_transpose_2/add:z:0.my_decoder/conv1d_transpose_2/stack/2:output:0*
N*
T0*
_output_shapes
:
=my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
9my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims
ExpandDims/my_decoder/average_pooling1d_6/Squeeze:output:0Fmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????L ?
Jmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpSmy_decoder_conv1d_transpose_2_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0?
?my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
;my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1
ExpandDimsRmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Hmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Bmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<my_decoder/conv1d_transpose_2/conv1d_transpose/strided_sliceStridedSlice,my_decoder/conv1d_transpose_2/stack:output:0Kmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack:output:0Mmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_1:output:0Mmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Dmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Fmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Fmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_2/stack:output:0Mmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack:output:0Omy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_1:output:0Omy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
>my_decoder/conv1d_transpose_2/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:|
:my_decoder/conv1d_transpose_2/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5my_decoder/conv1d_transpose_2/conv1d_transpose/concatConcatV2Emy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice:output:0Gmy_decoder/conv1d_transpose_2/conv1d_transpose/concat/values_1:output:0Gmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1:output:0Cmy_decoder/conv1d_transpose_2/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
.my_decoder/conv1d_transpose_2/conv1d_transposeConv2DBackpropInput>my_decoder/conv1d_transpose_2/conv1d_transpose/concat:output:0Dmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1:output:0Bmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????Q *
paddingVALID*
strides
?
6my_decoder/conv1d_transpose_2/conv1d_transpose/SqueezeSqueeze7my_decoder/conv1d_transpose_2/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????Q *
squeeze_dims
?
4my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp=my_decoder_conv1d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
%my_decoder/conv1d_transpose_2/BiasAddBiasAdd?my_decoder/conv1d_transpose_2/conv1d_transpose/Squeeze:output:0<my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????Q ?
"my_decoder/conv1d_transpose_2/ReluRelu.my_decoder/conv1d_transpose_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????Q ?
%my_decoder/spatial_dropout1d_12/ShapeShape0my_decoder/conv1d_transpose_2/Relu:activations:0*
T0*
_output_shapes
:}
3my_decoder/spatial_dropout1d_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5my_decoder/spatial_dropout1d_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/spatial_dropout1d_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-my_decoder/spatial_dropout1d_12/strided_sliceStridedSlice.my_decoder/spatial_dropout1d_12/Shape:output:0<my_decoder/spatial_dropout1d_12/strided_slice/stack:output:0>my_decoder/spatial_dropout1d_12/strided_slice/stack_1:output:0>my_decoder/spatial_dropout1d_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5my_decoder/spatial_dropout1d_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
7my_decoder/spatial_dropout1d_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7my_decoder/spatial_dropout1d_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/my_decoder/spatial_dropout1d_12/strided_slice_1StridedSlice.my_decoder/spatial_dropout1d_12/Shape:output:0>my_decoder/spatial_dropout1d_12/strided_slice_1/stack:output:0@my_decoder/spatial_dropout1d_12/strided_slice_1/stack_1:output:0@my_decoder/spatial_dropout1d_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
-my_decoder/spatial_dropout1d_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
+my_decoder/spatial_dropout1d_12/dropout/MulMul0my_decoder/conv1d_transpose_2/Relu:activations:06my_decoder/spatial_dropout1d_12/dropout/Const:output:0*
T0*+
_output_shapes
:?????????Q ?
>my_decoder/spatial_dropout1d_12/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
<my_decoder/spatial_dropout1d_12/dropout/random_uniform/shapePack6my_decoder/spatial_dropout1d_12/strided_slice:output:0Gmy_decoder/spatial_dropout1d_12/dropout/random_uniform/shape/1:output:08my_decoder/spatial_dropout1d_12/strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
Dmy_decoder/spatial_dropout1d_12/dropout/random_uniform/RandomUniformRandomUniformEmy_decoder/spatial_dropout1d_12/dropout/random_uniform/shape:output:0*
T0*+
_output_shapes
:????????? *
dtype0{
6my_decoder/spatial_dropout1d_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
4my_decoder/spatial_dropout1d_12/dropout/GreaterEqualGreaterEqualMmy_decoder/spatial_dropout1d_12/dropout/random_uniform/RandomUniform:output:0?my_decoder/spatial_dropout1d_12/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:????????? ?
,my_decoder/spatial_dropout1d_12/dropout/CastCast8my_decoder/spatial_dropout1d_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:????????? ?
-my_decoder/spatial_dropout1d_12/dropout/Mul_1Mul/my_decoder/spatial_dropout1d_12/dropout/Mul:z:00my_decoder/spatial_dropout1d_12/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????Q ?
gmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpReadVariableOppmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
\my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/addAddV2omy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp:value:0gmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
]my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/SqrtSqrt`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
omy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpxmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truedivRealDivamy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/Sqrt:y:0wmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
\my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mulMul1my_decoder/spatial_dropout1d_12/dropout/Mul_1:z:0dmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????Q ?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOprmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1Mulqmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1:value:0dmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOprmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
\my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/subSubqmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2:value:0bmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1AddV2`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul:z:0`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????Q ?
#my_decoder/conv1d_transpose_1/ShapeShapebmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:{
1my_decoder/conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3my_decoder/conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3my_decoder/conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+my_decoder/conv1d_transpose_1/strided_sliceStridedSlice,my_decoder/conv1d_transpose_1/Shape:output:0:my_decoder/conv1d_transpose_1/strided_slice/stack:output:0<my_decoder/conv1d_transpose_1/strided_slice/stack_1:output:0<my_decoder/conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3my_decoder/conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-my_decoder/conv1d_transpose_1/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_1/Shape:output:0<my_decoder/conv1d_transpose_1/strided_slice_1/stack:output:0>my_decoder/conv1d_transpose_1/strided_slice_1/stack_1:output:0>my_decoder/conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#my_decoder/conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_1/mulMul6my_decoder/conv1d_transpose_1/strided_slice_1:output:0,my_decoder/conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: e
#my_decoder/conv1d_transpose_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_1/addAddV2%my_decoder/conv1d_transpose_1/mul:z:0,my_decoder/conv1d_transpose_1/add/y:output:0*
T0*
_output_shapes
: g
%my_decoder/conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
#my_decoder/conv1d_transpose_1/stackPack4my_decoder/conv1d_transpose_1/strided_slice:output:0%my_decoder/conv1d_transpose_1/add:z:0.my_decoder/conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:
=my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
9my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDimsbmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1:z:0Fmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????Q ?
Jmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpSmy_decoder_conv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0?
?my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
;my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDimsRmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Hmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Bmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<my_decoder/conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice,my_decoder/conv1d_transpose_1/stack:output:0Kmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Mmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Mmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Dmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Fmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Fmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_1/stack:output:0Mmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0Omy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0Omy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
>my_decoder/conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:|
:my_decoder/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5my_decoder/conv1d_transpose_1/conv1d_transpose/concatConcatV2Emy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice:output:0Gmy_decoder/conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0Gmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:0Cmy_decoder/conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
.my_decoder/conv1d_transpose_1/conv1d_transposeConv2DBackpropInput>my_decoder/conv1d_transpose_1/conv1d_transpose/concat:output:0Dmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:0Bmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????d *
paddingVALID*
strides
?
6my_decoder/conv1d_transpose_1/conv1d_transpose/SqueezeSqueeze7my_decoder/conv1d_transpose_1/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????d *
squeeze_dims
?
4my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp=my_decoder_conv1d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
%my_decoder/conv1d_transpose_1/BiasAddBiasAdd?my_decoder/conv1d_transpose_1/conv1d_transpose/Squeeze:output:0<my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d ?
"my_decoder/conv1d_transpose_1/ReluRelu.my_decoder/conv1d_transpose_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????d ?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOprmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/addAddV2qmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp:value:0imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
_my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/SqrtSqrtbmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
qmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpzmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
bmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truedivRealDivcmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/Sqrt:y:0ymy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mulMul0my_decoder/conv1d_transpose_1/Relu:activations:0fmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????d ?
kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOptmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1Mulsmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0fmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOptmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/subSubsmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0dmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1AddV2bmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul:z:0bmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????d ?
!my_decoder/conv1d_transpose/ShapeShapedmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:y
/my_decoder/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1my_decoder/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1my_decoder/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)my_decoder/conv1d_transpose/strided_sliceStridedSlice*my_decoder/conv1d_transpose/Shape:output:08my_decoder/conv1d_transpose/strided_slice/stack:output:0:my_decoder/conv1d_transpose/strided_slice/stack_1:output:0:my_decoder/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1my_decoder/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3my_decoder/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3my_decoder/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+my_decoder/conv1d_transpose/strided_slice_1StridedSlice*my_decoder/conv1d_transpose/Shape:output:0:my_decoder/conv1d_transpose/strided_slice_1/stack:output:0<my_decoder/conv1d_transpose/strided_slice_1/stack_1:output:0<my_decoder/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!my_decoder/conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
my_decoder/conv1d_transpose/mulMul4my_decoder/conv1d_transpose/strided_slice_1:output:0*my_decoder/conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: e
#my_decoder/conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
!my_decoder/conv1d_transpose/stackPack2my_decoder/conv1d_transpose/strided_slice:output:0#my_decoder/conv1d_transpose/mul:z:0,my_decoder/conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:}
;my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
7my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDimsdmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1:z:0Dmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????d ?
Hmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpQmy_decoder_conv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0
=my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
9my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDimsPmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Fmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
@my_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Bmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Bmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:my_decoder/conv1d_transpose/conv1d_transpose/strided_sliceStridedSlice*my_decoder/conv1d_transpose/stack:output:0Imy_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0Kmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0Kmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Bmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Dmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<my_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1StridedSlice*my_decoder/conv1d_transpose/stack:output:0Kmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Mmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Mmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
<my_decoder/conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:z
8my_decoder/conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
3my_decoder/conv1d_transpose/conv1d_transpose/concatConcatV2Cmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice:output:0Emy_decoder/conv1d_transpose/conv1d_transpose/concat/values_1:output:0Emy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1:output:0Amy_decoder/conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
,my_decoder/conv1d_transpose/conv1d_transposeConv2DBackpropInput<my_decoder/conv1d_transpose/conv1d_transpose/concat:output:0Bmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1:output:0@my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????d *
paddingSAME*
strides
?
4my_decoder/conv1d_transpose/conv1d_transpose/SqueezeSqueeze5my_decoder/conv1d_transpose/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????d *
squeeze_dims
?
2my_decoder/conv1d_transpose/BiasAdd/ReadVariableOpReadVariableOp;my_decoder_conv1d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
#my_decoder/conv1d_transpose/BiasAddBiasAdd=my_decoder/conv1d_transpose/conv1d_transpose/Squeeze:output:0:my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d ?
 my_decoder/conv1d_transpose/ReluRelu,my_decoder/conv1d_transpose/BiasAdd:output:0*
T0*+
_output_shapes
:?????????d k
my_decoder/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
my_decoder/flatten_6/ReshapeReshape.my_decoder/conv1d_transpose/Relu:activations:0#my_decoder/flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
)my_decoder/dense_74/MatMul/ReadVariableOpReadVariableOp2my_decoder_dense_74_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0?
my_decoder/dense_74/MatMulMatMul%my_decoder/flatten_6/Reshape:output:01my_decoder/dense_74/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
?
*my_decoder/dense_74/BiasAdd/ReadVariableOpReadVariableOp3my_decoder_dense_74_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype0?
my_decoder/dense_74/BiasAddBiasAdd$my_decoder/dense_74/MatMul:product:02my_decoder/dense_74/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
y
my_decoder/dense_74/ReluRelu$my_decoder/dense_74/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
p
my_decoder/reshape_1/ShapeShape&my_decoder/dense_74/Relu:activations:0*
T0*
_output_shapes
:r
(my_decoder/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*my_decoder/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*my_decoder/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"my_decoder/reshape_1/strided_sliceStridedSlice#my_decoder/reshape_1/Shape:output:01my_decoder/reshape_1/strided_slice/stack:output:03my_decoder/reshape_1/strided_slice/stack_1:output:03my_decoder/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$my_decoder/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?f
$my_decoder/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
"my_decoder/reshape_1/Reshape/shapePack+my_decoder/reshape_1/strided_slice:output:0-my_decoder/reshape_1/Reshape/shape/1:output:0-my_decoder/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
my_decoder/reshape_1/ReshapeReshape&my_decoder/dense_74/Relu:activations:0+my_decoder/reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????y
IdentityIdentity%my_decoder/reshape_1/Reshape:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOph^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpj^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1j^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2p^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpj^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpl^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1l^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2r^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp3^my_decoder/conv1d_transpose/BiasAdd/ReadVariableOpI^my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp5^my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOpK^my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp5^my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOpK^my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp5^my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOpK^my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp+^my_decoder/dense_72/BiasAdd/ReadVariableOp*^my_decoder/dense_72/MatMul/ReadVariableOp+^my_decoder/dense_74/BiasAdd/ReadVariableOp*^my_decoder/dense_74/MatMul/ReadVariableOph^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpj^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1j^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2p^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpj^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpl^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1l^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2r^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp,^my_encoder/conv1d_20/BiasAdd/ReadVariableOp8^my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp,^my_encoder/conv1d_21/BiasAdd/ReadVariableOp8^my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp,^my_encoder/conv1d_22/BiasAdd/ReadVariableOp8^my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp,^my_encoder/conv1d_23/BiasAdd/ReadVariableOp8^my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp+^my_encoder/dense_71/BiasAdd/ReadVariableOp*^my_encoder/dense_71/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
gmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpgmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp2?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_12?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_22?
omy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpomy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp2?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpimy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp2?
kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_12?
kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_22?
qmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOpqmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp2h
2my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp2my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp2?
Hmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpHmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2l
4my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp4my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp2?
Jmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpJmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp2l
4my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp4my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp2?
Jmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOpJmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp2l
4my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp4my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp2?
Jmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOpJmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp2X
*my_decoder/dense_72/BiasAdd/ReadVariableOp*my_decoder/dense_72/BiasAdd/ReadVariableOp2V
)my_decoder/dense_72/MatMul/ReadVariableOp)my_decoder/dense_72/MatMul/ReadVariableOp2X
*my_decoder/dense_74/BiasAdd/ReadVariableOp*my_decoder/dense_74/BiasAdd/ReadVariableOp2V
)my_decoder/dense_74/MatMul/ReadVariableOp)my_decoder/dense_74/MatMul/ReadVariableOp2?
gmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpgmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp2?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_12?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_22?
omy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpomy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp2?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpimy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp2?
kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_12?
kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_22?
qmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOpqmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp2Z
+my_encoder/conv1d_20/BiasAdd/ReadVariableOp+my_encoder/conv1d_20/BiasAdd/ReadVariableOp2r
7my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp7my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp2Z
+my_encoder/conv1d_21/BiasAdd/ReadVariableOp+my_encoder/conv1d_21/BiasAdd/ReadVariableOp2r
7my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp7my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp2Z
+my_encoder/conv1d_22/BiasAdd/ReadVariableOp+my_encoder/conv1d_22/BiasAdd/ReadVariableOp2r
7my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp7my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp2Z
+my_encoder/conv1d_23/BiasAdd/ReadVariableOp+my_encoder/conv1d_23/BiasAdd/ReadVariableOp2r
7my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp7my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp2X
*my_encoder/dense_71/BiasAdd/ReadVariableOp*my_encoder/dense_71/BiasAdd/ReadVariableOp2V
)my_encoder/dense_71/MatMul/ReadVariableOp)my_encoder/dense_71/MatMul/ReadVariableOp:O K
,
_output_shapes
:??????????

_user_specified_namex
?
k
O__inference_average_pooling1d_6_layer_call_and_return_conditional_losses_416346

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_416411

inputs

identity_1d
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????q

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?

a
E__inference_reshape_1_layer_call_and_return_conditional_losses_416573

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????
:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs
??
?6
G__inference_autoencoder_layer_call_and_return_conditional_losses_418151
xV
@my_encoder_conv1d_20_conv1d_expanddims_1_readvariableop_resource: B
4my_encoder_conv1d_20_biasadd_readvariableop_resource: ~
pmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource: ?
xmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource: ?
rmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource: ?
rmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource: V
@my_encoder_conv1d_21_conv1d_expanddims_1_readvariableop_resource:  B
4my_encoder_conv1d_21_biasadd_readvariableop_resource: ?
rmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource: ?
zmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ?
tmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource: ?
tmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource: V
@my_encoder_conv1d_22_conv1d_expanddims_1_readvariableop_resource:  B
4my_encoder_conv1d_22_biasadd_readvariableop_resource: V
@my_encoder_conv1d_23_conv1d_expanddims_1_readvariableop_resource:  B
4my_encoder_conv1d_23_biasadd_readvariableop_resource: F
2my_encoder_dense_71_matmul_readvariableop_resource:
?K?B
3my_encoder_dense_71_biasadd_readvariableop_resource:	?F
2my_decoder_dense_72_matmul_readvariableop_resource:
??B
3my_decoder_dense_72_biasadd_readvariableop_resource:	?i
Smy_decoder_conv1d_transpose_3_conv1d_transpose_expanddims_1_readvariableop_resource: K
=my_decoder_conv1d_transpose_3_biasadd_readvariableop_resource: i
Smy_decoder_conv1d_transpose_2_conv1d_transpose_expanddims_1_readvariableop_resource:  K
=my_decoder_conv1d_transpose_2_biasadd_readvariableop_resource: ~
pmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource: ?
xmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource: ?
rmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource: ?
rmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource: i
Smy_decoder_conv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_resource:  K
=my_decoder_conv1d_transpose_1_biasadd_readvariableop_resource: ?
rmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource: ?
zmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ?
tmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource: ?
tmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource: g
Qmy_decoder_conv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_resource:  I
;my_decoder_conv1d_transpose_biasadd_readvariableop_resource: F
2my_decoder_dense_74_matmul_readvariableop_resource:
??
B
3my_decoder_dense_74_biasadd_readvariableop_resource:	?

identity??gmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp?imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1?imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2?omy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp?imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp?kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1?kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2?qmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp?2my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp?Hmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp?4my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp?Jmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?4my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp?Jmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp?4my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp?Jmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp?*my_decoder/dense_72/BiasAdd/ReadVariableOp?)my_decoder/dense_72/MatMul/ReadVariableOp?*my_decoder/dense_74/BiasAdd/ReadVariableOp?)my_decoder/dense_74/MatMul/ReadVariableOp?gmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp?imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1?imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2?omy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp?imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp?kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1?kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2?qmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp?+my_encoder/conv1d_20/BiasAdd/ReadVariableOp?7my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp?+my_encoder/conv1d_21/BiasAdd/ReadVariableOp?7my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp?+my_encoder/conv1d_22/BiasAdd/ReadVariableOp?7my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp?+my_encoder/conv1d_23/BiasAdd/ReadVariableOp?7my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp?*my_encoder/dense_71/BiasAdd/ReadVariableOp?)my_encoder/dense_71/MatMul/ReadVariableOpu
*my_encoder/conv1d_20/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&my_encoder/conv1d_20/Conv1D/ExpandDims
ExpandDimsx3my_encoder/conv1d_20/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
7my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@my_encoder_conv1d_20_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0n
,my_encoder/conv1d_20/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(my_encoder/conv1d_20/Conv1D/ExpandDims_1
ExpandDims?my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp:value:05my_encoder/conv1d_20/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
my_encoder/conv1d_20/Conv1DConv2D/my_encoder/conv1d_20/Conv1D/ExpandDims:output:01my_encoder/conv1d_20/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
#my_encoder/conv1d_20/Conv1D/SqueezeSqueeze$my_encoder/conv1d_20/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
+my_encoder/conv1d_20/BiasAdd/ReadVariableOpReadVariableOp4my_encoder_conv1d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
my_encoder/conv1d_20/BiasAddBiasAdd,my_encoder/conv1d_20/Conv1D/Squeeze:output:03my_encoder/conv1d_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 
my_encoder/conv1d_20/ReluRelu%my_encoder/conv1d_20/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
gmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpReadVariableOppmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
\my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/addAddV2omy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp:value:0gmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
]my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/SqrtSqrt`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
omy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpxmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truedivRealDivamy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/Sqrt:y:0wmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
\my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mulMul'my_encoder/conv1d_20/Relu:activations:0dmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOprmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1Mulqmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1:value:0dmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOprmy_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
\my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/subSubqmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2:value:0bmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1AddV2`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul:z:0`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? u
*my_encoder/conv1d_21/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&my_encoder/conv1d_21/Conv1D/ExpandDims
ExpandDimsbmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1:z:03my_encoder/conv1d_21/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
7my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@my_encoder_conv1d_21_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0n
,my_encoder/conv1d_21/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(my_encoder/conv1d_21/Conv1D/ExpandDims_1
ExpandDims?my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp:value:05my_encoder/conv1d_21/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
my_encoder/conv1d_21/Conv1DConv2D/my_encoder/conv1d_21/Conv1D/ExpandDims:output:01my_encoder/conv1d_21/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
#my_encoder/conv1d_21/Conv1D/SqueezeSqueeze$my_encoder/conv1d_21/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
+my_encoder/conv1d_21/BiasAdd/ReadVariableOpReadVariableOp4my_encoder_conv1d_21_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
my_encoder/conv1d_21/BiasAddBiasAdd,my_encoder/conv1d_21/Conv1D/Squeeze:output:03my_encoder/conv1d_21/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 
my_encoder/conv1d_21/ReluRelu%my_encoder/conv1d_21/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOprmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/addAddV2qmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp:value:0imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
_my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/SqrtSqrtbmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
qmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpzmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
bmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truedivRealDivcmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/Sqrt:y:0ymy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mulMul'my_encoder/conv1d_21/Relu:activations:0fmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOptmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1Mulsmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0fmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOptmy_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/subSubsmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0dmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
`my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1AddV2bmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul:z:0bmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
(my_encoder/spatial_dropout1d_10/IdentityIdentitydmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1:z:0*
T0*,
_output_shapes
:?????????? u
*my_encoder/conv1d_22/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&my_encoder/conv1d_22/Conv1D/ExpandDims
ExpandDims1my_encoder/spatial_dropout1d_10/Identity:output:03my_encoder/conv1d_22/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
7my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@my_encoder_conv1d_22_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0n
,my_encoder/conv1d_22/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(my_encoder/conv1d_22/Conv1D/ExpandDims_1
ExpandDims?my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp:value:05my_encoder/conv1d_22/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
my_encoder/conv1d_22/Conv1DConv2D/my_encoder/conv1d_22/Conv1D/ExpandDims:output:01my_encoder/conv1d_22/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
#my_encoder/conv1d_22/Conv1D/SqueezeSqueeze$my_encoder/conv1d_22/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
+my_encoder/conv1d_22/BiasAdd/ReadVariableOpReadVariableOp4my_encoder_conv1d_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
my_encoder/conv1d_22/BiasAddBiasAdd,my_encoder/conv1d_22/Conv1D/Squeeze:output:03my_encoder/conv1d_22/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 
my_encoder/conv1d_22/ReluRelu%my_encoder/conv1d_22/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? o
-my_encoder/average_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
)my_encoder/average_pooling1d_5/ExpandDims
ExpandDims'my_encoder/conv1d_22/Relu:activations:06my_encoder/average_pooling1d_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
&my_encoder/average_pooling1d_5/AvgPoolAvgPool2my_encoder/average_pooling1d_5/ExpandDims:output:0*
T0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
?
&my_encoder/average_pooling1d_5/SqueezeSqueeze/my_encoder/average_pooling1d_5/AvgPool:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
u
*my_encoder/conv1d_23/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&my_encoder/conv1d_23/Conv1D/ExpandDims
ExpandDims/my_encoder/average_pooling1d_5/Squeeze:output:03my_encoder/conv1d_23/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
7my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@my_encoder_conv1d_23_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0n
,my_encoder/conv1d_23/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(my_encoder/conv1d_23/Conv1D/ExpandDims_1
ExpandDims?my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp:value:05my_encoder/conv1d_23/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
my_encoder/conv1d_23/Conv1DConv2D/my_encoder/conv1d_23/Conv1D/ExpandDims:output:01my_encoder/conv1d_23/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
#my_encoder/conv1d_23/Conv1D/SqueezeSqueeze$my_encoder/conv1d_23/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
+my_encoder/conv1d_23/BiasAdd/ReadVariableOpReadVariableOp4my_encoder_conv1d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
my_encoder/conv1d_23/BiasAddBiasAdd,my_encoder/conv1d_23/Conv1D/Squeeze:output:03my_encoder/conv1d_23/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? 
my_encoder/conv1d_23/ReluRelu%my_encoder/conv1d_23/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
(my_encoder/spatial_dropout1d_11/IdentityIdentity'my_encoder/conv1d_23/Relu:activations:0*
T0*,
_output_shapes
:?????????? k
my_encoder/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????%  ?
my_encoder/flatten_5/ReshapeReshape1my_encoder/spatial_dropout1d_11/Identity:output:0#my_encoder/flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????K?
)my_encoder/dense_71/MatMul/ReadVariableOpReadVariableOp2my_encoder_dense_71_matmul_readvariableop_resource* 
_output_shapes
:
?K?*
dtype0?
my_encoder/dense_71/MatMulMatMul%my_encoder/flatten_5/Reshape:output:01my_encoder/dense_71/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*my_encoder/dense_71/BiasAdd/ReadVariableOpReadVariableOp3my_encoder_dense_71_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
my_encoder/dense_71/BiasAddBiasAdd$my_encoder/dense_71/MatMul:product:02my_encoder/dense_71/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
my_encoder/dense_71/ReluRelu$my_encoder/dense_71/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
)my_decoder/dense_72/MatMul/ReadVariableOpReadVariableOp2my_decoder_dense_72_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
my_decoder/dense_72/MatMulMatMul&my_encoder/dense_71/Relu:activations:01my_decoder/dense_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*my_decoder/dense_72/BiasAdd/ReadVariableOpReadVariableOp3my_decoder_dense_72_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
my_decoder/dense_72/BiasAddBiasAdd$my_decoder/dense_72/MatMul:product:02my_decoder/dense_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
my_decoder/dense_72/ReluRelu$my_decoder/dense_72/BiasAdd:output:0*
T0*(
_output_shapes
:??????????n
my_decoder/reshape/ShapeShape&my_decoder/dense_72/Relu:activations:0*
T0*
_output_shapes
:p
&my_decoder/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(my_decoder/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(my_decoder/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 my_decoder/reshape/strided_sliceStridedSlice!my_decoder/reshape/Shape:output:0/my_decoder/reshape/strided_slice/stack:output:01my_decoder/reshape/strided_slice/stack_1:output:01my_decoder/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
"my_decoder/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?d
"my_decoder/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
 my_decoder/reshape/Reshape/shapePack)my_decoder/reshape/strided_slice:output:0+my_decoder/reshape/Reshape/shape/1:output:0+my_decoder/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
my_decoder/reshape/ReshapeReshape&my_decoder/dense_72/Relu:activations:0)my_decoder/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:???????????
(my_decoder/spatial_dropout1d_13/IdentityIdentity#my_decoder/reshape/Reshape:output:0*
T0*,
_output_shapes
:???????????
#my_decoder/conv1d_transpose_3/ShapeShape1my_decoder/spatial_dropout1d_13/Identity:output:0*
T0*
_output_shapes
:{
1my_decoder/conv1d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3my_decoder/conv1d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3my_decoder/conv1d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+my_decoder/conv1d_transpose_3/strided_sliceStridedSlice,my_decoder/conv1d_transpose_3/Shape:output:0:my_decoder/conv1d_transpose_3/strided_slice/stack:output:0<my_decoder/conv1d_transpose_3/strided_slice/stack_1:output:0<my_decoder/conv1d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3my_decoder/conv1d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-my_decoder/conv1d_transpose_3/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_3/Shape:output:0<my_decoder/conv1d_transpose_3/strided_slice_1/stack:output:0>my_decoder/conv1d_transpose_3/strided_slice_1/stack_1:output:0>my_decoder/conv1d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#my_decoder/conv1d_transpose_3/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_3/mulMul6my_decoder/conv1d_transpose_3/strided_slice_1:output:0,my_decoder/conv1d_transpose_3/mul/y:output:0*
T0*
_output_shapes
: e
#my_decoder/conv1d_transpose_3/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_3/addAddV2%my_decoder/conv1d_transpose_3/mul:z:0,my_decoder/conv1d_transpose_3/add/y:output:0*
T0*
_output_shapes
: g
%my_decoder/conv1d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
#my_decoder/conv1d_transpose_3/stackPack4my_decoder/conv1d_transpose_3/strided_slice:output:0%my_decoder/conv1d_transpose_3/add:z:0.my_decoder/conv1d_transpose_3/stack/2:output:0*
N*
T0*
_output_shapes
:
=my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
9my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims
ExpandDims1my_decoder/spatial_dropout1d_13/Identity:output:0Fmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
Jmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpSmy_decoder_conv1d_transpose_3_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0?
?my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
;my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1
ExpandDimsRmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Hmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
Bmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<my_decoder/conv1d_transpose_3/conv1d_transpose/strided_sliceStridedSlice,my_decoder/conv1d_transpose_3/stack:output:0Kmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack:output:0Mmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_1:output:0Mmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Dmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Fmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Fmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_3/stack:output:0Mmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack:output:0Omy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_1:output:0Omy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
>my_decoder/conv1d_transpose_3/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:|
:my_decoder/conv1d_transpose_3/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5my_decoder/conv1d_transpose_3/conv1d_transpose/concatConcatV2Emy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice:output:0Gmy_decoder/conv1d_transpose_3/conv1d_transpose/concat/values_1:output:0Gmy_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1:output:0Cmy_decoder/conv1d_transpose_3/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
.my_decoder/conv1d_transpose_3/conv1d_transposeConv2DBackpropInput>my_decoder/conv1d_transpose_3/conv1d_transpose/concat:output:0Dmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1:output:0Bmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
6my_decoder/conv1d_transpose_3/conv1d_transpose/SqueezeSqueeze7my_decoder/conv1d_transpose_3/conv1d_transpose:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
?
4my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp=my_decoder_conv1d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
%my_decoder/conv1d_transpose_3/BiasAddBiasAdd?my_decoder/conv1d_transpose_3/conv1d_transpose/Squeeze:output:0<my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? ?
"my_decoder/conv1d_transpose_3/ReluRelu.my_decoder/conv1d_transpose_3/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? o
-my_decoder/average_pooling1d_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
)my_decoder/average_pooling1d_6/ExpandDims
ExpandDims0my_decoder/conv1d_transpose_3/Relu:activations:06my_decoder/average_pooling1d_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
&my_decoder/average_pooling1d_6/AvgPoolAvgPool2my_decoder/average_pooling1d_6/ExpandDims:output:0*
T0*/
_output_shapes
:?????????L *
ksize
*
paddingVALID*
strides
?
&my_decoder/average_pooling1d_6/SqueezeSqueeze/my_decoder/average_pooling1d_6/AvgPool:output:0*
T0*+
_output_shapes
:?????????L *
squeeze_dims
?
#my_decoder/conv1d_transpose_2/ShapeShape/my_decoder/average_pooling1d_6/Squeeze:output:0*
T0*
_output_shapes
:{
1my_decoder/conv1d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3my_decoder/conv1d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3my_decoder/conv1d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+my_decoder/conv1d_transpose_2/strided_sliceStridedSlice,my_decoder/conv1d_transpose_2/Shape:output:0:my_decoder/conv1d_transpose_2/strided_slice/stack:output:0<my_decoder/conv1d_transpose_2/strided_slice/stack_1:output:0<my_decoder/conv1d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3my_decoder/conv1d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-my_decoder/conv1d_transpose_2/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_2/Shape:output:0<my_decoder/conv1d_transpose_2/strided_slice_1/stack:output:0>my_decoder/conv1d_transpose_2/strided_slice_1/stack_1:output:0>my_decoder/conv1d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#my_decoder/conv1d_transpose_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_2/mulMul6my_decoder/conv1d_transpose_2/strided_slice_1:output:0,my_decoder/conv1d_transpose_2/mul/y:output:0*
T0*
_output_shapes
: e
#my_decoder/conv1d_transpose_2/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_2/addAddV2%my_decoder/conv1d_transpose_2/mul:z:0,my_decoder/conv1d_transpose_2/add/y:output:0*
T0*
_output_shapes
: g
%my_decoder/conv1d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
#my_decoder/conv1d_transpose_2/stackPack4my_decoder/conv1d_transpose_2/strided_slice:output:0%my_decoder/conv1d_transpose_2/add:z:0.my_decoder/conv1d_transpose_2/stack/2:output:0*
N*
T0*
_output_shapes
:
=my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
9my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims
ExpandDims/my_decoder/average_pooling1d_6/Squeeze:output:0Fmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????L ?
Jmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpSmy_decoder_conv1d_transpose_2_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0?
?my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
;my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1
ExpandDimsRmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Hmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Bmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<my_decoder/conv1d_transpose_2/conv1d_transpose/strided_sliceStridedSlice,my_decoder/conv1d_transpose_2/stack:output:0Kmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack:output:0Mmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_1:output:0Mmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Dmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Fmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Fmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_2/stack:output:0Mmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack:output:0Omy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_1:output:0Omy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
>my_decoder/conv1d_transpose_2/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:|
:my_decoder/conv1d_transpose_2/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5my_decoder/conv1d_transpose_2/conv1d_transpose/concatConcatV2Emy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice:output:0Gmy_decoder/conv1d_transpose_2/conv1d_transpose/concat/values_1:output:0Gmy_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1:output:0Cmy_decoder/conv1d_transpose_2/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
.my_decoder/conv1d_transpose_2/conv1d_transposeConv2DBackpropInput>my_decoder/conv1d_transpose_2/conv1d_transpose/concat:output:0Dmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1:output:0Bmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????Q *
paddingVALID*
strides
?
6my_decoder/conv1d_transpose_2/conv1d_transpose/SqueezeSqueeze7my_decoder/conv1d_transpose_2/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????Q *
squeeze_dims
?
4my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp=my_decoder_conv1d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
%my_decoder/conv1d_transpose_2/BiasAddBiasAdd?my_decoder/conv1d_transpose_2/conv1d_transpose/Squeeze:output:0<my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????Q ?
"my_decoder/conv1d_transpose_2/ReluRelu.my_decoder/conv1d_transpose_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????Q ?
(my_decoder/spatial_dropout1d_12/IdentityIdentity0my_decoder/conv1d_transpose_2/Relu:activations:0*
T0*+
_output_shapes
:?????????Q ?
gmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpReadVariableOppmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
\my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/addAddV2omy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp:value:0gmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
]my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/SqrtSqrt`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
omy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpxmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truedivRealDivamy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/Sqrt:y:0wmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
\my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mulMul1my_decoder/spatial_dropout1d_12/Identity:output:0dmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????Q ?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOprmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1Mulqmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1:value:0dmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOprmy_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
\my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/subSubqmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2:value:0bmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1AddV2`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul:z:0`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????Q ?
#my_decoder/conv1d_transpose_1/ShapeShapebmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:{
1my_decoder/conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3my_decoder/conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3my_decoder/conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+my_decoder/conv1d_transpose_1/strided_sliceStridedSlice,my_decoder/conv1d_transpose_1/Shape:output:0:my_decoder/conv1d_transpose_1/strided_slice/stack:output:0<my_decoder/conv1d_transpose_1/strided_slice/stack_1:output:0<my_decoder/conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
3my_decoder/conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5my_decoder/conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-my_decoder/conv1d_transpose_1/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_1/Shape:output:0<my_decoder/conv1d_transpose_1/strided_slice_1/stack:output:0>my_decoder/conv1d_transpose_1/strided_slice_1/stack_1:output:0>my_decoder/conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#my_decoder/conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_1/mulMul6my_decoder/conv1d_transpose_1/strided_slice_1:output:0,my_decoder/conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: e
#my_decoder/conv1d_transpose_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!my_decoder/conv1d_transpose_1/addAddV2%my_decoder/conv1d_transpose_1/mul:z:0,my_decoder/conv1d_transpose_1/add/y:output:0*
T0*
_output_shapes
: g
%my_decoder/conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
#my_decoder/conv1d_transpose_1/stackPack4my_decoder/conv1d_transpose_1/strided_slice:output:0%my_decoder/conv1d_transpose_1/add:z:0.my_decoder/conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:
=my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
9my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDimsbmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1:z:0Fmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????Q ?
Jmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpSmy_decoder_conv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0?
?my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
;my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDimsRmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Hmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Bmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Dmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<my_decoder/conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice,my_decoder/conv1d_transpose_1/stack:output:0Kmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Mmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Mmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Dmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Fmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Fmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
>my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice,my_decoder/conv1d_transpose_1/stack:output:0Mmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0Omy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0Omy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
>my_decoder/conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:|
:my_decoder/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5my_decoder/conv1d_transpose_1/conv1d_transpose/concatConcatV2Emy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice:output:0Gmy_decoder/conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0Gmy_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:0Cmy_decoder/conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
.my_decoder/conv1d_transpose_1/conv1d_transposeConv2DBackpropInput>my_decoder/conv1d_transpose_1/conv1d_transpose/concat:output:0Dmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:0Bmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????d *
paddingVALID*
strides
?
6my_decoder/conv1d_transpose_1/conv1d_transpose/SqueezeSqueeze7my_decoder/conv1d_transpose_1/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????d *
squeeze_dims
?
4my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp=my_decoder_conv1d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
%my_decoder/conv1d_transpose_1/BiasAddBiasAdd?my_decoder/conv1d_transpose_1/conv1d_transpose/Squeeze:output:0<my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d ?
"my_decoder/conv1d_transpose_1/ReluRelu.my_decoder/conv1d_transpose_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????d ?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOprmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/addAddV2qmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp:value:0imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
_my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/SqrtSqrtbmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
qmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpzmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
bmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truedivRealDivcmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/Sqrt:y:0ymy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mulMul0my_decoder/conv1d_transpose_1/Relu:activations:0fmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????d ?
kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOptmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1Mulsmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0fmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOptmy_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/subSubsmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0dmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
`my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1AddV2bmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul:z:0bmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????d ?
!my_decoder/conv1d_transpose/ShapeShapedmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:y
/my_decoder/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1my_decoder/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1my_decoder/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)my_decoder/conv1d_transpose/strided_sliceStridedSlice*my_decoder/conv1d_transpose/Shape:output:08my_decoder/conv1d_transpose/strided_slice/stack:output:0:my_decoder/conv1d_transpose/strided_slice/stack_1:output:0:my_decoder/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
1my_decoder/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3my_decoder/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3my_decoder/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+my_decoder/conv1d_transpose/strided_slice_1StridedSlice*my_decoder/conv1d_transpose/Shape:output:0:my_decoder/conv1d_transpose/strided_slice_1/stack:output:0<my_decoder/conv1d_transpose/strided_slice_1/stack_1:output:0<my_decoder/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!my_decoder/conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
my_decoder/conv1d_transpose/mulMul4my_decoder/conv1d_transpose/strided_slice_1:output:0*my_decoder/conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: e
#my_decoder/conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
!my_decoder/conv1d_transpose/stackPack2my_decoder/conv1d_transpose/strided_slice:output:0#my_decoder/conv1d_transpose/mul:z:0,my_decoder/conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:}
;my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
7my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDimsdmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1:z:0Dmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????d ?
Hmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpQmy_decoder_conv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0
=my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
9my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDimsPmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Fmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
@my_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Bmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Bmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:my_decoder/conv1d_transpose/conv1d_transpose/strided_sliceStridedSlice*my_decoder/conv1d_transpose/stack:output:0Imy_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0Kmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0Kmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Bmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Dmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Dmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<my_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1StridedSlice*my_decoder/conv1d_transpose/stack:output:0Kmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Mmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Mmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
<my_decoder/conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:z
8my_decoder/conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
3my_decoder/conv1d_transpose/conv1d_transpose/concatConcatV2Cmy_decoder/conv1d_transpose/conv1d_transpose/strided_slice:output:0Emy_decoder/conv1d_transpose/conv1d_transpose/concat/values_1:output:0Emy_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1:output:0Amy_decoder/conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
,my_decoder/conv1d_transpose/conv1d_transposeConv2DBackpropInput<my_decoder/conv1d_transpose/conv1d_transpose/concat:output:0Bmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1:output:0@my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????d *
paddingSAME*
strides
?
4my_decoder/conv1d_transpose/conv1d_transpose/SqueezeSqueeze5my_decoder/conv1d_transpose/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????d *
squeeze_dims
?
2my_decoder/conv1d_transpose/BiasAdd/ReadVariableOpReadVariableOp;my_decoder_conv1d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
#my_decoder/conv1d_transpose/BiasAddBiasAdd=my_decoder/conv1d_transpose/conv1d_transpose/Squeeze:output:0:my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d ?
 my_decoder/conv1d_transpose/ReluRelu,my_decoder/conv1d_transpose/BiasAdd:output:0*
T0*+
_output_shapes
:?????????d k
my_decoder/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
my_decoder/flatten_6/ReshapeReshape.my_decoder/conv1d_transpose/Relu:activations:0#my_decoder/flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
)my_decoder/dense_74/MatMul/ReadVariableOpReadVariableOp2my_decoder_dense_74_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0?
my_decoder/dense_74/MatMulMatMul%my_decoder/flatten_6/Reshape:output:01my_decoder/dense_74/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
?
*my_decoder/dense_74/BiasAdd/ReadVariableOpReadVariableOp3my_decoder_dense_74_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype0?
my_decoder/dense_74/BiasAddBiasAdd$my_decoder/dense_74/MatMul:product:02my_decoder/dense_74/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
y
my_decoder/dense_74/ReluRelu$my_decoder/dense_74/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
p
my_decoder/reshape_1/ShapeShape&my_decoder/dense_74/Relu:activations:0*
T0*
_output_shapes
:r
(my_decoder/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*my_decoder/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*my_decoder/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"my_decoder/reshape_1/strided_sliceStridedSlice#my_decoder/reshape_1/Shape:output:01my_decoder/reshape_1/strided_slice/stack:output:03my_decoder/reshape_1/strided_slice/stack_1:output:03my_decoder/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$my_decoder/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?f
$my_decoder/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
"my_decoder/reshape_1/Reshape/shapePack+my_decoder/reshape_1/strided_slice:output:0-my_decoder/reshape_1/Reshape/shape/1:output:0-my_decoder/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
my_decoder/reshape_1/ReshapeReshape&my_decoder/dense_74/Relu:activations:0+my_decoder/reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????y
IdentityIdentity%my_decoder/reshape_1/Reshape:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOph^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpj^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1j^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2p^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpj^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpl^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1l^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2r^my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp3^my_decoder/conv1d_transpose/BiasAdd/ReadVariableOpI^my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp5^my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOpK^my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp5^my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOpK^my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp5^my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOpK^my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp+^my_decoder/dense_72/BiasAdd/ReadVariableOp*^my_decoder/dense_72/MatMul/ReadVariableOp+^my_decoder/dense_74/BiasAdd/ReadVariableOp*^my_decoder/dense_74/MatMul/ReadVariableOph^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpj^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1j^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2p^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpj^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpl^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1l^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2r^my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp,^my_encoder/conv1d_20/BiasAdd/ReadVariableOp8^my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp,^my_encoder/conv1d_21/BiasAdd/ReadVariableOp8^my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp,^my_encoder/conv1d_22/BiasAdd/ReadVariableOp8^my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp,^my_encoder/conv1d_23/BiasAdd/ReadVariableOp8^my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp+^my_encoder/dense_71/BiasAdd/ReadVariableOp*^my_encoder/dense_71/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
gmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpgmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp2?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_12?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_22?
omy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpomy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp2?
imy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpimy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp2?
kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_12?
kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2kmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_22?
qmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOpqmy_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp2h
2my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp2my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp2?
Hmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpHmy_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2l
4my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp4my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp2?
Jmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpJmy_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp2l
4my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp4my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp2?
Jmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOpJmy_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp2l
4my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp4my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp2?
Jmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOpJmy_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp2X
*my_decoder/dense_72/BiasAdd/ReadVariableOp*my_decoder/dense_72/BiasAdd/ReadVariableOp2V
)my_decoder/dense_72/MatMul/ReadVariableOp)my_decoder/dense_72/MatMul/ReadVariableOp2X
*my_decoder/dense_74/BiasAdd/ReadVariableOp*my_decoder/dense_74/BiasAdd/ReadVariableOp2V
)my_decoder/dense_74/MatMul/ReadVariableOp)my_decoder/dense_74/MatMul/ReadVariableOp2?
gmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpgmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp2?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_12?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_22?
omy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpomy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp2?
imy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpimy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp2?
kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_12?
kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2kmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_22?
qmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOpqmy_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp2Z
+my_encoder/conv1d_20/BiasAdd/ReadVariableOp+my_encoder/conv1d_20/BiasAdd/ReadVariableOp2r
7my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp7my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp2Z
+my_encoder/conv1d_21/BiasAdd/ReadVariableOp+my_encoder/conv1d_21/BiasAdd/ReadVariableOp2r
7my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp7my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp2Z
+my_encoder/conv1d_22/BiasAdd/ReadVariableOp+my_encoder/conv1d_22/BiasAdd/ReadVariableOp2r
7my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp7my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp2Z
+my_encoder/conv1d_23/BiasAdd/ReadVariableOp+my_encoder/conv1d_23/BiasAdd/ReadVariableOp2r
7my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp7my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp2X
*my_encoder/dense_71/BiasAdd/ReadVariableOp*my_encoder/dense_71/BiasAdd/ReadVariableOp2V
)my_encoder/dense_71/MatMul/ReadVariableOp)my_encoder/dense_71/MatMul/ReadVariableOp:O K
,
_output_shapes
:??????????

_user_specified_namex
?
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_419711

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????%  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????KY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????K"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_11_layer_call_fn_420364

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_420293|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_419700

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????o
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
F
*__inference_flatten_6_layer_call_fn_420043

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_416541a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d :S O
+
_output_shapes
:?????????d 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_420721

inputs*
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: ,
cast_2_readvariableop_resource: ,
cast_3_readvariableop_resource: 
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_420340

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: *
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :?????????????????? s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?w
?
F__inference_my_decoder_layer_call_and_return_conditional_losses_416936
input_1#
dense_72_416867:
??
dense_72_416869:	?/
conv1d_transpose_3_416874: '
conv1d_transpose_3_416876: /
conv1d_transpose_2_416880:  '
conv1d_transpose_2_416882: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: /
conv1d_transpose_1_416902:  '
conv1d_transpose_1_416904: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: -
conv1d_transpose_416923:  %
conv1d_transpose_416925: #
dense_74_416929:
??

dense_74_416931:	?

identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp?(conv1d_transpose/StatefulPartitionedCall?*conv1d_transpose_1/StatefulPartitionedCall?*conv1d_transpose_2/StatefulPartitionedCall?*conv1d_transpose_3/StatefulPartitionedCall? dense_72/StatefulPartitionedCall? dense_74/StatefulPartitionedCall?
 dense_72/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_72_416867dense_72_416869*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_72_layer_call_and_return_conditional_losses_416459?
reshape/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_416478?
$spatial_dropout1d_13/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_416411?
*conv1d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall-spatial_dropout1d_13/PartitionedCall:output:0conv1d_transpose_3_416874conv1d_transpose_3_416876*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_3_layer_call_and_return_conditional_losses_416395?
#average_pooling1d_6/PartitionedCallPartitionedCall3conv1d_transpose_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????L * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_average_pooling1d_6_layer_call_and_return_conditional_losses_416346?
*conv1d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_6/PartitionedCall:output:0conv1d_transpose_2_416880conv1d_transpose_2_416882*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_2_layer_call_and_return_conditional_losses_416327?
$spatial_dropout1d_12/PartitionedCallPartitionedCall3conv1d_transpose_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_416251?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMul-spatial_dropout1d_12/PartitionedCall:output:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????Q ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????Q ?
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall>batch_normalization/forward/undo_batch_normalization/add_1:z:0conv1d_transpose_1_416902conv1d_transpose_1_416904*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_416235?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMul3conv1d_transpose_1/StatefulPartitionedCall:output:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????d ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????d ?
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0conv1d_transpose_416923conv1d_transpose_416925*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv1d_transpose_layer_call_and_return_conditional_losses_416182?
flatten_6/PartitionedCallPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_416541?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_74_416929dense_74_416931*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_74_layer_call_and_return_conditional_losses_416554?
reshape_1/PartitionedCallPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_416573v
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall+^conv1d_transpose_2/StatefulPartitionedCall+^conv1d_transpose_3/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall2X
*conv1d_transpose_2/StatefulPartitionedCall*conv1d_transpose_2/StatefulPartitionedCall2X
*conv1d_transpose_3/StatefulPartitionedCall*conv1d_transpose_3/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?
o
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_416278

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????o
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
k
O__inference_average_pooling1d_6_layer_call_and_return_conditional_losses_419932

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
Q
5__inference_spatial_dropout1d_13_layer_call_fn_419988

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_416411v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?,
?
N__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_416235

inputsK
5conv1d_transpose_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : n
stackPackstrided_slice:output:0add:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
paddingVALID*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :?????????????????? *
squeeze_dims
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? ]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :?????????????????? n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
)__inference_dense_72_layer_call_fn_420058

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_72_layer_call_and_return_conditional_losses_416459p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
N__inference_conv1d_transpose_3_layer_call_and_return_conditional_losses_416395

inputsK
5conv1d_transpose_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : n
stackPackstrided_slice:output:0add:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"???????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
paddingVALID*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :?????????????????? *
squeeze_dims
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? ]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :?????????????????? n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_420131

inputs*
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: ,
cast_2_readvariableop_resource: ,
cast_3_readvariableop_resource: 
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?	
$__inference_signature_wrapper_418623
input_1
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15:
?K?

unknown_16:	?

unknown_17:
??

unknown_18:	? 

unknown_19: 

unknown_20:  

unknown_21:  

unknown_22: 

unknown_23: 

unknown_24: 

unknown_25: 

unknown_26:  

unknown_27:  

unknown_28: 

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32:  

unknown_33:  

unknown_34: 

unknown_35:
??


unknown_36:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_415476t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?
E__inference_conv1d_20_layer_call_and_return_conditional_losses_415592

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

_
C__inference_reshape_layer_call_and_return_conditional_losses_420038

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
Ҏ
?=
!__inference__wrapped_model_415476
input_1b
Lautoencoder_my_encoder_conv1d_20_conv1d_expanddims_1_readvariableop_resource: N
@autoencoder_my_encoder_conv1d_20_biasadd_readvariableop_resource: ?
|autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource: ?
?autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource: ?
~autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource: ?
~autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource: b
Lautoencoder_my_encoder_conv1d_21_conv1d_expanddims_1_readvariableop_resource:  N
@autoencoder_my_encoder_conv1d_21_biasadd_readvariableop_resource: ?
~autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource: ?
?autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ?
?autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource: ?
?autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource: b
Lautoencoder_my_encoder_conv1d_22_conv1d_expanddims_1_readvariableop_resource:  N
@autoencoder_my_encoder_conv1d_22_biasadd_readvariableop_resource: b
Lautoencoder_my_encoder_conv1d_23_conv1d_expanddims_1_readvariableop_resource:  N
@autoencoder_my_encoder_conv1d_23_biasadd_readvariableop_resource: R
>autoencoder_my_encoder_dense_71_matmul_readvariableop_resource:
?K?N
?autoencoder_my_encoder_dense_71_biasadd_readvariableop_resource:	?R
>autoencoder_my_decoder_dense_72_matmul_readvariableop_resource:
??N
?autoencoder_my_decoder_dense_72_biasadd_readvariableop_resource:	?u
_autoencoder_my_decoder_conv1d_transpose_3_conv1d_transpose_expanddims_1_readvariableop_resource: W
Iautoencoder_my_decoder_conv1d_transpose_3_biasadd_readvariableop_resource: u
_autoencoder_my_decoder_conv1d_transpose_2_conv1d_transpose_expanddims_1_readvariableop_resource:  W
Iautoencoder_my_decoder_conv1d_transpose_2_biasadd_readvariableop_resource: ?
|autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource: ?
?autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource: ?
~autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource: ?
~autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource: u
_autoencoder_my_decoder_conv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_resource:  W
Iautoencoder_my_decoder_conv1d_transpose_1_biasadd_readvariableop_resource: ?
~autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource: ?
?autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ?
?autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource: ?
?autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource: s
]autoencoder_my_decoder_conv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_resource:  U
Gautoencoder_my_decoder_conv1d_transpose_biasadd_readvariableop_resource: R
>autoencoder_my_decoder_dense_74_matmul_readvariableop_resource:
??
N
?autoencoder_my_decoder_dense_74_biasadd_readvariableop_resource:	?

identity??sautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp?uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1?uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2?{autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp?uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp?wautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1?wautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2?}autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp?>autoencoder/my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp?Tautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp?@autoencoder/my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp?Vautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?@autoencoder/my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp?Vautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp?@autoencoder/my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp?Vautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp?6autoencoder/my_decoder/dense_72/BiasAdd/ReadVariableOp?5autoencoder/my_decoder/dense_72/MatMul/ReadVariableOp?6autoencoder/my_decoder/dense_74/BiasAdd/ReadVariableOp?5autoencoder/my_decoder/dense_74/MatMul/ReadVariableOp?sautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp?uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1?uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2?{autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp?uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp?wautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1?wautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2?}autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp?7autoencoder/my_encoder/conv1d_20/BiasAdd/ReadVariableOp?Cautoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp?7autoencoder/my_encoder/conv1d_21/BiasAdd/ReadVariableOp?Cautoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp?7autoencoder/my_encoder/conv1d_22/BiasAdd/ReadVariableOp?Cautoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp?7autoencoder/my_encoder/conv1d_23/BiasAdd/ReadVariableOp?Cautoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp?6autoencoder/my_encoder/dense_71/BiasAdd/ReadVariableOp?5autoencoder/my_encoder/dense_71/MatMul/ReadVariableOp?
6autoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2autoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims
ExpandDimsinput_1?autoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
Cautoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpLautoencoder_my_encoder_conv1d_20_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0z
8autoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
4autoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims_1
ExpandDimsKautoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp:value:0Aautoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
'autoencoder/my_encoder/conv1d_20/Conv1DConv2D;autoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims:output:0=autoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
/autoencoder/my_encoder/conv1d_20/Conv1D/SqueezeSqueeze0autoencoder/my_encoder/conv1d_20/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
7autoencoder/my_encoder/conv1d_20/BiasAdd/ReadVariableOpReadVariableOp@autoencoder_my_encoder_conv1d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
(autoencoder/my_encoder/conv1d_20/BiasAddBiasAdd8autoencoder/my_encoder/conv1d_20/Conv1D/Squeeze:output:0?autoencoder/my_encoder/conv1d_20/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? ?
%autoencoder/my_encoder/conv1d_20/ReluRelu1autoencoder/my_encoder/conv1d_20/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
sautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpReadVariableOp|autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
jautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
hautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/addAddV2{autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp:value:0sautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
iautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/SqrtSqrtlautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
{autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOp?autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
lautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truedivRealDivmautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/Sqrt:y:0?autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
hautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mulMul3autoencoder/my_encoder/conv1d_20/Relu:activations:0pautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOp~autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
jautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1Mul}autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1:value:0pautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOp~autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
hautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/subSub}autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2:value:0nautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
jautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1AddV2lautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul:z:0lautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
6autoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2autoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims
ExpandDimsnautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1:z:0?autoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
Cautoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpLautoencoder_my_encoder_conv1d_21_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0z
8autoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
4autoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims_1
ExpandDimsKautoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp:value:0Aautoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
'autoencoder/my_encoder/conv1d_21/Conv1DConv2D;autoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims:output:0=autoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
/autoencoder/my_encoder/conv1d_21/Conv1D/SqueezeSqueeze0autoencoder/my_encoder/conv1d_21/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
7autoencoder/my_encoder/conv1d_21/BiasAdd/ReadVariableOpReadVariableOp@autoencoder_my_encoder_conv1d_21_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
(autoencoder/my_encoder/conv1d_21/BiasAddBiasAdd8autoencoder/my_encoder/conv1d_21/Conv1D/Squeeze:output:0?autoencoder/my_encoder/conv1d_21/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? ?
%autoencoder/my_encoder/conv1d_21/ReluRelu1autoencoder/my_encoder/conv1d_21/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOp~autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
lautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
jautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/addAddV2}autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp:value:0uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
kautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/SqrtSqrtnautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
}autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOp?autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
nautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truedivRealDivoautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/Sqrt:y:0?autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
jautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mulMul3autoencoder/my_encoder/conv1d_21/Relu:activations:0rautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
wautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOp?autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
lautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1Mulautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0rautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
wautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOp?autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
jautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/subSubautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0pautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
lautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1AddV2nautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul:z:0nautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
4autoencoder/my_encoder/spatial_dropout1d_10/IdentityIdentitypautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1:z:0*
T0*,
_output_shapes
:?????????? ?
6autoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2autoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims
ExpandDims=autoencoder/my_encoder/spatial_dropout1d_10/Identity:output:0?autoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
Cautoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpLautoencoder_my_encoder_conv1d_22_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0z
8autoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
4autoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims_1
ExpandDimsKautoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp:value:0Aautoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
'autoencoder/my_encoder/conv1d_22/Conv1DConv2D;autoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims:output:0=autoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
/autoencoder/my_encoder/conv1d_22/Conv1D/SqueezeSqueeze0autoencoder/my_encoder/conv1d_22/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
7autoencoder/my_encoder/conv1d_22/BiasAdd/ReadVariableOpReadVariableOp@autoencoder_my_encoder_conv1d_22_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
(autoencoder/my_encoder/conv1d_22/BiasAddBiasAdd8autoencoder/my_encoder/conv1d_22/Conv1D/Squeeze:output:0?autoencoder/my_encoder/conv1d_22/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? ?
%autoencoder/my_encoder/conv1d_22/ReluRelu1autoencoder/my_encoder/conv1d_22/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? {
9autoencoder/my_encoder/average_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
5autoencoder/my_encoder/average_pooling1d_5/ExpandDims
ExpandDims3autoencoder/my_encoder/conv1d_22/Relu:activations:0Bautoencoder/my_encoder/average_pooling1d_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
2autoencoder/my_encoder/average_pooling1d_5/AvgPoolAvgPool>autoencoder/my_encoder/average_pooling1d_5/ExpandDims:output:0*
T0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
?
2autoencoder/my_encoder/average_pooling1d_5/SqueezeSqueeze;autoencoder/my_encoder/average_pooling1d_5/AvgPool:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
?
6autoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2autoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims
ExpandDims;autoencoder/my_encoder/average_pooling1d_5/Squeeze:output:0?autoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
Cautoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpLautoencoder_my_encoder_conv1d_23_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0z
8autoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
4autoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims_1
ExpandDimsKautoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp:value:0Aautoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
'autoencoder/my_encoder/conv1d_23/Conv1DConv2D;autoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims:output:0=autoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
/autoencoder/my_encoder/conv1d_23/Conv1D/SqueezeSqueeze0autoencoder/my_encoder/conv1d_23/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
7autoencoder/my_encoder/conv1d_23/BiasAdd/ReadVariableOpReadVariableOp@autoencoder_my_encoder_conv1d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
(autoencoder/my_encoder/conv1d_23/BiasAddBiasAdd8autoencoder/my_encoder/conv1d_23/Conv1D/Squeeze:output:0?autoencoder/my_encoder/conv1d_23/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? ?
%autoencoder/my_encoder/conv1d_23/ReluRelu1autoencoder/my_encoder/conv1d_23/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? ?
4autoencoder/my_encoder/spatial_dropout1d_11/IdentityIdentity3autoencoder/my_encoder/conv1d_23/Relu:activations:0*
T0*,
_output_shapes
:?????????? w
&autoencoder/my_encoder/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????%  ?
(autoencoder/my_encoder/flatten_5/ReshapeReshape=autoencoder/my_encoder/spatial_dropout1d_11/Identity:output:0/autoencoder/my_encoder/flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????K?
5autoencoder/my_encoder/dense_71/MatMul/ReadVariableOpReadVariableOp>autoencoder_my_encoder_dense_71_matmul_readvariableop_resource* 
_output_shapes
:
?K?*
dtype0?
&autoencoder/my_encoder/dense_71/MatMulMatMul1autoencoder/my_encoder/flatten_5/Reshape:output:0=autoencoder/my_encoder/dense_71/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6autoencoder/my_encoder/dense_71/BiasAdd/ReadVariableOpReadVariableOp?autoencoder_my_encoder_dense_71_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'autoencoder/my_encoder/dense_71/BiasAddBiasAdd0autoencoder/my_encoder/dense_71/MatMul:product:0>autoencoder/my_encoder/dense_71/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$autoencoder/my_encoder/dense_71/ReluRelu0autoencoder/my_encoder/dense_71/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
5autoencoder/my_decoder/dense_72/MatMul/ReadVariableOpReadVariableOp>autoencoder_my_decoder_dense_72_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
&autoencoder/my_decoder/dense_72/MatMulMatMul2autoencoder/my_encoder/dense_71/Relu:activations:0=autoencoder/my_decoder/dense_72/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6autoencoder/my_decoder/dense_72/BiasAdd/ReadVariableOpReadVariableOp?autoencoder_my_decoder_dense_72_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'autoencoder/my_decoder/dense_72/BiasAddBiasAdd0autoencoder/my_decoder/dense_72/MatMul:product:0>autoencoder/my_decoder/dense_72/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$autoencoder/my_decoder/dense_72/ReluRelu0autoencoder/my_decoder/dense_72/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
$autoencoder/my_decoder/reshape/ShapeShape2autoencoder/my_decoder/dense_72/Relu:activations:0*
T0*
_output_shapes
:|
2autoencoder/my_decoder/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4autoencoder/my_decoder/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4autoencoder/my_decoder/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,autoencoder/my_decoder/reshape/strided_sliceStridedSlice-autoencoder/my_decoder/reshape/Shape:output:0;autoencoder/my_decoder/reshape/strided_slice/stack:output:0=autoencoder/my_decoder/reshape/strided_slice/stack_1:output:0=autoencoder/my_decoder/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
.autoencoder/my_decoder/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?p
.autoencoder/my_decoder/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
,autoencoder/my_decoder/reshape/Reshape/shapePack5autoencoder/my_decoder/reshape/strided_slice:output:07autoencoder/my_decoder/reshape/Reshape/shape/1:output:07autoencoder/my_decoder/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
&autoencoder/my_decoder/reshape/ReshapeReshape2autoencoder/my_decoder/dense_72/Relu:activations:05autoencoder/my_decoder/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:???????????
4autoencoder/my_decoder/spatial_dropout1d_13/IdentityIdentity/autoencoder/my_decoder/reshape/Reshape:output:0*
T0*,
_output_shapes
:???????????
/autoencoder/my_decoder/conv1d_transpose_3/ShapeShape=autoencoder/my_decoder/spatial_dropout1d_13/Identity:output:0*
T0*
_output_shapes
:?
=autoencoder/my_decoder/conv1d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?autoencoder/my_decoder/conv1d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?autoencoder/my_decoder/conv1d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7autoencoder/my_decoder/conv1d_transpose_3/strided_sliceStridedSlice8autoencoder/my_decoder/conv1d_transpose_3/Shape:output:0Fautoencoder/my_decoder/conv1d_transpose_3/strided_slice/stack:output:0Hautoencoder/my_decoder/conv1d_transpose_3/strided_slice/stack_1:output:0Hautoencoder/my_decoder/conv1d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
?autoencoder/my_decoder/conv1d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Aautoencoder/my_decoder/conv1d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Aautoencoder/my_decoder/conv1d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9autoencoder/my_decoder/conv1d_transpose_3/strided_slice_1StridedSlice8autoencoder/my_decoder/conv1d_transpose_3/Shape:output:0Hautoencoder/my_decoder/conv1d_transpose_3/strided_slice_1/stack:output:0Jautoencoder/my_decoder/conv1d_transpose_3/strided_slice_1/stack_1:output:0Jautoencoder/my_decoder/conv1d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/autoencoder/my_decoder/conv1d_transpose_3/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
-autoencoder/my_decoder/conv1d_transpose_3/mulMulBautoencoder/my_decoder/conv1d_transpose_3/strided_slice_1:output:08autoencoder/my_decoder/conv1d_transpose_3/mul/y:output:0*
T0*
_output_shapes
: q
/autoencoder/my_decoder/conv1d_transpose_3/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
-autoencoder/my_decoder/conv1d_transpose_3/addAddV21autoencoder/my_decoder/conv1d_transpose_3/mul:z:08autoencoder/my_decoder/conv1d_transpose_3/add/y:output:0*
T0*
_output_shapes
: s
1autoencoder/my_decoder/conv1d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
/autoencoder/my_decoder/conv1d_transpose_3/stackPack@autoencoder/my_decoder/conv1d_transpose_3/strided_slice:output:01autoencoder/my_decoder/conv1d_transpose_3/add:z:0:autoencoder/my_decoder/conv1d_transpose_3/stack/2:output:0*
N*
T0*
_output_shapes
:?
Iautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Eautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims
ExpandDims=autoencoder/my_decoder/spatial_dropout1d_13/Identity:output:0Rautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
Vautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp_autoencoder_my_decoder_conv1d_transpose_3_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0?
Kautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Gautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1
ExpandDims^autoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Tautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
Nautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Pautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Pautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Hautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_sliceStridedSlice8autoencoder/my_decoder/conv1d_transpose_3/stack:output:0Wautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack:output:0Yautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_1:output:0Yautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Pautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Rautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Rautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Jautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1StridedSlice8autoencoder/my_decoder/conv1d_transpose_3/stack:output:0Yautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack:output:0[autoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_1:output:0[autoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
Jautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:?
Fautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Aautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/concatConcatV2Qautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice:output:0Sautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/concat/values_1:output:0Sautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/strided_slice_1:output:0Oautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
:autoencoder/my_decoder/conv1d_transpose_3/conv1d_transposeConv2DBackpropInputJautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/concat:output:0Pautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1:output:0Nautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
Bautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/SqueezeSqueezeCautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
?
@autoencoder/my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOpReadVariableOpIautoencoder_my_decoder_conv1d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
1autoencoder/my_decoder/conv1d_transpose_3/BiasAddBiasAddKautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/Squeeze:output:0Hautoencoder/my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? ?
.autoencoder/my_decoder/conv1d_transpose_3/ReluRelu:autoencoder/my_decoder/conv1d_transpose_3/BiasAdd:output:0*
T0*,
_output_shapes
:?????????? {
9autoencoder/my_decoder/average_pooling1d_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
5autoencoder/my_decoder/average_pooling1d_6/ExpandDims
ExpandDims<autoencoder/my_decoder/conv1d_transpose_3/Relu:activations:0Bautoencoder/my_decoder/average_pooling1d_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
2autoencoder/my_decoder/average_pooling1d_6/AvgPoolAvgPool>autoencoder/my_decoder/average_pooling1d_6/ExpandDims:output:0*
T0*/
_output_shapes
:?????????L *
ksize
*
paddingVALID*
strides
?
2autoencoder/my_decoder/average_pooling1d_6/SqueezeSqueeze;autoencoder/my_decoder/average_pooling1d_6/AvgPool:output:0*
T0*+
_output_shapes
:?????????L *
squeeze_dims
?
/autoencoder/my_decoder/conv1d_transpose_2/ShapeShape;autoencoder/my_decoder/average_pooling1d_6/Squeeze:output:0*
T0*
_output_shapes
:?
=autoencoder/my_decoder/conv1d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?autoencoder/my_decoder/conv1d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?autoencoder/my_decoder/conv1d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7autoencoder/my_decoder/conv1d_transpose_2/strided_sliceStridedSlice8autoencoder/my_decoder/conv1d_transpose_2/Shape:output:0Fautoencoder/my_decoder/conv1d_transpose_2/strided_slice/stack:output:0Hautoencoder/my_decoder/conv1d_transpose_2/strided_slice/stack_1:output:0Hautoencoder/my_decoder/conv1d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
?autoencoder/my_decoder/conv1d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Aautoencoder/my_decoder/conv1d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Aautoencoder/my_decoder/conv1d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9autoencoder/my_decoder/conv1d_transpose_2/strided_slice_1StridedSlice8autoencoder/my_decoder/conv1d_transpose_2/Shape:output:0Hautoencoder/my_decoder/conv1d_transpose_2/strided_slice_1/stack:output:0Jautoencoder/my_decoder/conv1d_transpose_2/strided_slice_1/stack_1:output:0Jautoencoder/my_decoder/conv1d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/autoencoder/my_decoder/conv1d_transpose_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
-autoencoder/my_decoder/conv1d_transpose_2/mulMulBautoencoder/my_decoder/conv1d_transpose_2/strided_slice_1:output:08autoencoder/my_decoder/conv1d_transpose_2/mul/y:output:0*
T0*
_output_shapes
: q
/autoencoder/my_decoder/conv1d_transpose_2/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
-autoencoder/my_decoder/conv1d_transpose_2/addAddV21autoencoder/my_decoder/conv1d_transpose_2/mul:z:08autoencoder/my_decoder/conv1d_transpose_2/add/y:output:0*
T0*
_output_shapes
: s
1autoencoder/my_decoder/conv1d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
/autoencoder/my_decoder/conv1d_transpose_2/stackPack@autoencoder/my_decoder/conv1d_transpose_2/strided_slice:output:01autoencoder/my_decoder/conv1d_transpose_2/add:z:0:autoencoder/my_decoder/conv1d_transpose_2/stack/2:output:0*
N*
T0*
_output_shapes
:?
Iautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Eautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims
ExpandDims;autoencoder/my_decoder/average_pooling1d_6/Squeeze:output:0Rautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????L ?
Vautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp_autoencoder_my_decoder_conv1d_transpose_2_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0?
Kautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Gautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1
ExpandDims^autoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Tautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Nautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Pautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Pautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Hautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_sliceStridedSlice8autoencoder/my_decoder/conv1d_transpose_2/stack:output:0Wautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack:output:0Yautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_1:output:0Yautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Pautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Rautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Rautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Jautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1StridedSlice8autoencoder/my_decoder/conv1d_transpose_2/stack:output:0Yautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack:output:0[autoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_1:output:0[autoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
Jautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:?
Fautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Aautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/concatConcatV2Qautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice:output:0Sautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/concat/values_1:output:0Sautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/strided_slice_1:output:0Oautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
:autoencoder/my_decoder/conv1d_transpose_2/conv1d_transposeConv2DBackpropInputJautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/concat:output:0Pautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1:output:0Nautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????Q *
paddingVALID*
strides
?
Bautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/SqueezeSqueezeCautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????Q *
squeeze_dims
?
@autoencoder/my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpIautoencoder_my_decoder_conv1d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
1autoencoder/my_decoder/conv1d_transpose_2/BiasAddBiasAddKautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/Squeeze:output:0Hautoencoder/my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????Q ?
.autoencoder/my_decoder/conv1d_transpose_2/ReluRelu:autoencoder/my_decoder/conv1d_transpose_2/BiasAdd:output:0*
T0*+
_output_shapes
:?????????Q ?
4autoencoder/my_decoder/spatial_dropout1d_12/IdentityIdentity<autoencoder/my_decoder/conv1d_transpose_2/Relu:activations:0*
T0*+
_output_shapes
:?????????Q ?
sautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpReadVariableOp|autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
jautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
hautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/addAddV2{autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp:value:0sautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
iautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/SqrtSqrtlautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
{autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOp?autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
lautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truedivRealDivmautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/Sqrt:y:0?autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
hautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mulMul=autoencoder/my_decoder/spatial_dropout1d_12/Identity:output:0pautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????Q ?
uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOp~autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
jautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1Mul}autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1:value:0pautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOp~autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
hautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/subSub}autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2:value:0nautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
jautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1AddV2lautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/mul:z:0lautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????Q ?
/autoencoder/my_decoder/conv1d_transpose_1/ShapeShapenautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:?
=autoencoder/my_decoder/conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?autoencoder/my_decoder/conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?autoencoder/my_decoder/conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7autoencoder/my_decoder/conv1d_transpose_1/strided_sliceStridedSlice8autoencoder/my_decoder/conv1d_transpose_1/Shape:output:0Fautoencoder/my_decoder/conv1d_transpose_1/strided_slice/stack:output:0Hautoencoder/my_decoder/conv1d_transpose_1/strided_slice/stack_1:output:0Hautoencoder/my_decoder/conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
?autoencoder/my_decoder/conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Aautoencoder/my_decoder/conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Aautoencoder/my_decoder/conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9autoencoder/my_decoder/conv1d_transpose_1/strided_slice_1StridedSlice8autoencoder/my_decoder/conv1d_transpose_1/Shape:output:0Hautoencoder/my_decoder/conv1d_transpose_1/strided_slice_1/stack:output:0Jautoencoder/my_decoder/conv1d_transpose_1/strided_slice_1/stack_1:output:0Jautoencoder/my_decoder/conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/autoencoder/my_decoder/conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
-autoencoder/my_decoder/conv1d_transpose_1/mulMulBautoencoder/my_decoder/conv1d_transpose_1/strided_slice_1:output:08autoencoder/my_decoder/conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: q
/autoencoder/my_decoder/conv1d_transpose_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
-autoencoder/my_decoder/conv1d_transpose_1/addAddV21autoencoder/my_decoder/conv1d_transpose_1/mul:z:08autoencoder/my_decoder/conv1d_transpose_1/add/y:output:0*
T0*
_output_shapes
: s
1autoencoder/my_decoder/conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
/autoencoder/my_decoder/conv1d_transpose_1/stackPack@autoencoder/my_decoder/conv1d_transpose_1/strided_slice:output:01autoencoder/my_decoder/conv1d_transpose_1/add:z:0:autoencoder/my_decoder/conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:?
Iautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Eautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDimsnautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/add_1:z:0Rautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????Q ?
Vautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp_autoencoder_my_decoder_conv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0?
Kautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Gautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDims^autoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Tautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Nautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Pautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Pautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Hautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice8autoencoder/my_decoder/conv1d_transpose_1/stack:output:0Wautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Yautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Yautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Pautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Rautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Rautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Jautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice8autoencoder/my_decoder/conv1d_transpose_1/stack:output:0Yautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0[autoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0[autoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
Jautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:?
Fautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Aautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/concatConcatV2Qautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice:output:0Sautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0Sautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:0Oautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
:autoencoder/my_decoder/conv1d_transpose_1/conv1d_transposeConv2DBackpropInputJautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/concat:output:0Pautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:0Nautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????d *
paddingVALID*
strides
?
Bautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/SqueezeSqueezeCautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????d *
squeeze_dims
?
@autoencoder/my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpIautoencoder_my_decoder_conv1d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
1autoencoder/my_decoder/conv1d_transpose_1/BiasAddBiasAddKautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/Squeeze:output:0Hautoencoder/my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d ?
.autoencoder/my_decoder/conv1d_transpose_1/ReluRelu:autoencoder/my_decoder/conv1d_transpose_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????d ?
uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOp~autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
lautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
jautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/addAddV2}autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp:value:0uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
kautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/SqrtSqrtnautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
}autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOp?autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
nautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truedivRealDivoautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/Sqrt:y:0?autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
jautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mulMul<autoencoder/my_decoder/conv1d_transpose_1/Relu:activations:0rautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????d ?
wautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOp?autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
lautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1Mulautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0rautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
wautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOp?autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
jautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/subSubautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0pautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
lautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1AddV2nautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/mul:z:0nautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????d ?
-autoencoder/my_decoder/conv1d_transpose/ShapeShapepautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1:z:0*
T0*
_output_shapes
:?
;autoencoder/my_decoder/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=autoencoder/my_decoder/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=autoencoder/my_decoder/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5autoencoder/my_decoder/conv1d_transpose/strided_sliceStridedSlice6autoencoder/my_decoder/conv1d_transpose/Shape:output:0Dautoencoder/my_decoder/conv1d_transpose/strided_slice/stack:output:0Fautoencoder/my_decoder/conv1d_transpose/strided_slice/stack_1:output:0Fautoencoder/my_decoder/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
=autoencoder/my_decoder/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
?autoencoder/my_decoder/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?autoencoder/my_decoder/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7autoencoder/my_decoder/conv1d_transpose/strided_slice_1StridedSlice6autoencoder/my_decoder/conv1d_transpose/Shape:output:0Fautoencoder/my_decoder/conv1d_transpose/strided_slice_1/stack:output:0Hautoencoder/my_decoder/conv1d_transpose/strided_slice_1/stack_1:output:0Hautoencoder/my_decoder/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-autoencoder/my_decoder/conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
+autoencoder/my_decoder/conv1d_transpose/mulMul@autoencoder/my_decoder/conv1d_transpose/strided_slice_1:output:06autoencoder/my_decoder/conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: q
/autoencoder/my_decoder/conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ?
-autoencoder/my_decoder/conv1d_transpose/stackPack>autoencoder/my_decoder/conv1d_transpose/strided_slice:output:0/autoencoder/my_decoder/conv1d_transpose/mul:z:08autoencoder/my_decoder/conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:?
Gautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
Cautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDimspautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/add_1:z:0Pautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????d ?
Tautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp]autoencoder_my_decoder_conv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0?
Iautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Eautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDims\autoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Rautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Lautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Nautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Nautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Fautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_sliceStridedSlice6autoencoder/my_decoder/conv1d_transpose/stack:output:0Uautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0Wautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0Wautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Nautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Pautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Pautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Hautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1StridedSlice6autoencoder/my_decoder/conv1d_transpose/stack:output:0Wautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Yautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Yautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
Hautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?autoencoder/my_decoder/conv1d_transpose/conv1d_transpose/concatConcatV2Oautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice:output:0Qautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/concat/values_1:output:0Qautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/strided_slice_1:output:0Mautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
8autoencoder/my_decoder/conv1d_transpose/conv1d_transposeConv2DBackpropInputHautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/concat:output:0Nautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1:output:0Lautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:?????????d *
paddingSAME*
strides
?
@autoencoder/my_decoder/conv1d_transpose/conv1d_transpose/SqueezeSqueezeAautoencoder/my_decoder/conv1d_transpose/conv1d_transpose:output:0*
T0*+
_output_shapes
:?????????d *
squeeze_dims
?
>autoencoder/my_decoder/conv1d_transpose/BiasAdd/ReadVariableOpReadVariableOpGautoencoder_my_decoder_conv1d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
/autoencoder/my_decoder/conv1d_transpose/BiasAddBiasAddIautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/Squeeze:output:0Fautoencoder/my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d ?
,autoencoder/my_decoder/conv1d_transpose/ReluRelu8autoencoder/my_decoder/conv1d_transpose/BiasAdd:output:0*
T0*+
_output_shapes
:?????????d w
&autoencoder/my_decoder/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
(autoencoder/my_decoder/flatten_6/ReshapeReshape:autoencoder/my_decoder/conv1d_transpose/Relu:activations:0/autoencoder/my_decoder/flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
5autoencoder/my_decoder/dense_74/MatMul/ReadVariableOpReadVariableOp>autoencoder_my_decoder_dense_74_matmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0?
&autoencoder/my_decoder/dense_74/MatMulMatMul1autoencoder/my_decoder/flatten_6/Reshape:output:0=autoencoder/my_decoder/dense_74/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
?
6autoencoder/my_decoder/dense_74/BiasAdd/ReadVariableOpReadVariableOp?autoencoder_my_decoder_dense_74_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype0?
'autoencoder/my_decoder/dense_74/BiasAddBiasAdd0autoencoder/my_decoder/dense_74/MatMul:product:0>autoencoder/my_decoder/dense_74/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
?
$autoencoder/my_decoder/dense_74/ReluRelu0autoencoder/my_decoder/dense_74/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
?
&autoencoder/my_decoder/reshape_1/ShapeShape2autoencoder/my_decoder/dense_74/Relu:activations:0*
T0*
_output_shapes
:~
4autoencoder/my_decoder/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6autoencoder/my_decoder/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6autoencoder/my_decoder/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.autoencoder/my_decoder/reshape_1/strided_sliceStridedSlice/autoencoder/my_decoder/reshape_1/Shape:output:0=autoencoder/my_decoder/reshape_1/strided_slice/stack:output:0?autoencoder/my_decoder/reshape_1/strided_slice/stack_1:output:0?autoencoder/my_decoder/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
0autoencoder/my_decoder/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?r
0autoencoder/my_decoder/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
.autoencoder/my_decoder/reshape_1/Reshape/shapePack7autoencoder/my_decoder/reshape_1/strided_slice:output:09autoencoder/my_decoder/reshape_1/Reshape/shape/1:output:09autoencoder/my_decoder/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
(autoencoder/my_decoder/reshape_1/ReshapeReshape2autoencoder/my_decoder/dense_74/Relu:activations:07autoencoder/my_decoder/reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:???????????
IdentityIdentity1autoencoder/my_decoder/reshape_1/Reshape:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOpt^autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpv^autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1v^autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2|^autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpv^autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpx^autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1x^autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2~^autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp?^autoencoder/my_decoder/conv1d_transpose/BiasAdd/ReadVariableOpU^autoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpA^autoencoder/my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOpW^autoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpA^autoencoder/my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOpW^autoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOpA^autoencoder/my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOpW^autoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp7^autoencoder/my_decoder/dense_72/BiasAdd/ReadVariableOp6^autoencoder/my_decoder/dense_72/MatMul/ReadVariableOp7^autoencoder/my_decoder/dense_74/BiasAdd/ReadVariableOp6^autoencoder/my_decoder/dense_74/MatMul/ReadVariableOpt^autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpv^autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1v^autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2|^autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOpv^autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpx^autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1x^autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2~^autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp8^autoencoder/my_encoder/conv1d_20/BiasAdd/ReadVariableOpD^autoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp8^autoencoder/my_encoder/conv1d_21/BiasAdd/ReadVariableOpD^autoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp8^autoencoder/my_encoder/conv1d_22/BiasAdd/ReadVariableOpD^autoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp8^autoencoder/my_encoder/conv1d_23/BiasAdd/ReadVariableOpD^autoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp7^autoencoder/my_encoder/dense_71/BiasAdd/ReadVariableOp6^autoencoder/my_encoder/dense_71/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
sautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpsautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp2?
uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_12?
uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_22?
{autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp{autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp2?
uautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpuautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp2?
wautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1wautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_12?
wautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2wautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_22?
}autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp}autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp2?
>autoencoder/my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp>autoencoder/my_decoder/conv1d_transpose/BiasAdd/ReadVariableOp2?
Tautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpTautoencoder/my_decoder/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2?
@autoencoder/my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp@autoencoder/my_decoder/conv1d_transpose_1/BiasAdd/ReadVariableOp2?
Vautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpVautoencoder/my_decoder/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp2?
@autoencoder/my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp@autoencoder/my_decoder/conv1d_transpose_2/BiasAdd/ReadVariableOp2?
Vautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOpVautoencoder/my_decoder/conv1d_transpose_2/conv1d_transpose/ExpandDims_1/ReadVariableOp2?
@autoencoder/my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp@autoencoder/my_decoder/conv1d_transpose_3/BiasAdd/ReadVariableOp2?
Vautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOpVautoencoder/my_decoder/conv1d_transpose_3/conv1d_transpose/ExpandDims_1/ReadVariableOp2p
6autoencoder/my_decoder/dense_72/BiasAdd/ReadVariableOp6autoencoder/my_decoder/dense_72/BiasAdd/ReadVariableOp2n
5autoencoder/my_decoder/dense_72/MatMul/ReadVariableOp5autoencoder/my_decoder/dense_72/MatMul/ReadVariableOp2p
6autoencoder/my_decoder/dense_74/BiasAdd/ReadVariableOp6autoencoder/my_decoder/dense_74/BiasAdd/ReadVariableOp2n
5autoencoder/my_decoder/dense_74/MatMul/ReadVariableOp5autoencoder/my_decoder/dense_74/MatMul/ReadVariableOp2?
sautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOpsautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp2?
uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_1uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_12?
uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_2uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/ReadVariableOp_22?
{autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp{autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/undo_batch_normalization/truediv/ReadVariableOp2?
uautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOpuautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp2?
wautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_1wautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_12?
wautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_2wautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/ReadVariableOp_22?
}autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp}autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/undo_batch_normalization/truediv/ReadVariableOp2r
7autoencoder/my_encoder/conv1d_20/BiasAdd/ReadVariableOp7autoencoder/my_encoder/conv1d_20/BiasAdd/ReadVariableOp2?
Cautoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOpCautoencoder/my_encoder/conv1d_20/Conv1D/ExpandDims_1/ReadVariableOp2r
7autoencoder/my_encoder/conv1d_21/BiasAdd/ReadVariableOp7autoencoder/my_encoder/conv1d_21/BiasAdd/ReadVariableOp2?
Cautoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOpCautoencoder/my_encoder/conv1d_21/Conv1D/ExpandDims_1/ReadVariableOp2r
7autoencoder/my_encoder/conv1d_22/BiasAdd/ReadVariableOp7autoencoder/my_encoder/conv1d_22/BiasAdd/ReadVariableOp2?
Cautoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOpCautoencoder/my_encoder/conv1d_22/Conv1D/ExpandDims_1/ReadVariableOp2r
7autoencoder/my_encoder/conv1d_23/BiasAdd/ReadVariableOp7autoencoder/my_encoder/conv1d_23/BiasAdd/ReadVariableOp2?
Cautoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOpCautoencoder/my_encoder/conv1d_23/Conv1D/ExpandDims_1/ReadVariableOp2p
6autoencoder/my_encoder/dense_71/BiasAdd/ReadVariableOp6autoencoder/my_encoder/dense_71/BiasAdd/ReadVariableOp2n
5autoencoder/my_encoder/dense_71/MatMul/ReadVariableOp5autoencoder/my_encoder/dense_71/MatMul/ReadVariableOp:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?

?
D__inference_dense_74_layer_call_and_return_conditional_losses_416554

inputs2
matmul_readvariableop_resource:
??
.
biasadd_readvariableop_resource:	?

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????
b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_416251

inputs

identity_1d
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????q

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_420502

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: *
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :?????????????????? s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
+__inference_my_decoder_layer_call_fn_419027
input_tensor
unknown:
??
	unknown_0:	?
	unknown_1: 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:  

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:  

unknown_15:  

unknown_16: 

unknown_17:
??


unknown_18:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_decoder_layer_call_and_return_conditional_losses_416776t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?
P
4__inference_average_pooling1d_5_layer_call_fn_419630

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_415527v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?

?
D__inference_dense_71_layer_call_and_return_conditional_losses_419731

inputs2
matmul_readvariableop_resource:
?K?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?K?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????K: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????K
 
_user_specified_nameinputs
?
?
1__inference_conv1d_transpose_layer_call_fn_419740

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv1d_transpose_layer_call_and_return_conditional_losses_416182|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_10_layer_call_fn_420202

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_420131|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?n
?
F__inference_my_encoder_layer_call_and_return_conditional_losses_416138
input_1&
conv1d_20_416076: 
conv1d_20_416078: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: &
conv1d_21_416097:  
conv1d_21_416099: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: &
conv1d_22_416119:  
conv1d_22_416121: &
conv1d_23_416125:  
conv1d_23_416127: #
dense_71_416132:
?K?
dense_71_416134:	?
identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp?!conv1d_20/StatefulPartitionedCall?!conv1d_21/StatefulPartitionedCall?!conv1d_22/StatefulPartitionedCall?!conv1d_23/StatefulPartitionedCall? dense_71/StatefulPartitionedCall?,spatial_dropout1d_10/StatefulPartitionedCall?,spatial_dropout1d_11/StatefulPartitionedCall?
!conv1d_20/StatefulPartitionedCallStatefulPartitionedCallinput_1conv1d_20_416076conv1d_20_416078*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_20_layer_call_and_return_conditional_losses_415592?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMul*conv1d_20/StatefulPartitionedCall:output:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
!conv1d_21/StatefulPartitionedCallStatefulPartitionedCall>batch_normalization/forward/undo_batch_normalization/add_1:z:0conv1d_21_416097conv1d_21_416099*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_21_layer_call_and_return_conditional_losses_415630?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMul*conv1d_21/StatefulPartitionedCall:output:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*,
_output_shapes
:?????????? ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*,
_output_shapes
:?????????? ?
,spatial_dropout1d_10/StatefulPartitionedCallStatefulPartitionedCall@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_415512?
!conv1d_22/StatefulPartitionedCallStatefulPartitionedCall5spatial_dropout1d_10/StatefulPartitionedCall:output:0conv1d_22_416119conv1d_22_416121*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_22_layer_call_and_return_conditional_losses_415669?
#average_pooling1d_5/PartitionedCallPartitionedCall*conv1d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_415527?
!conv1d_23/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_5/PartitionedCall:output:0conv1d_23_416125conv1d_23_416127*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_23_layer_call_and_return_conditional_losses_415692?
,spatial_dropout1d_11/StatefulPartitionedCallStatefulPartitionedCall*conv1d_23/StatefulPartitionedCall:output:0-^spatial_dropout1d_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_415566?
flatten_5/PartitionedCallPartitionedCall5spatial_dropout1d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????K* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_415705?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_71_416132dense_71_416134*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_71_layer_call_and_return_conditional_losses_415718y
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp"^conv1d_20/StatefulPartitionedCall"^conv1d_21/StatefulPartitionedCall"^conv1d_22/StatefulPartitionedCall"^conv1d_23/StatefulPartitionedCall!^dense_71/StatefulPartitionedCall-^spatial_dropout1d_10/StatefulPartitionedCall-^spatial_dropout1d_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2F
!conv1d_20/StatefulPartitionedCall!conv1d_20/StatefulPartitionedCall2F
!conv1d_21/StatefulPartitionedCall!conv1d_21/StatefulPartitionedCall2F
!conv1d_22/StatefulPartitionedCall!conv1d_22/StatefulPartitionedCall2F
!conv1d_23/StatefulPartitionedCall!conv1d_23/StatefulPartitionedCall2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2\
,spatial_dropout1d_10/StatefulPartitionedCall,spatial_dropout1d_10/StatefulPartitionedCall2\
,spatial_dropout1d_11/StatefulPartitionedCall,spatial_dropout1d_11/StatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?
7__inference_batch_normalization_13_layer_call_fn_420701

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_420664|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
??
?_
"__inference__traced_restore_421418
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: P
:assignvariableop_5_autoencoder_my_encoder_conv1d_20_kernel: F
8assignvariableop_6_autoencoder_my_encoder_conv1d_20_bias: x
jassignvariableop_7_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_moving_mean: |
nassignvariableop_8_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_moving_variance: r
dassignvariableop_9_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma: r
dassignvariableop_10_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta: Q
;assignvariableop_11_autoencoder_my_encoder_conv1d_21_kernel:  G
9assignvariableop_12_autoencoder_my_encoder_conv1d_21_bias: {
massignvariableop_13_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_moving_mean: 
qassignvariableop_14_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_moving_variance: u
gassignvariableop_15_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma: t
fassignvariableop_16_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta: Q
;assignvariableop_17_autoencoder_my_encoder_conv1d_22_kernel:  G
9assignvariableop_18_autoencoder_my_encoder_conv1d_22_bias: Q
;assignvariableop_19_autoencoder_my_encoder_conv1d_23_kernel:  G
9assignvariableop_20_autoencoder_my_encoder_conv1d_23_bias: N
:assignvariableop_21_autoencoder_my_encoder_dense_71_kernel:
?K?G
8assignvariableop_22_autoencoder_my_encoder_dense_71_bias:	?X
Bassignvariableop_23_autoencoder_my_decoder_conv1d_transpose_kernel:  N
@assignvariableop_24_autoencoder_my_decoder_conv1d_transpose_bias: {
massignvariableop_25_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_moving_mean: 
qassignvariableop_26_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_moving_variance: u
gassignvariableop_27_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma: t
fassignvariableop_28_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta: Z
Dassignvariableop_29_autoencoder_my_decoder_conv1d_transpose_1_kernel:  P
Bassignvariableop_30_autoencoder_my_decoder_conv1d_transpose_1_bias: y
kassignvariableop_31_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_moving_mean: }
oassignvariableop_32_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_moving_variance: s
eassignvariableop_33_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma: r
dassignvariableop_34_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta: Z
Dassignvariableop_35_autoencoder_my_decoder_conv1d_transpose_2_kernel:  P
Bassignvariableop_36_autoencoder_my_decoder_conv1d_transpose_2_bias: Z
Dassignvariableop_37_autoencoder_my_decoder_conv1d_transpose_3_kernel: P
Bassignvariableop_38_autoencoder_my_decoder_conv1d_transpose_3_bias: N
:assignvariableop_39_autoencoder_my_decoder_dense_72_kernel:
??G
8assignvariableop_40_autoencoder_my_decoder_dense_72_bias:	?N
:assignvariableop_41_autoencoder_my_decoder_dense_74_kernel:
??
G
8assignvariableop_42_autoencoder_my_decoder_dense_74_bias:	?
#
assignvariableop_43_total: #
assignvariableop_44_count: X
Bassignvariableop_45_adam_autoencoder_my_encoder_conv1d_20_kernel_m: N
@assignvariableop_46_adam_autoencoder_my_encoder_conv1d_20_bias_m: z
lassignvariableop_47_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma_m: y
kassignvariableop_48_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta_m: X
Bassignvariableop_49_adam_autoencoder_my_encoder_conv1d_21_kernel_m:  N
@assignvariableop_50_adam_autoencoder_my_encoder_conv1d_21_bias_m: |
nassignvariableop_51_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma_m: {
massignvariableop_52_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta_m: X
Bassignvariableop_53_adam_autoencoder_my_encoder_conv1d_22_kernel_m:  N
@assignvariableop_54_adam_autoencoder_my_encoder_conv1d_22_bias_m: X
Bassignvariableop_55_adam_autoencoder_my_encoder_conv1d_23_kernel_m:  N
@assignvariableop_56_adam_autoencoder_my_encoder_conv1d_23_bias_m: U
Aassignvariableop_57_adam_autoencoder_my_encoder_dense_71_kernel_m:
?K?N
?assignvariableop_58_adam_autoencoder_my_encoder_dense_71_bias_m:	?_
Iassignvariableop_59_adam_autoencoder_my_decoder_conv1d_transpose_kernel_m:  U
Gassignvariableop_60_adam_autoencoder_my_decoder_conv1d_transpose_bias_m: |
nassignvariableop_61_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma_m: {
massignvariableop_62_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta_m: a
Kassignvariableop_63_adam_autoencoder_my_decoder_conv1d_transpose_1_kernel_m:  W
Iassignvariableop_64_adam_autoencoder_my_decoder_conv1d_transpose_1_bias_m: z
lassignvariableop_65_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma_m: y
kassignvariableop_66_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta_m: a
Kassignvariableop_67_adam_autoencoder_my_decoder_conv1d_transpose_2_kernel_m:  W
Iassignvariableop_68_adam_autoencoder_my_decoder_conv1d_transpose_2_bias_m: a
Kassignvariableop_69_adam_autoencoder_my_decoder_conv1d_transpose_3_kernel_m: W
Iassignvariableop_70_adam_autoencoder_my_decoder_conv1d_transpose_3_bias_m: U
Aassignvariableop_71_adam_autoencoder_my_decoder_dense_72_kernel_m:
??N
?assignvariableop_72_adam_autoencoder_my_decoder_dense_72_bias_m:	?U
Aassignvariableop_73_adam_autoencoder_my_decoder_dense_74_kernel_m:
??
N
?assignvariableop_74_adam_autoencoder_my_decoder_dense_74_bias_m:	?
X
Bassignvariableop_75_adam_autoencoder_my_encoder_conv1d_20_kernel_v: N
@assignvariableop_76_adam_autoencoder_my_encoder_conv1d_20_bias_v: z
lassignvariableop_77_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma_v: y
kassignvariableop_78_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta_v: X
Bassignvariableop_79_adam_autoencoder_my_encoder_conv1d_21_kernel_v:  N
@assignvariableop_80_adam_autoencoder_my_encoder_conv1d_21_bias_v: |
nassignvariableop_81_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma_v: {
massignvariableop_82_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta_v: X
Bassignvariableop_83_adam_autoencoder_my_encoder_conv1d_22_kernel_v:  N
@assignvariableop_84_adam_autoencoder_my_encoder_conv1d_22_bias_v: X
Bassignvariableop_85_adam_autoencoder_my_encoder_conv1d_23_kernel_v:  N
@assignvariableop_86_adam_autoencoder_my_encoder_conv1d_23_bias_v: U
Aassignvariableop_87_adam_autoencoder_my_encoder_dense_71_kernel_v:
?K?N
?assignvariableop_88_adam_autoencoder_my_encoder_dense_71_bias_v:	?_
Iassignvariableop_89_adam_autoencoder_my_decoder_conv1d_transpose_kernel_v:  U
Gassignvariableop_90_adam_autoencoder_my_decoder_conv1d_transpose_bias_v: |
nassignvariableop_91_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma_v: {
massignvariableop_92_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta_v: a
Kassignvariableop_93_adam_autoencoder_my_decoder_conv1d_transpose_1_kernel_v:  W
Iassignvariableop_94_adam_autoencoder_my_decoder_conv1d_transpose_1_bias_v: z
lassignvariableop_95_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma_v: y
kassignvariableop_96_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta_v: a
Kassignvariableop_97_adam_autoencoder_my_decoder_conv1d_transpose_2_kernel_v:  W
Iassignvariableop_98_adam_autoencoder_my_decoder_conv1d_transpose_2_bias_v: a
Kassignvariableop_99_adam_autoencoder_my_decoder_conv1d_transpose_3_kernel_v: X
Jassignvariableop_100_adam_autoencoder_my_decoder_conv1d_transpose_3_bias_v: V
Bassignvariableop_101_adam_autoencoder_my_decoder_dense_72_kernel_v:
??O
@assignvariableop_102_adam_autoencoder_my_decoder_dense_72_bias_v:	?V
Bassignvariableop_103_adam_autoencoder_my_decoder_dense_74_kernel_v:
??
O
@assignvariableop_104_adam_autoencoder_my_decoder_dense_74_bias_v:	?

identity_106??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?0
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*?/
value?/B?/jB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:j*
dtype0*?
value?B?jB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*x
dtypesn
l2j	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_autoencoder_my_encoder_conv1d_20_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp8assignvariableop_6_autoencoder_my_encoder_conv1d_20_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpjassignvariableop_7_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_moving_meanIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpnassignvariableop_8_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_moving_varianceIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpdassignvariableop_9_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpdassignvariableop_10_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_autoencoder_my_encoder_conv1d_21_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp9assignvariableop_12_autoencoder_my_encoder_conv1d_21_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpmassignvariableop_13_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpqassignvariableop_14_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpgassignvariableop_15_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpfassignvariableop_16_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_autoencoder_my_encoder_conv1d_22_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp9assignvariableop_18_autoencoder_my_encoder_conv1d_22_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp;assignvariableop_19_autoencoder_my_encoder_conv1d_23_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp9assignvariableop_20_autoencoder_my_encoder_conv1d_23_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp:assignvariableop_21_autoencoder_my_encoder_dense_71_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp8assignvariableop_22_autoencoder_my_encoder_dense_71_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpBassignvariableop_23_autoencoder_my_decoder_conv1d_transpose_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp@assignvariableop_24_autoencoder_my_decoder_conv1d_transpose_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpmassignvariableop_25_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_moving_meanIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpqassignvariableop_26_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_moving_varianceIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpgassignvariableop_27_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gammaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpfassignvariableop_28_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_betaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpDassignvariableop_29_autoencoder_my_decoder_conv1d_transpose_1_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpBassignvariableop_30_autoencoder_my_decoder_conv1d_transpose_1_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpkassignvariableop_31_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_moving_meanIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpoassignvariableop_32_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_moving_varianceIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpeassignvariableop_33_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gammaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOpdassignvariableop_34_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_betaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpDassignvariableop_35_autoencoder_my_decoder_conv1d_transpose_2_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOpBassignvariableop_36_autoencoder_my_decoder_conv1d_transpose_2_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpDassignvariableop_37_autoencoder_my_decoder_conv1d_transpose_3_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_autoencoder_my_decoder_conv1d_transpose_3_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp:assignvariableop_39_autoencoder_my_decoder_dense_72_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp8assignvariableop_40_autoencoder_my_decoder_dense_72_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp:assignvariableop_41_autoencoder_my_decoder_dense_74_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp8assignvariableop_42_autoencoder_my_decoder_dense_74_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpassignvariableop_43_totalIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpassignvariableop_44_countIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOpBassignvariableop_45_adam_autoencoder_my_encoder_conv1d_20_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp@assignvariableop_46_adam_autoencoder_my_encoder_conv1d_20_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOplassignvariableop_47_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOpkassignvariableop_48_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOpBassignvariableop_49_adam_autoencoder_my_encoder_conv1d_21_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp@assignvariableop_50_adam_autoencoder_my_encoder_conv1d_21_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOpnassignvariableop_51_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOpmassignvariableop_52_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOpBassignvariableop_53_adam_autoencoder_my_encoder_conv1d_22_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp@assignvariableop_54_adam_autoencoder_my_encoder_conv1d_22_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOpBassignvariableop_55_adam_autoencoder_my_encoder_conv1d_23_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp@assignvariableop_56_adam_autoencoder_my_encoder_conv1d_23_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOpAassignvariableop_57_adam_autoencoder_my_encoder_dense_71_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp?assignvariableop_58_adam_autoencoder_my_encoder_dense_71_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOpIassignvariableop_59_adam_autoencoder_my_decoder_conv1d_transpose_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOpGassignvariableop_60_adam_autoencoder_my_decoder_conv1d_transpose_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOpnassignvariableop_61_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOpmassignvariableop_62_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOpKassignvariableop_63_adam_autoencoder_my_decoder_conv1d_transpose_1_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOpIassignvariableop_64_adam_autoencoder_my_decoder_conv1d_transpose_1_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOplassignvariableop_65_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOpkassignvariableop_66_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOpKassignvariableop_67_adam_autoencoder_my_decoder_conv1d_transpose_2_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOpIassignvariableop_68_adam_autoencoder_my_decoder_conv1d_transpose_2_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOpKassignvariableop_69_adam_autoencoder_my_decoder_conv1d_transpose_3_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOpIassignvariableop_70_adam_autoencoder_my_decoder_conv1d_transpose_3_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOpAassignvariableop_71_adam_autoencoder_my_decoder_dense_72_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp?assignvariableop_72_adam_autoencoder_my_decoder_dense_72_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOpAassignvariableop_73_adam_autoencoder_my_decoder_dense_74_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp?assignvariableop_74_adam_autoencoder_my_decoder_dense_74_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOpBassignvariableop_75_adam_autoencoder_my_encoder_conv1d_20_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOp@assignvariableop_76_adam_autoencoder_my_encoder_conv1d_20_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOplassignvariableop_77_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOpkassignvariableop_78_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOpBassignvariableop_79_adam_autoencoder_my_encoder_conv1d_21_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp@assignvariableop_80_adam_autoencoder_my_encoder_conv1d_21_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOpnassignvariableop_81_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOpmassignvariableop_82_adam_autoencoder_my_encoder_batch_normalization_constructed_at_top_level_forward_1_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOpBassignvariableop_83_adam_autoencoder_my_encoder_conv1d_22_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOp@assignvariableop_84_adam_autoencoder_my_encoder_conv1d_22_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_85AssignVariableOpBassignvariableop_85_adam_autoencoder_my_encoder_conv1d_23_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_86AssignVariableOp@assignvariableop_86_adam_autoencoder_my_encoder_conv1d_23_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_87AssignVariableOpAassignvariableop_87_adam_autoencoder_my_encoder_dense_71_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_88AssignVariableOp?assignvariableop_88_adam_autoencoder_my_encoder_dense_71_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_89AssignVariableOpIassignvariableop_89_adam_autoencoder_my_decoder_conv1d_transpose_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_90AssignVariableOpGassignvariableop_90_adam_autoencoder_my_decoder_conv1d_transpose_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_91AssignVariableOpnassignvariableop_91_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_gamma_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_92AssignVariableOpmassignvariableop_92_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_1_beta_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_93AssignVariableOpKassignvariableop_93_adam_autoencoder_my_decoder_conv1d_transpose_1_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_94AssignVariableOpIassignvariableop_94_adam_autoencoder_my_decoder_conv1d_transpose_1_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_95AssignVariableOplassignvariableop_95_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_gamma_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_96AssignVariableOpkassignvariableop_96_adam_autoencoder_my_decoder_batch_normalization_constructed_at_top_level_forward_beta_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_97AssignVariableOpKassignvariableop_97_adam_autoencoder_my_decoder_conv1d_transpose_2_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_98AssignVariableOpIassignvariableop_98_adam_autoencoder_my_decoder_conv1d_transpose_2_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_99AssignVariableOpKassignvariableop_99_adam_autoencoder_my_decoder_conv1d_transpose_3_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_100AssignVariableOpJassignvariableop_100_adam_autoencoder_my_decoder_conv1d_transpose_3_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_101AssignVariableOpBassignvariableop_101_adam_autoencoder_my_decoder_dense_72_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_102AssignVariableOp@assignvariableop_102_adam_autoencoder_my_decoder_dense_72_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_103AssignVariableOpBassignvariableop_103_adam_autoencoder_my_decoder_dense_74_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_104AssignVariableOp@assignvariableop_104_adam_autoencoder_my_decoder_dense_74_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_105Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_106IdentityIdentity_105:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_106Identity_106:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
n
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_419578

inputs

identity_1d
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????q

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
n
5__inference_spatial_dropout1d_12_layer_call_fn_419841

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_416278?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*=
_output_shapes+
):'???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv1d_21_layer_call_and_return_conditional_losses_415630

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
+__inference_my_encoder_layer_call_fn_418705
input_tensor
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15:
?K?

unknown_16:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_encoder_layer_call_and_return_conditional_losses_415928p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
,
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?+
?
L__inference_conv1d_transpose_layer_call_and_return_conditional_losses_416182

inputsK
5conv1d_transpose_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :?????????????????? *
squeeze_dims
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? ]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :?????????????????? n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
Q
5__inference_spatial_dropout1d_11_layer_call_fn_419668

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_415539v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
Q
5__inference_spatial_dropout1d_10_layer_call_fn_419568

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_415485v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?%
?
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_420178

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: *
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: ?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :?????????????????? s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?{
?
F__inference_my_decoder_layer_call_and_return_conditional_losses_416776
input_tensor#
dense_72_416707:
??
dense_72_416709:	?/
conv1d_transpose_3_416714: '
conv1d_transpose_3_416716: /
conv1d_transpose_2_416720:  '
conv1d_transpose_2_416722: Z
Lbatch_normalization_forward_undo_batch_normalization_readvariableop_resource: b
Tbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource: \
Nbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource: /
conv1d_transpose_1_416742:  '
conv1d_transpose_1_416744: \
Nbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource: d
Vbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource: ^
Pbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource: -
conv1d_transpose_416763:  %
conv1d_transpose_416765: #
dense_74_416769:
??

dense_74_416771:	?

identity??Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOp?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1?Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2?Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp?Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1?Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2?Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp?(conv1d_transpose/StatefulPartitionedCall?*conv1d_transpose_1/StatefulPartitionedCall?*conv1d_transpose_2/StatefulPartitionedCall?*conv1d_transpose_3/StatefulPartitionedCall? dense_72/StatefulPartitionedCall? dense_74/StatefulPartitionedCall?,spatial_dropout1d_12/StatefulPartitionedCall?,spatial_dropout1d_13/StatefulPartitionedCall?
 dense_72/StatefulPartitionedCallStatefulPartitionedCallinput_tensordense_72_416707dense_72_416709*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_72_layer_call_and_return_conditional_losses_416459?
reshape/PartitionedCallPartitionedCall)dense_72/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_416478?
,spatial_dropout1d_13/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_416438?
*conv1d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall5spatial_dropout1d_13/StatefulPartitionedCall:output:0conv1d_transpose_3_416714conv1d_transpose_3_416716*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_3_layer_call_and_return_conditional_losses_416395?
#average_pooling1d_6/PartitionedCallPartitionedCall3conv1d_transpose_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????L * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_average_pooling1d_6_layer_call_and_return_conditional_losses_416346?
*conv1d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_6/PartitionedCall:output:0conv1d_transpose_2_416720conv1d_transpose_2_416722*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_2_layer_call_and_return_conditional_losses_416327?
,spatial_dropout1d_12/StatefulPartitionedCallStatefulPartitionedCall3conv1d_transpose_2/StatefulPartitionedCall:output:0-^spatial_dropout1d_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_416278?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpReadVariableOpLbatch_normalization_forward_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0
:batch_normalization/forward/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
8batch_normalization/forward/undo_batch_normalization/addAddV2Kbatch_normalization/forward/undo_batch_normalization/ReadVariableOp:value:0Cbatch_normalization/forward/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
9batch_normalization/forward/undo_batch_normalization/SqrtSqrt<batch_normalization/forward/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpTbatch_normalization_forward_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward/undo_batch_normalization/truedivRealDiv=batch_normalization/forward/undo_batch_normalization/Sqrt:y:0Sbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
8batch_normalization/forward/undo_batch_normalization/mulMul5spatial_dropout1d_12/StatefulPartitionedCall:output:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????Q ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward/undo_batch_normalization/mul_1MulMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1:value:0@batch_normalization/forward/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2ReadVariableOpNbatch_normalization_forward_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
8batch_normalization/forward/undo_batch_normalization/subSubMbatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2:value:0>batch_normalization/forward/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
:batch_normalization/forward/undo_batch_normalization/add_1AddV2<batch_normalization/forward/undo_batch_normalization/mul:z:0<batch_normalization/forward/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????Q ?
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall>batch_normalization/forward/undo_batch_normalization/add_1:z:0conv1d_transpose_1_416742conv1d_transpose_1_416744*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_416235?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpReadVariableOpNbatch_normalization_forward_1_undo_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
:batch_normalization/forward_1/undo_batch_normalization/addAddV2Mbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp:value:0Ebatch_normalization/forward_1/undo_batch_normalization/add/y:output:0*
T0*
_output_shapes
: ?
;batch_normalization/forward_1/undo_batch_normalization/SqrtSqrt>batch_normalization/forward_1/undo_batch_normalization/add:z:0*
T0*
_output_shapes
: ?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpReadVariableOpVbatch_normalization_forward_1_undo_batch_normalization_truediv_readvariableop_resource*
_output_shapes
: *
dtype0?
>batch_normalization/forward_1/undo_batch_normalization/truedivRealDiv?batch_normalization/forward_1/undo_batch_normalization/Sqrt:y:0Ubatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
:batch_normalization/forward_1/undo_batch_normalization/mulMul3conv1d_transpose_1/StatefulPartitionedCall:output:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*+
_output_shapes
:?????????d ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<batch_normalization/forward_1/undo_batch_normalization/mul_1MulObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1:value:0Bbatch_normalization/forward_1/undo_batch_normalization/truediv:z:0*
T0*
_output_shapes
: ?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2ReadVariableOpPbatch_normalization_forward_1_undo_batch_normalization_readvariableop_2_resource*
_output_shapes
: *
dtype0?
:batch_normalization/forward_1/undo_batch_normalization/subSubObatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2:value:0@batch_normalization/forward_1/undo_batch_normalization/mul_1:z:0*
T0*
_output_shapes
: ?
<batch_normalization/forward_1/undo_batch_normalization/add_1AddV2>batch_normalization/forward_1/undo_batch_normalization/mul:z:0>batch_normalization/forward_1/undo_batch_normalization/sub:z:0*
T0*+
_output_shapes
:?????????d ?
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall@batch_normalization/forward_1/undo_batch_normalization/add_1:z:0conv1d_transpose_416763conv1d_transpose_416765*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv1d_transpose_layer_call_and_return_conditional_losses_416182?
flatten_6/PartitionedCallPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_416541?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_74_416769dense_74_416771*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_74_layer_call_and_return_conditional_losses_416554?
reshape_1/PartitionedCallPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_reshape_1_layer_call_and_return_conditional_losses_416573v
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOpD^batch_normalization/forward/undo_batch_normalization/ReadVariableOpF^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_1F^batch_normalization/forward/undo_batch_normalization/ReadVariableOp_2L^batch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpF^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOpH^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1H^batch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2N^batch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall+^conv1d_transpose_2/StatefulPartitionedCall+^conv1d_transpose_3/StatefulPartitionedCall!^dense_72/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall-^spatial_dropout1d_12/StatefulPartitionedCall-^spatial_dropout1d_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : : : 2?
Cbatch_normalization/forward/undo_batch_normalization/ReadVariableOpCbatch_normalization/forward/undo_batch_normalization/ReadVariableOp2?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_1Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_12?
Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_2Ebatch_normalization/forward/undo_batch_normalization/ReadVariableOp_22?
Kbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOpKbatch_normalization/forward/undo_batch_normalization/truediv/ReadVariableOp2?
Ebatch_normalization/forward_1/undo_batch_normalization/ReadVariableOpEbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp2?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_1Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_12?
Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_2Gbatch_normalization/forward_1/undo_batch_normalization/ReadVariableOp_22?
Mbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOpMbatch_normalization/forward_1/undo_batch_normalization/truediv/ReadVariableOp2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall2X
*conv1d_transpose_2/StatefulPartitionedCall*conv1d_transpose_2/StatefulPartitionedCall2X
*conv1d_transpose_3/StatefulPartitionedCall*conv1d_transpose_3/StatefulPartitionedCall2D
 dense_72/StatefulPartitionedCall dense_72/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2\
,spatial_dropout1d_12/StatefulPartitionedCall,spatial_dropout1d_12/StatefulPartitionedCall2\
,spatial_dropout1d_13/StatefulPartitionedCall,spatial_dropout1d_13/StatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?
?
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_420235

inputs*
cast_readvariableop_resource: ,
cast_1_readvariableop_resource: ,
cast_2_readvariableop_resource: ,
cast_3_readvariableop_resource: 
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
: *
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :?????????????????? o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????????????? : : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
k
O__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_415527

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?,
?
N__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_419831

inputsK
5conv1d_transpose_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : n
stackPackstrided_slice:output:0add:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_transpose_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
paddingVALID*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :?????????????????? *
squeeze_dims
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? ]
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :?????????????????? n
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
n
5__inference_spatial_dropout1d_11_layer_call_fn_419673

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_415566?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*=
_output_shapes+
):'???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv1d_23_layer_call_and_return_conditional_losses_419663

inputsA
+conv1d_expanddims_1_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:?????????? f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
a
E__inference_flatten_6_layer_call_and_return_conditional_losses_420049

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d :S O
+
_output_shapes
:?????????d 
 
_user_specified_nameinputs
?

?
D__inference_dense_72_layer_call_and_return_conditional_losses_420069

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_reshape_layer_call_fn_420025

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_416478e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_415485

inputs

identity_1d
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????q

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_my_encoder_layer_call_fn_418664
input_tensor
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10:  

unknown_11:  

unknown_12:  

unknown_13:  

unknown_14: 

unknown_15:
?K?

unknown_16:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_encoder_layer_call_and_return_conditional_losses_415725p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
,
_output_shapes
:??????????
&
_user_specified_nameinput_tensor
?
o
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_419600

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????o
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_my_decoder_layer_call_fn_416619
input_1
unknown:
??
	unknown_0:	?
	unknown_1: 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:  

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:  

unknown_15:  

unknown_16: 

unknown_17:
??


unknown_18:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_decoder_layer_call_and_return_conditional_losses_416576t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?

_
C__inference_reshape_layer_call_and_return_conditional_losses_416478

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_415512

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????o
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_conv1d_22_layer_call_fn_419609

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv1d_22_layer_call_and_return_conditional_losses_415669t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
+__inference_my_decoder_layer_call_fn_416864
input_1
unknown:
??
	unknown_0:	?
	unknown_1: 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:  

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:  

unknown_15:  

unknown_16: 

unknown_17:
??


unknown_18:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_my_decoder_layer_call_and_return_conditional_losses_416776t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?

a
E__inference_reshape_1_layer_call_and_return_conditional_losses_420107

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????
:P L
(
_output_shapes
:??????????

 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
@
input_15
serving_default_input_1:0??????????A
output_15
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
?
encoder
decoder
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_model
?
	conv1
	batch_n_1
	conv2
	batch_n_2
spatial_drop_1
	conv3
	avg_pool1
	conv4
spatial_drop_2
flat
out
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_model
?
	conv1
	batch_n_1
	conv2
 	batch_n_2
!spatial_drop_1
	"conv3
#	avg_pool1
	$conv4
%spatial_drop_2
&reshape1
'flat

(dense1
)dropout1

*dense2
+dropout2
,out
-reshape2
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_model
?
4iter

5beta_1

6beta_2
	7decay
8learning_rate9m?:m?=m?>m??m?@m?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Om?Pm?Qm?Rm?Um?Vm?Wm?Xm?Ym?Zm?[m?\m?]m?^m?9v?:v?=v?>v??v?@v?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Ov?Pv?Qv?Rv?Uv?Vv?Wv?Xv?Yv?Zv?[v?\v?]v?^v?"
	optimizer
?
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
O22
P23
Q24
R25
S26
T27
U28
V29
W30
X31
Y32
Z33
[34
\35
]36
^37"
trackable_list_wrapper
?
90
:1
=2
>3
?4
@5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
O16
P17
Q18
R19
U20
V21
W22
X23
Y24
Z25
[26
\27
]28
^29"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_autoencoder_layer_call_fn_417173
,__inference_autoencoder_layer_call_fn_417749
,__inference_autoencoder_layer_call_fn_417830
,__inference_autoencoder_layer_call_fn_417498?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_autoencoder_layer_call_and_return_conditional_losses_418151
G__inference_autoencoder_layer_call_and_return_conditional_losses_418540
G__inference_autoencoder_layer_call_and_return_conditional_losses_417580
G__inference_autoencoder_layer_call_and_return_conditional_losses_417662?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
!__inference__wrapped_model_415476input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
dserving_default"
signature_map
?

9kernel
:bias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
-
k	batchnorm"
_generic_user_object
?

?kernel
@bias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
-
r	batchnorm"
_generic_user_object
?
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w_random_generator
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Ekernel
Fbias
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Gkernel
Hbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Ikernel
Jbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17"
trackable_list_wrapper
?
90
:1
=2
>3
?4
@5
C6
D7
E8
F9
G10
H11
I12
J13"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_my_encoder_layer_call_fn_415764
+__inference_my_encoder_layer_call_fn_418664
+__inference_my_encoder_layer_call_fn_418705
+__inference_my_encoder_layer_call_fn_416008?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_my_encoder_layer_call_and_return_conditional_losses_418804
F__inference_my_encoder_layer_call_and_return_conditional_losses_418937
F__inference_my_encoder_layer_call_and_return_conditional_losses_416073
F__inference_my_encoder_layer_call_and_return_conditional_losses_416138?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?

Kkernel
Lbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
?	batchnorm"
_generic_user_object
?

Qkernel
Rbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
?	batchnorm"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Wkernel
Xbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Ykernel
Zbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

[kernel
\bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
A
?	keras_api
?_random_generator"
_tf_keras_layer
)
?	keras_api"
_tf_keras_layer
A
?	keras_api
?_random_generator"
_tf_keras_layer
?

]kernel
^bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
K0
L1
M2
N3
O4
P5
Q6
R7
S8
T9
U10
V11
W12
X13
Y14
Z15
[16
\17
]18
^19"
trackable_list_wrapper
?
K0
L1
O2
P3
Q4
R5
U6
V7
W8
X9
Y10
Z11
[12
\13
]14
^15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_my_decoder_layer_call_fn_416619
+__inference_my_decoder_layer_call_fn_418982
+__inference_my_decoder_layer_call_fn_419027
+__inference_my_decoder_layer_call_fn_416864?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_my_decoder_layer_call_and_return_conditional_losses_419253
F__inference_my_decoder_layer_call_and_return_conditional_losses_419513
F__inference_my_decoder_layer_call_and_return_conditional_losses_416936
F__inference_my_decoder_layer_call_and_return_conditional_losses_417008?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
=:; 2'autoencoder/my_encoder/conv1d_20/kernel
3:1 2%autoencoder/my_encoder/conv1d_20/bias
g:e  (2Wautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean
k:i  (2[autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance
_:] 2Qautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma
^:\ 2Pautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta
=:;  2'autoencoder/my_encoder/conv1d_21/kernel
3:1 2%autoencoder/my_encoder/conv1d_21/bias
i:g  (2Yautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean
m:k  (2]autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance
a:_ 2Sautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma
`:^ 2Rautoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta
=:;  2'autoencoder/my_encoder/conv1d_22/kernel
3:1 2%autoencoder/my_encoder/conv1d_22/bias
=:;  2'autoencoder/my_encoder/conv1d_23/kernel
3:1 2%autoencoder/my_encoder/conv1d_23/bias
::8
?K?2&autoencoder/my_encoder/dense_71/kernel
3:1?2$autoencoder/my_encoder/dense_71/bias
D:B  2.autoencoder/my_decoder/conv1d_transpose/kernel
::8 2,autoencoder/my_decoder/conv1d_transpose/bias
i:g  (2Yautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_mean
m:k  (2]autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/moving_variance
a:_ 2Sautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma
`:^ 2Rautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta
F:D  20autoencoder/my_decoder/conv1d_transpose_1/kernel
<:: 2.autoencoder/my_decoder/conv1d_transpose_1/bias
g:e  (2Wautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_mean
k:i  (2[autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/moving_variance
_:] 2Qautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma
^:\ 2Pautoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta
F:D  20autoencoder/my_decoder/conv1d_transpose_2/kernel
<:: 2.autoencoder/my_decoder/conv1d_transpose_2/bias
F:D 20autoencoder/my_decoder/conv1d_transpose_3/kernel
<:: 2.autoencoder/my_decoder/conv1d_transpose_3/bias
::8
??2&autoencoder/my_decoder/dense_72/kernel
3:1?2$autoencoder/my_decoder/dense_72/bias
::8
??
2&autoencoder/my_decoder/dense_74/kernel
3:1?
2$autoencoder/my_decoder/dense_74/bias
X
;0
<1
A2
B3
M4
N5
S6
T7"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_418623input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv1d_20_layer_call_fn_419522?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv1d_20_layer_call_and_return_conditional_losses_419538?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
	?axis
	=gamma
>beta
;moving_mean
<moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv1d_21_layer_call_fn_419547?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv1d_21_layer_call_and_return_conditional_losses_419563?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
	?axis
	Cgamma
Dbeta
Amoving_mean
Bmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
s	variables
ttrainable_variables
uregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
5__inference_spatial_dropout1d_10_layer_call_fn_419568
5__inference_spatial_dropout1d_10_layer_call_fn_419573?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_419578
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_419600?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv1d_22_layer_call_fn_419609?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv1d_22_layer_call_and_return_conditional_losses_419625?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
4__inference_average_pooling1d_5_layer_call_fn_419630?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_419638?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv1d_23_layer_call_fn_419647?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv1d_23_layer_call_and_return_conditional_losses_419663?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
5__inference_spatial_dropout1d_11_layer_call_fn_419668
5__inference_spatial_dropout1d_11_layer_call_fn_419673?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_419678
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_419700?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_flatten_5_layer_call_fn_419705?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_5_layer_call_and_return_conditional_losses_419711?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_71_layer_call_fn_419720?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_71_layer_call_and_return_conditional_losses_419731?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
<
;0
<1
A2
B3"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_conv1d_transpose_layer_call_fn_419740?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_conv1d_transpose_layer_call_and_return_conditional_losses_419780?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
	?axis
	Ogamma
Pbeta
Mmoving_mean
Nmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
3__inference_conv1d_transpose_1_layer_call_fn_419789?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_419831?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
	?axis
	Ugamma
Vbeta
Smoving_mean
Tmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
5__inference_spatial_dropout1d_12_layer_call_fn_419836
5__inference_spatial_dropout1d_12_layer_call_fn_419841?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_419846
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_419868?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
3__inference_conv1d_transpose_2_layer_call_fn_419877?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv1d_transpose_2_layer_call_and_return_conditional_losses_419919?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
4__inference_average_pooling1d_6_layer_call_fn_419924?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_average_pooling1d_6_layer_call_and_return_conditional_losses_419932?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
3__inference_conv1d_transpose_3_layer_call_fn_419941?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv1d_transpose_3_layer_call_and_return_conditional_losses_419983?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
5__inference_spatial_dropout1d_13_layer_call_fn_419988
5__inference_spatial_dropout1d_13_layer_call_fn_419993?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_419998
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_420020?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_reshape_layer_call_fn_420025?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_reshape_layer_call_and_return_conditional_losses_420038?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_flatten_6_layer_call_fn_420043?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_6_layer_call_and_return_conditional_losses_420049?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_72_layer_call_fn_420058?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_72_layer_call_and_return_conditional_losses_420069?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_74_layer_call_fn_420078?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_74_layer_call_and_return_conditional_losses_420089?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_reshape_1_layer_call_fn_420094?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_reshape_1_layer_call_and_return_conditional_losses_420107?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
<
M0
N1
S2
T3"
trackable_list_wrapper
?
0
1
!2
"3
#4
$5
%6
&7
'8
(9
)10
*11
+12
,13
-14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
=0
>1
;2
<3"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_10_layer_call_fn_420202
7__inference_batch_normalization_10_layer_call_fn_420215?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_420235
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_420269?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
C0
D1
A2
B3"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_11_layer_call_fn_420364
7__inference_batch_normalization_11_layer_call_fn_420377?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_420397
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_420431?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
O0
P1
M2
N3"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_12_layer_call_fn_420526
7__inference_batch_normalization_12_layer_call_fn_420539?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_420559
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_420593?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
U0
V1
S2
T3"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_13_layer_call_fn_420688
7__inference_batch_normalization_13_layer_call_fn_420701?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_420721
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_420755?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B:@ 2.Adam/autoencoder/my_encoder/conv1d_20/kernel/m
8:6 2,Adam/autoencoder/my_encoder/conv1d_20/bias/m
d:b 2XAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/m
c:a 2WAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m
B:@  2.Adam/autoencoder/my_encoder/conv1d_21/kernel/m
8:6 2,Adam/autoencoder/my_encoder/conv1d_21/bias/m
f:d 2ZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/m
e:c 2YAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m
B:@  2.Adam/autoencoder/my_encoder/conv1d_22/kernel/m
8:6 2,Adam/autoencoder/my_encoder/conv1d_22/bias/m
B:@  2.Adam/autoencoder/my_encoder/conv1d_23/kernel/m
8:6 2,Adam/autoencoder/my_encoder/conv1d_23/bias/m
?:=
?K?2-Adam/autoencoder/my_encoder/dense_71/kernel/m
8:6?2+Adam/autoencoder/my_encoder/dense_71/bias/m
I:G  25Adam/autoencoder/my_decoder/conv1d_transpose/kernel/m
?:= 23Adam/autoencoder/my_decoder/conv1d_transpose/bias/m
f:d 2ZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/m
e:c 2YAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/m
K:I  27Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/m
A:? 25Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/m
d:b 2XAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/m
c:a 2WAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/m
K:I  27Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/m
A:? 25Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/m
K:I 27Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/m
A:? 25Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/m
?:=
??2-Adam/autoencoder/my_decoder/dense_72/kernel/m
8:6?2+Adam/autoencoder/my_decoder/dense_72/bias/m
?:=
??
2-Adam/autoencoder/my_decoder/dense_74/kernel/m
8:6?
2+Adam/autoencoder/my_decoder/dense_74/bias/m
B:@ 2.Adam/autoencoder/my_encoder/conv1d_20/kernel/v
8:6 2,Adam/autoencoder/my_encoder/conv1d_20/bias/v
d:b 2XAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/v
c:a 2WAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v
B:@  2.Adam/autoencoder/my_encoder/conv1d_21/kernel/v
8:6 2,Adam/autoencoder/my_encoder/conv1d_21/bias/v
f:d 2ZAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/v
e:c 2YAdam/autoencoder/my_encoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v
B:@  2.Adam/autoencoder/my_encoder/conv1d_22/kernel/v
8:6 2,Adam/autoencoder/my_encoder/conv1d_22/bias/v
B:@  2.Adam/autoencoder/my_encoder/conv1d_23/kernel/v
8:6 2,Adam/autoencoder/my_encoder/conv1d_23/bias/v
?:=
?K?2-Adam/autoencoder/my_encoder/dense_71/kernel/v
8:6?2+Adam/autoencoder/my_encoder/dense_71/bias/v
I:G  25Adam/autoencoder/my_decoder/conv1d_transpose/kernel/v
?:= 23Adam/autoencoder/my_decoder/conv1d_transpose/bias/v
f:d 2ZAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/gamma/v
e:c 2YAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward_1/beta/v
K:I  27Adam/autoencoder/my_decoder/conv1d_transpose_1/kernel/v
A:? 25Adam/autoencoder/my_decoder/conv1d_transpose_1/bias/v
d:b 2XAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/gamma/v
c:a 2WAdam/autoencoder/my_decoder/batch_normalization_CONSTRUCTED_AT_top_level/forward/beta/v
K:I  27Adam/autoencoder/my_decoder/conv1d_transpose_2/kernel/v
A:? 25Adam/autoencoder/my_decoder/conv1d_transpose_2/bias/v
K:I 27Adam/autoencoder/my_decoder/conv1d_transpose_3/kernel/v
A:? 25Adam/autoencoder/my_decoder/conv1d_transpose_3/bias/v
?:=
??2-Adam/autoencoder/my_decoder/dense_72/kernel/v
8:6?2+Adam/autoencoder/my_decoder/dense_72/bias/v
?:=
??
2-Adam/autoencoder/my_decoder/dense_74/kernel/v
8:6?
2+Adam/autoencoder/my_decoder/dense_74/bias/v?
!__inference__wrapped_model_415476?&9:<=>;?@BCDAEFGHIJ[\YZWXTUVSQRNOPMKL]^5?2
+?(
&?#
input_1??????????
? "8?5
3
output_1'?$
output_1???????????
G__inference_autoencoder_layer_call_and_return_conditional_losses_417580?&9:<=>;?@BCDAEFGHIJ[\YZWXTUVSQRNOPMKL]^9?6
/?,
&?#
input_1??????????
p 
? "*?'
 ?
0??????????
? ?
G__inference_autoencoder_layer_call_and_return_conditional_losses_417662?&9:<=>;?@BCDAEFGHIJ[\YZWXTUVSQRNOPMKL]^9?6
/?,
&?#
input_1??????????
p
? "*?'
 ?
0??????????
? ?
G__inference_autoencoder_layer_call_and_return_conditional_losses_418151?&9:<=>;?@BCDAEFGHIJ[\YZWXTUVSQRNOPMKL]^3?0
)?&
 ?
x??????????
p 
? "*?'
 ?
0??????????
? ?
G__inference_autoencoder_layer_call_and_return_conditional_losses_418540?&9:<=>;?@BCDAEFGHIJ[\YZWXTUVSQRNOPMKL]^3?0
)?&
 ?
x??????????
p
? "*?'
 ?
0??????????
? ?
,__inference_autoencoder_layer_call_fn_417173?&9:<=>;?@BCDAEFGHIJ[\YZWXTUVSQRNOPMKL]^9?6
/?,
&?#
input_1??????????
p 
? "????????????
,__inference_autoencoder_layer_call_fn_417498?&9:<=>;?@BCDAEFGHIJ[\YZWXTUVSQRNOPMKL]^9?6
/?,
&?#
input_1??????????
p
? "????????????
,__inference_autoencoder_layer_call_fn_417749|&9:<=>;?@BCDAEFGHIJ[\YZWXTUVSQRNOPMKL]^3?0
)?&
 ?
x??????????
p 
? "????????????
,__inference_autoencoder_layer_call_fn_417830|&9:<=>;?@BCDAEFGHIJ[\YZWXTUVSQRNOPMKL]^3?0
)?&
 ?
x??????????
p
? "????????????
O__inference_average_pooling1d_5_layer_call_and_return_conditional_losses_419638?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
4__inference_average_pooling1d_5_layer_call_fn_419630wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
O__inference_average_pooling1d_6_layer_call_and_return_conditional_losses_419932?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
4__inference_average_pooling1d_6_layer_call_fn_419924wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_420235|;<>=@?=
6?3
-?*
inputs?????????????????? 
p 
? "2?/
(?%
0?????????????????? 
? ?
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_420269|;<>=@?=
6?3
-?*
inputs?????????????????? 
p
? "2?/
(?%
0?????????????????? 
? ?
7__inference_batch_normalization_10_layer_call_fn_420202o;<>=@?=
6?3
-?*
inputs?????????????????? 
p 
? "%?"?????????????????? ?
7__inference_batch_normalization_10_layer_call_fn_420215o;<>=@?=
6?3
-?*
inputs?????????????????? 
p
? "%?"?????????????????? ?
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_420397|ABDC@?=
6?3
-?*
inputs?????????????????? 
p 
? "2?/
(?%
0?????????????????? 
? ?
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_420431|ABDC@?=
6?3
-?*
inputs?????????????????? 
p
? "2?/
(?%
0?????????????????? 
? ?
7__inference_batch_normalization_11_layer_call_fn_420364oABDC@?=
6?3
-?*
inputs?????????????????? 
p 
? "%?"?????????????????? ?
7__inference_batch_normalization_11_layer_call_fn_420377oABDC@?=
6?3
-?*
inputs?????????????????? 
p
? "%?"?????????????????? ?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_420559|MNPO@?=
6?3
-?*
inputs?????????????????? 
p 
? "2?/
(?%
0?????????????????? 
? ?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_420593|MNPO@?=
6?3
-?*
inputs?????????????????? 
p
? "2?/
(?%
0?????????????????? 
? ?
7__inference_batch_normalization_12_layer_call_fn_420526oMNPO@?=
6?3
-?*
inputs?????????????????? 
p 
? "%?"?????????????????? ?
7__inference_batch_normalization_12_layer_call_fn_420539oMNPO@?=
6?3
-?*
inputs?????????????????? 
p
? "%?"?????????????????? ?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_420721|STVU@?=
6?3
-?*
inputs?????????????????? 
p 
? "2?/
(?%
0?????????????????? 
? ?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_420755|STVU@?=
6?3
-?*
inputs?????????????????? 
p
? "2?/
(?%
0?????????????????? 
? ?
7__inference_batch_normalization_13_layer_call_fn_420688oSTVU@?=
6?3
-?*
inputs?????????????????? 
p 
? "%?"?????????????????? ?
7__inference_batch_normalization_13_layer_call_fn_420701oSTVU@?=
6?3
-?*
inputs?????????????????? 
p
? "%?"?????????????????? ?
E__inference_conv1d_20_layer_call_and_return_conditional_losses_419538f9:4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0?????????? 
? ?
*__inference_conv1d_20_layer_call_fn_419522Y9:4?1
*?'
%?"
inputs??????????
? "??????????? ?
E__inference_conv1d_21_layer_call_and_return_conditional_losses_419563f?@4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
*__inference_conv1d_21_layer_call_fn_419547Y?@4?1
*?'
%?"
inputs?????????? 
? "??????????? ?
E__inference_conv1d_22_layer_call_and_return_conditional_losses_419625fEF4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
*__inference_conv1d_22_layer_call_fn_419609YEF4?1
*?'
%?"
inputs?????????? 
? "??????????? ?
E__inference_conv1d_23_layer_call_and_return_conditional_losses_419663fGH4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
*__inference_conv1d_23_layer_call_fn_419647YGH4?1
*?'
%?"
inputs?????????? 
? "??????????? ?
N__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_419831vQR<?9
2?/
-?*
inputs?????????????????? 
? "2?/
(?%
0?????????????????? 
? ?
3__inference_conv1d_transpose_1_layer_call_fn_419789iQR<?9
2?/
-?*
inputs?????????????????? 
? "%?"?????????????????? ?
N__inference_conv1d_transpose_2_layer_call_and_return_conditional_losses_419919vWX<?9
2?/
-?*
inputs?????????????????? 
? "2?/
(?%
0?????????????????? 
? ?
3__inference_conv1d_transpose_2_layer_call_fn_419877iWX<?9
2?/
-?*
inputs?????????????????? 
? "%?"?????????????????? ?
N__inference_conv1d_transpose_3_layer_call_and_return_conditional_losses_419983vYZ<?9
2?/
-?*
inputs??????????????????
? "2?/
(?%
0?????????????????? 
? ?
3__inference_conv1d_transpose_3_layer_call_fn_419941iYZ<?9
2?/
-?*
inputs??????????????????
? "%?"?????????????????? ?
L__inference_conv1d_transpose_layer_call_and_return_conditional_losses_419780vKL<?9
2?/
-?*
inputs?????????????????? 
? "2?/
(?%
0?????????????????? 
? ?
1__inference_conv1d_transpose_layer_call_fn_419740iKL<?9
2?/
-?*
inputs?????????????????? 
? "%?"?????????????????? ?
D__inference_dense_71_layer_call_and_return_conditional_losses_419731^IJ0?-
&?#
!?
inputs??????????K
? "&?#
?
0??????????
? ~
)__inference_dense_71_layer_call_fn_419720QIJ0?-
&?#
!?
inputs??????????K
? "????????????
D__inference_dense_72_layer_call_and_return_conditional_losses_420069^[\0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_72_layer_call_fn_420058Q[\0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_74_layer_call_and_return_conditional_losses_420089^]^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????

? ~
)__inference_dense_74_layer_call_fn_420078Q]^0?-
&?#
!?
inputs??????????
? "???????????
?
E__inference_flatten_5_layer_call_and_return_conditional_losses_419711^4?1
*?'
%?"
inputs?????????? 
? "&?#
?
0??????????K
? 
*__inference_flatten_5_layer_call_fn_419705Q4?1
*?'
%?"
inputs?????????? 
? "???????????K?
E__inference_flatten_6_layer_call_and_return_conditional_losses_420049]3?0
)?&
$?!
inputs?????????d 
? "&?#
?
0??????????
? ~
*__inference_flatten_6_layer_call_fn_420043P3?0
)?&
$?!
inputs?????????d 
? "????????????
F__inference_my_decoder_layer_call_and_return_conditional_losses_416936y[\YZWXTUVSQRNOPMKL]^5?2
+?(
"?
input_1??????????
p 
? "*?'
 ?
0??????????
? ?
F__inference_my_decoder_layer_call_and_return_conditional_losses_417008y[\YZWXTUVSQRNOPMKL]^5?2
+?(
"?
input_1??????????
p
? "*?'
 ?
0??????????
? ?
F__inference_my_decoder_layer_call_and_return_conditional_losses_419253~[\YZWXTUVSQRNOPMKL]^:?7
0?-
'?$
input_tensor??????????
p 
? "*?'
 ?
0??????????
? ?
F__inference_my_decoder_layer_call_and_return_conditional_losses_419513~[\YZWXTUVSQRNOPMKL]^:?7
0?-
'?$
input_tensor??????????
p
? "*?'
 ?
0??????????
? ?
+__inference_my_decoder_layer_call_fn_416619l[\YZWXTUVSQRNOPMKL]^5?2
+?(
"?
input_1??????????
p 
? "????????????
+__inference_my_decoder_layer_call_fn_416864l[\YZWXTUVSQRNOPMKL]^5?2
+?(
"?
input_1??????????
p
? "????????????
+__inference_my_decoder_layer_call_fn_418982q[\YZWXTUVSQRNOPMKL]^:?7
0?-
'?$
input_tensor??????????
p 
? "????????????
+__inference_my_decoder_layer_call_fn_419027q[\YZWXTUVSQRNOPMKL]^:?7
0?-
'?$
input_tensor??????????
p
? "????????????
F__inference_my_encoder_layer_call_and_return_conditional_losses_416073w9:<=>;?@BCDAEFGHIJ9?6
/?,
&?#
input_1??????????
p 
? "&?#
?
0??????????
? ?
F__inference_my_encoder_layer_call_and_return_conditional_losses_416138w9:<=>;?@BCDAEFGHIJ9?6
/?,
&?#
input_1??????????
p
? "&?#
?
0??????????
? ?
F__inference_my_encoder_layer_call_and_return_conditional_losses_418804|9:<=>;?@BCDAEFGHIJ>?;
4?1
+?(
input_tensor??????????
p 
? "&?#
?
0??????????
? ?
F__inference_my_encoder_layer_call_and_return_conditional_losses_418937|9:<=>;?@BCDAEFGHIJ>?;
4?1
+?(
input_tensor??????????
p
? "&?#
?
0??????????
? ?
+__inference_my_encoder_layer_call_fn_415764j9:<=>;?@BCDAEFGHIJ9?6
/?,
&?#
input_1??????????
p 
? "????????????
+__inference_my_encoder_layer_call_fn_416008j9:<=>;?@BCDAEFGHIJ9?6
/?,
&?#
input_1??????????
p
? "????????????
+__inference_my_encoder_layer_call_fn_418664o9:<=>;?@BCDAEFGHIJ>?;
4?1
+?(
input_tensor??????????
p 
? "????????????
+__inference_my_encoder_layer_call_fn_418705o9:<=>;?@BCDAEFGHIJ>?;
4?1
+?(
input_tensor??????????
p
? "????????????
E__inference_reshape_1_layer_call_and_return_conditional_losses_420107^0?-
&?#
!?
inputs??????????

? "*?'
 ?
0??????????
? 
*__inference_reshape_1_layer_call_fn_420094Q0?-
&?#
!?
inputs??????????

? "????????????
C__inference_reshape_layer_call_and_return_conditional_losses_420038^0?-
&?#
!?
inputs??????????
? "*?'
 ?
0??????????
? }
(__inference_reshape_layer_call_fn_420025Q0?-
&?#
!?
inputs??????????
? "????????????
$__inference_signature_wrapper_418623?&9:<=>;?@BCDAEFGHIJ[\YZWXTUVSQRNOPMKL]^@?=
? 
6?3
1
input_1&?#
input_1??????????"8?5
3
output_1'?$
output_1???????????
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_419578?I?F
??<
6?3
inputs'???????????????????????????
p 
? ";?8
1?.
0'???????????????????????????
? ?
P__inference_spatial_dropout1d_10_layer_call_and_return_conditional_losses_419600?I?F
??<
6?3
inputs'???????????????????????????
p
? ";?8
1?.
0'???????????????????????????
? ?
5__inference_spatial_dropout1d_10_layer_call_fn_419568{I?F
??<
6?3
inputs'???????????????????????????
p 
? ".?+'????????????????????????????
5__inference_spatial_dropout1d_10_layer_call_fn_419573{I?F
??<
6?3
inputs'???????????????????????????
p
? ".?+'????????????????????????????
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_419678?I?F
??<
6?3
inputs'???????????????????????????
p 
? ";?8
1?.
0'???????????????????????????
? ?
P__inference_spatial_dropout1d_11_layer_call_and_return_conditional_losses_419700?I?F
??<
6?3
inputs'???????????????????????????
p
? ";?8
1?.
0'???????????????????????????
? ?
5__inference_spatial_dropout1d_11_layer_call_fn_419668{I?F
??<
6?3
inputs'???????????????????????????
p 
? ".?+'????????????????????????????
5__inference_spatial_dropout1d_11_layer_call_fn_419673{I?F
??<
6?3
inputs'???????????????????????????
p
? ".?+'????????????????????????????
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_419846?I?F
??<
6?3
inputs'???????????????????????????
p 
? ";?8
1?.
0'???????????????????????????
? ?
P__inference_spatial_dropout1d_12_layer_call_and_return_conditional_losses_419868?I?F
??<
6?3
inputs'???????????????????????????
p
? ";?8
1?.
0'???????????????????????????
? ?
5__inference_spatial_dropout1d_12_layer_call_fn_419836{I?F
??<
6?3
inputs'???????????????????????????
p 
? ".?+'????????????????????????????
5__inference_spatial_dropout1d_12_layer_call_fn_419841{I?F
??<
6?3
inputs'???????????????????????????
p
? ".?+'????????????????????????????
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_419998?I?F
??<
6?3
inputs'???????????????????????????
p 
? ";?8
1?.
0'???????????????????????????
? ?
P__inference_spatial_dropout1d_13_layer_call_and_return_conditional_losses_420020?I?F
??<
6?3
inputs'???????????????????????????
p
? ";?8
1?.
0'???????????????????????????
? ?
5__inference_spatial_dropout1d_13_layer_call_fn_419988{I?F
??<
6?3
inputs'???????????????????????????
p 
? ".?+'????????????????????????????
5__inference_spatial_dropout1d_13_layer_call_fn_419993{I?F
??<
6?3
inputs'???????????????????????????
p
? ".?+'???????????????????????????