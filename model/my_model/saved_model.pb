ыб(
бы
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceѕ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeіьout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
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
executor_typestring ѕе
џ
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
э
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8оь&
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
|
SGD/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameSGD/m/dense_1/bias
u
&SGD/m/dense_1/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense_1/bias*
_output_shapes
:*
dtype0
ё
SGD/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameSGD/m/dense_1/kernel
}
(SGD/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense_1/kernel*
_output_shapes

:
*
dtype0
x
SGD/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_nameSGD/m/dense/bias
q
$SGD/m/dense/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense/bias*
_output_shapes
:
*
dtype0
ђ
SGD/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*#
shared_nameSGD/m/dense/kernel
y
&SGD/m/dense/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense/kernel*
_output_shapes

:
*
dtype0
і
SGD/m/lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<**
shared_nameSGD/m/lstm/lstm_cell/bias
Ѓ
-SGD/m/lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOpSGD/m/lstm/lstm_cell/bias*
_output_shapes
:<*
dtype0
д
%SGD/m/lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*6
shared_name'%SGD/m/lstm/lstm_cell/recurrent_kernel
Ъ
9SGD/m/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp%SGD/m/lstm/lstm_cell/recurrent_kernel*
_output_shapes

:<*
dtype0
њ
SGD/m/lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*,
shared_nameSGD/m/lstm/lstm_cell/kernel
І
/SGD/m/lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpSGD/m/lstm/lstm_cell/kernel*
_output_shapes

:<*
dtype0
љ
SGD/m/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*+
shared_nameSGD/m/embedding/embeddings
Ѕ
.SGD/m/embedding/embeddings/Read/ReadVariableOpReadVariableOpSGD/m/embedding/embeddings*
_output_shapes

:d*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
~
lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*$
shared_namelstm/lstm_cell/bias
w
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes
:<*
dtype0
џ
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*0
shared_name!lstm/lstm_cell/recurrent_kernel
Њ
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes

:<*
dtype0
є
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes

:<*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:
*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:
*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:
*
dtype0
ё
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*%
shared_nameembedding/embeddings
}
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes

:d*
dtype0
ћ
serving_default_embedding_inputPlaceholder*0
_output_shapes
:                  *
dtype0*%
shape:                  
с
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference_signature_wrapper_7226

NoOpNoOp
│3
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ь2
valueС2Bр2 B┌2
У
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
а
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
д
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
д
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias*
<
0
.1
/2
03
$4
%5
,6
-7*
<
0
.1
/2
03
$4
%5
,6
-7*
* 
░
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*

6trace_0
7trace_1* 

8trace_0
9trace_1* 
* 
o
:
_variables
;_iterations
<_learning_rate
=_index_dict
>	momentums
?_update_step_xla*

@serving_default* 

0*

0*
* 
Њ
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ftrace_0* 

Gtrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

.0
/1
02*

.0
/1
02*
* 
Ъ

Hstates
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
* 
с
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\_random_generator
]
state_size

.kernel
/recurrent_kernel
0bias*
* 

$0
%1*

$0
%1*
* 
Њ
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

ctrace_0* 

dtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

,0
-1*

,0
-1*
* 
Њ
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

jtrace_0* 

ktrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUElstm/lstm_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

l0
m1*
* 
* 
* 
* 
* 
* 
C
;0
n1
o2
p3
q4
r5
s6
t7
u8*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
n0
o1
p2
q3
r4
s5
t6
u7*
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

0*
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

.0
/1
02*

.0
/1
02*
* 
Њ
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*
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
8
{	variables
|	keras_api
	}total
	~count*
L
	variables
ђ	keras_api

Ђtotal

ѓcount
Ѓ
_fn_kwargs*
e_
VARIABLE_VALUESGD/m/embedding/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUESGD/m/lstm/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%SGD/m/lstm/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUESGD/m/lstm/lstm_cell/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/m/dense/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUESGD/m/dense/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/dense_1/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/m/dense_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 

}0
~1*

{	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ђ0
ѓ1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¤
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/bias	iterationlearning_rateSGD/m/embedding/embeddingsSGD/m/lstm/lstm_cell/kernel%SGD/m/lstm/lstm_cell/recurrent_kernelSGD/m/lstm/lstm_cell/biasSGD/m/dense/kernelSGD/m/dense/biasSGD/m/dense_1/kernelSGD/m/dense_1/biastotal_1count_1totalcountConst*#
Tin
2*
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
GPU 2J 8ѓ *&
f!R
__inference__traced_save_9196
╩
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/bias	iterationlearning_rateSGD/m/embedding/embeddingsSGD/m/lstm/lstm_cell/kernel%SGD/m/lstm/lstm_cell/recurrent_kernelSGD/m/lstm/lstm_cell/biasSGD/m/dense/kernelSGD/m/dense/biasSGD/m/dense_1/kernelSGD/m/dense_1/biastotal_1count_1totalcount*"
Tin
2*
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
GPU 2J 8ѓ *)
f$R"
 __inference__traced_restore_9271Й %
╝@
╩
'__inference_gpu_lstm_with_fallback_7965

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ъ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:гМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_d87734e5-6b59-4cc7-8434-732b2e8dbb0b*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
К

Ы
A__inference_dense_1_layer_call_and_return_conditional_losses_6653

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ,
═
while_body_6260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Љ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:         <ѓ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:         <v
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:         <o
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:         <W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         "*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :         :         : : :<:<:<:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:FB

_output_shapes

:<
 
_user_specified_namekernel:P	L

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@
<

_output_shapes
:<

_user_specified_namebias
Ў;
Й
__inference_standard_lstm_7871

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskd
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:         <^
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:         <d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         <S
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:         <Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*`
_output_shapesN
L: : : : :         :         : : :<:<:<* 
_read_only_resource_inputs
 *
bodyR
while_body_7785*
condR
while_cond_7784*_
output_shapesN
L: : : : :         :         : : :<:<:<*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_d87734e5-6b59-4cc7-8434-732b2e8dbb0b*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
╝@
╩
'__inference_gpu_lstm_with_fallback_5546

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ъ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:гМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_0d4cb08a-04e7-467e-9af9-149168d6f342*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
Ѕ,
═
while_body_8643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Љ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:         <ѓ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:         <v
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:         <o
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:         <W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         "*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :         :         : : :<:<:<:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:FB

_output_shapes

:<
 
_user_specified_namekernel:P	L

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@
<

_output_shapes
:<

_user_specified_namebias
Й╩
р
7__inference___backward_gpu_lstm_with_fallback_5547_5723
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:                  :         :         :гќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  Ѓ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:рi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:р№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:№
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      А
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:и
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:и
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:и
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:Т
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:x«
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:<┤
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:<\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:<g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:<╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Л
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:<Н
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:<{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:<g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:<c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:<"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapesш
Ы:         :         :         :         : :         :         :         :                  ::                  :         :         :г::         :         : ::::::::: : : : *=
api_implements+)lstm_0d4cb08a-04e7-467e-9af9-149168d6f342*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_5722*
go_backwards( *

time_major( :- )
'
_output_shapes
:         :1-
+
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :VR
'
_output_shapes
:         
'
_user_specified_namestrided_slice:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :                  
#
_user_specified_name	transpose:WS
+
_output_shapes
:         
$
_user_specified_name
ExpandDims:YU
+
_output_shapes
:         
&
_user_specified_nameExpandDims_1:EA

_output_shapes	
:г
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
│
┌
D__inference_sequential_layer_call_and_return_conditional_losses_7113
embedding_input 
embedding_6663:d
	lstm_7095:<
	lstm_7097:<
	lstm_7099:<

dense_7102:


dense_7104:

dense_1_7107:

dense_1_7109:
identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallЫ
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_6663*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_6187І
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0	lstm_7095	lstm_7097	lstm_7099*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_7094§
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0
dense_7102
dense_7104*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6637є
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_7107dense_1_7109*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6653w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input:$ 

_user_specified_name6663:$ 

_user_specified_name7095:$ 

_user_specified_name7097:$ 

_user_specified_name7099:$ 

_user_specified_name7102:$ 

_user_specified_name7104:$ 

_user_specified_name7107:$ 

_user_specified_name7109
К

Ы
A__inference_dense_1_layer_call_and_return_conditional_losses_9042

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Й╩
р
7__inference___backward_gpu_lstm_with_fallback_5976_6152
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:                  :         :         :гќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  Ѓ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:рi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:р№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:№
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      А
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:и
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:и
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:и
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:Т
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:x«
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:<┤
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:<\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:<g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:<╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Л
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:<Н
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:<{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:<g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:<c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:<"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapesш
Ы:         :         :         :         : :         :         :         :                  ::                  :         :         :г::         :         : ::::::::: : : : *=
api_implements+)lstm_03ce482b-5d64-4618-be4f-86bae1afe577*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_6151*
go_backwards( *

time_major( :- )
'
_output_shapes
:         :1-
+
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :VR
'
_output_shapes
:         
'
_user_specified_namestrided_slice:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :                  
#
_user_specified_name	transpose:WS
+
_output_shapes
:         
$
_user_specified_name
ExpandDims:YU
+
_output_shapes
:         
&
_user_specified_nameExpandDims_1:EA

_output_shapes	
:г
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
њ

и
while_cond_6734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_6734___redundant_placeholder02
.while_while_cond_6734___redundant_placeholder12
.while_while_cond_6734___redundant_placeholder22
.while_while_cond_6734___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
│
┌
D__inference_sequential_layer_call_and_return_conditional_losses_6660
embedding_input 
embedding_6188:d
	lstm_6620:<
	lstm_6622:<
	lstm_6624:<

dense_6638:


dense_6640:

dense_1_6654:

dense_1_6656:
identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallЫ
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_6188*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_6187І
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0	lstm_6620	lstm_6622	lstm_6624*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6619§
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0
dense_6638
dense_6640*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6637є
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6654dense_1_6656*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6653w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input:$ 

_user_specified_name6188:$ 

_user_specified_name6620:$ 

_user_specified_name6622:$ 

_user_specified_name6624:$ 

_user_specified_name6638:$ 

_user_specified_name6640:$ 

_user_specified_name6654:$ 

_user_specified_name6656
■
х
>__inference_lstm_layer_call_and_return_conditional_losses_7094

inputs.
read_readvariableop_resource:<0
read_1_readvariableop_resource:<,
read_2_readvariableop_resource:<

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         p
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:<*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:<t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:<*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:<p
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:<*
dtype0Z

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:<░
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         :         :         :         : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference_standard_lstm_6821i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
тK
Ъ
%__forward_gpu_lstm_with_fallback_8141

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_d87734e5-6b59-4cc7-8434-732b2e8dbb0b*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_7966_8142*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
њ

и
while_cond_8213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_8213___redundant_placeholder02
.while_while_cond_8213___redundant_placeholder12
.while_while_cond_8213___redundant_placeholder22
.while_while_cond_8213___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Я
Љ
$__inference_dense_layer_call_fn_9011

inputs
unknown:

	unknown_0:

identityѕбStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6637o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:$ 

_user_specified_name9005:$ 

_user_specified_name9007
Ў;
Й
__inference_standard_lstm_5881

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskd
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:         <^
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:         <d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         <S
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:         <Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*`
_output_shapesN
L: : : : :         :         : : :<:<:<* 
_read_only_resource_inputs
 *
bodyR
while_body_5795*
condR
while_cond_5794*_
output_shapesN
L: : : : :         :         : : :<:<:<*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_03ce482b-5d64-4618-be4f-86bae1afe577*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
╩
Г
#__inference_lstm_layer_call_fn_7286

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_7094o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:$ 

_user_specified_name7278:$ 

_user_specified_name7280:$ 

_user_specified_name7282
┼
|
(__inference_embedding_layer_call_fn_7233

inputs
unknown:d
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_6187|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:                  : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs:$ 

_user_specified_name7229
њ

и
while_cond_5794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_5794___redundant_placeholder02
.while_while_cond_5794___redundant_placeholder12
.while_while_cond_5794___redundant_placeholder22
.while_while_cond_5794___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
┬Г
ш
__inference__traced_save_9196
file_prefix=
+read_disablecopyonread_embedding_embeddings:d7
%read_1_disablecopyonread_dense_kernel:
1
#read_2_disablecopyonread_dense_bias:
9
'read_3_disablecopyonread_dense_1_kernel:
3
%read_4_disablecopyonread_dense_1_bias:@
.read_5_disablecopyonread_lstm_lstm_cell_kernel:<J
8read_6_disablecopyonread_lstm_lstm_cell_recurrent_kernel:<:
,read_7_disablecopyonread_lstm_lstm_cell_bias:<,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: F
4read_10_disablecopyonread_sgd_m_embedding_embeddings:dG
5read_11_disablecopyonread_sgd_m_lstm_lstm_cell_kernel:<Q
?read_12_disablecopyonread_sgd_m_lstm_lstm_cell_recurrent_kernel:<A
3read_13_disablecopyonread_sgd_m_lstm_lstm_cell_bias:<>
,read_14_disablecopyonread_sgd_m_dense_kernel:
8
*read_15_disablecopyonread_sgd_m_dense_bias:
@
.read_16_disablecopyonread_sgd_m_dense_1_kernel:
:
,read_17_disablecopyonread_sgd_m_dense_1_bias:+
!read_18_disablecopyonread_total_1: +
!read_19_disablecopyonread_count_1: )
read_20_disablecopyonread_total: )
read_21_disablecopyonread_count: 
savev2_const
identity_45ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: }
Read/DisableCopyOnReadDisableCopyOnRead+read_disablecopyonread_embedding_embeddings"/device:CPU:0*
_output_shapes
 Д
Read/ReadVariableOpReadVariableOp+read_disablecopyonread_embedding_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:da

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:dy
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 Ц
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
c

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:
w
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 Ъ
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_dense_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:
{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 Д
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_dense_1_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:
y
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 А
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_dense_1_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:ѓ
Read_5/DisableCopyOnReadDisableCopyOnRead.read_5_disablecopyonread_lstm_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 «
Read_5/ReadVariableOpReadVariableOp.read_5_disablecopyonread_lstm_lstm_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:<*
dtype0n
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:<e
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

:<ї
Read_6/DisableCopyOnReadDisableCopyOnRead8read_6_disablecopyonread_lstm_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 И
Read_6/ReadVariableOpReadVariableOp8read_6_disablecopyonread_lstm_lstm_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:<*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:<e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:<ђ
Read_7/DisableCopyOnReadDisableCopyOnRead,read_7_disablecopyonread_lstm_lstm_cell_bias"/device:CPU:0*
_output_shapes
 е
Read_7/ReadVariableOpReadVariableOp,read_7_disablecopyonread_lstm_lstm_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:<v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 џ
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 ъ
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: Ѕ
Read_10/DisableCopyOnReadDisableCopyOnRead4read_10_disablecopyonread_sgd_m_embedding_embeddings"/device:CPU:0*
_output_shapes
 Х
Read_10/ReadVariableOpReadVariableOp4read_10_disablecopyonread_sgd_m_embedding_embeddings^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:de
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:dі
Read_11/DisableCopyOnReadDisableCopyOnRead5read_11_disablecopyonread_sgd_m_lstm_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 и
Read_11/ReadVariableOpReadVariableOp5read_11_disablecopyonread_sgd_m_lstm_lstm_cell_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:<*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:<e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:<ћ
Read_12/DisableCopyOnReadDisableCopyOnRead?read_12_disablecopyonread_sgd_m_lstm_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┴
Read_12/ReadVariableOpReadVariableOp?read_12_disablecopyonread_sgd_m_lstm_lstm_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:<*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:<e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:<ѕ
Read_13/DisableCopyOnReadDisableCopyOnRead3read_13_disablecopyonread_sgd_m_lstm_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ▒
Read_13/ReadVariableOpReadVariableOp3read_13_disablecopyonread_sgd_m_lstm_lstm_cell_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:<Ђ
Read_14/DisableCopyOnReadDisableCopyOnRead,read_14_disablecopyonread_sgd_m_dense_kernel"/device:CPU:0*
_output_shapes
 «
Read_14/ReadVariableOpReadVariableOp,read_14_disablecopyonread_sgd_m_dense_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:

Read_15/DisableCopyOnReadDisableCopyOnRead*read_15_disablecopyonread_sgd_m_dense_bias"/device:CPU:0*
_output_shapes
 е
Read_15/ReadVariableOpReadVariableOp*read_15_disablecopyonread_sgd_m_dense_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:
Ѓ
Read_16/DisableCopyOnReadDisableCopyOnRead.read_16_disablecopyonread_sgd_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 ░
Read_16/ReadVariableOpReadVariableOp.read_16_disablecopyonread_sgd_m_dense_1_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:
Ђ
Read_17/DisableCopyOnReadDisableCopyOnRead,read_17_disablecopyonread_sgd_m_dense_1_bias"/device:CPU:0*
_output_shapes
 ф
Read_17/ReadVariableOpReadVariableOp,read_17_disablecopyonread_sgd_m_dense_1_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_18/DisableCopyOnReadDisableCopyOnRead!read_18_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Џ
Read_18/ReadVariableOpReadVariableOp!read_18_disablecopyonread_total_1^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_19/DisableCopyOnReadDisableCopyOnRead!read_19_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Џ
Read_19/ReadVariableOpReadVariableOp!read_19_disablecopyonread_count_1^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_20/DisableCopyOnReadDisableCopyOnReadread_20_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_20/ReadVariableOpReadVariableOpread_20_disablecopyonread_total^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_21/DisableCopyOnReadDisableCopyOnReadread_21_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_21/ReadVariableOpReadVariableOpread_21_disablecopyonread_count^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: ы	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*џ	
valueљ	BЇ	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЏ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B ═
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *%
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_44Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_45IdentityIdentity_44:output:0^NoOp*
T0*
_output_shapes
: Г	
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_45Identity_45:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_user_specified_nameembedding/embeddings:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:51
/
_user_specified_namelstm/lstm_cell/kernel:?;
9
_user_specified_name!lstm/lstm_cell/recurrent_kernel:3/
-
_user_specified_namelstm/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate::6
4
_user_specified_nameSGD/m/embedding/embeddings:;7
5
_user_specified_nameSGD/m/lstm/lstm_cell/kernel:EA
?
_user_specified_name'%SGD/m/lstm/lstm_cell/recurrent_kernel:95
3
_user_specified_nameSGD/m/lstm/lstm_cell/bias:2.
,
_user_specified_nameSGD/m/dense/kernel:0,
*
_user_specified_nameSGD/m/dense/bias:40
.
_user_specified_nameSGD/m/dense_1/kernel:2.
,
_user_specified_nameSGD/m/dense_1/bias:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
л
»
#__inference_lstm_layer_call_fn_7253
inputs_0
unknown:<
	unknown_0:<
	unknown_1:<
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_5725o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:$ 

_user_specified_name7245:$ 

_user_specified_name7247:$ 

_user_specified_name7249
тK
Ъ
%__forward_gpu_lstm_with_fallback_5722

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_0d4cb08a-04e7-467e-9af9-149168d6f342*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_5547_5723*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
╝@
╩
'__inference_gpu_lstm_with_fallback_6440

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ъ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:гМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_959a81ce-e832-464e-ad20-4b15b8910f30*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
тK
Ъ
%__forward_gpu_lstm_with_fallback_8999

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_3ded1488-f5f0-4045-ac6d-bd129e21a192*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_8824_9000*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
ч
┼
)__inference_sequential_layer_call_fn_7134
embedding_input
unknown:d
	unknown_0:<
	unknown_1:<
	unknown_2:<
	unknown_3:

	unknown_4:

	unknown_5:

	unknown_6:
identityѕбStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_6660o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input:$ 

_user_specified_name7116:$ 

_user_specified_name7118:$ 

_user_specified_name7120:$ 

_user_specified_name7122:$ 

_user_specified_name7124:$ 

_user_specified_name7126:$ 

_user_specified_name7128:$ 

_user_specified_name7130
Й╩
р
7__inference___backward_gpu_lstm_with_fallback_8395_8571
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:                  :         :         :гќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  Ѓ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:рi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:р№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:№
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      А
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:и
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:и
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:и
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:Т
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:x«
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:<┤
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:<\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:<g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:<╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Л
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:<Н
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:<{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:<g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:<c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:<"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapesш
Ы:         :         :         :         : :         :         :         :                  ::                  :         :         :г::         :         : ::::::::: : : : *=
api_implements+)lstm_02e7e6e0-9061-4972-b928-500f8ef9936f*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_8570*
go_backwards( *

time_major( :- )
'
_output_shapes
:         :1-
+
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :VR
'
_output_shapes
:         
'
_user_specified_namestrided_slice:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :                  
#
_user_specified_name	transpose:WS
+
_output_shapes
:         
$
_user_specified_name
ExpandDims:YU
+
_output_shapes
:         
&
_user_specified_nameExpandDims_1:EA

_output_shapes	
:г
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
■
х
>__inference_lstm_layer_call_and_return_conditional_losses_6619

inputs.
read_readvariableop_resource:<0
read_1_readvariableop_resource:<,
read_2_readvariableop_resource:<

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         p
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:<*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:<t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:<*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:<p
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:<*
dtype0Z

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:<░
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         :         :         :         : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference_standard_lstm_6346i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
тK
Ъ
%__forward_gpu_lstm_with_fallback_7091

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_288a6d11-6f8c-48f0-adfa-891256fa8e07*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_6916_7092*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
╝@
╩
'__inference_gpu_lstm_with_fallback_5103

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ъ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:гМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_d488af13-8684-47b6-90da-62423f0cbf17*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
Й╩
р
7__inference___backward_gpu_lstm_with_fallback_6916_7092
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:                  :         :         :гќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  Ѓ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:рi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:р№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:№
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      А
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:и
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:и
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:и
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:Т
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:x«
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:<┤
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:<\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:<g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:<╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Л
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:<Н
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:<{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:<g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:<c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:<"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapesш
Ы:         :         :         :         : :         :         :         :                  ::                  :         :         :г::         :         : ::::::::: : : : *=
api_implements+)lstm_288a6d11-6f8c-48f0-adfa-891256fa8e07*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_7091*
go_backwards( *

time_major( :- )
'
_output_shapes
:         :1-
+
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :VR
'
_output_shapes
:         
'
_user_specified_namestrided_slice:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :                  
#
_user_specified_name	transpose:WS
+
_output_shapes
:         
$
_user_specified_name
ExpandDims:YU
+
_output_shapes
:         
&
_user_specified_nameExpandDims_1:EA

_output_shapes	
:г
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
ъ
ъ
C__inference_embedding_layer_call_and_return_conditional_losses_6187

inputs'
embedding_lookup_6182:d
identityѕбembedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:                  └
embedding_lookupResourceGatherembedding_lookup_6182Cast:y:0*
Tindices0*(
_class
loc:@embedding_lookup/6182*4
_output_shapes"
 :                  *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*4
_output_shapes"
 :                  ~
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*4
_output_shapes"
 :                  5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:                  : 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs:$ 

_user_specified_name6182
С
Њ
&__inference_dense_1_layer_call_fn_9031

inputs
unknown:

	unknown_0:
identityѕбStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6653o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs:$ 

_user_specified_name9025:$ 

_user_specified_name9027
╝@
╩
'__inference_gpu_lstm_with_fallback_5975

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ъ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:гМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_03ce482b-5d64-4618-be4f-86bae1afe577*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
л
»
#__inference_lstm_layer_call_fn_7264
inputs_0
unknown:<
	unknown_0:<
	unknown_1:<
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6154o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:$ 

_user_specified_name7256:$ 

_user_specified_name7258:$ 

_user_specified_name7260
к

­
?__inference_dense_layer_call_and_return_conditional_losses_9022

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Й╩
р
7__inference___backward_gpu_lstm_with_fallback_8824_9000
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:                  :         :         :гќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  Ѓ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:рi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:р№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:№
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      А
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:и
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:и
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:и
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:Т
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:x«
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:<┤
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:<\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:<g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:<╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Л
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:<Н
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:<{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:<g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:<c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:<"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapesш
Ы:         :         :         :         : :         :         :         :                  ::                  :         :         :г::         :         : ::::::::: : : : *=
api_implements+)lstm_3ded1488-f5f0-4045-ac6d-bd129e21a192*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_8999*
go_backwards( *

time_major( :- )
'
_output_shapes
:         :1-
+
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :VR
'
_output_shapes
:         
'
_user_specified_namestrided_slice:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :                  
#
_user_specified_name	transpose:WS
+
_output_shapes
:         
$
_user_specified_name
ExpandDims:YU
+
_output_shapes
:         
&
_user_specified_nameExpandDims_1:EA

_output_shapes	
:г
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
Ў;
Й
__inference_standard_lstm_5009

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskd
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:         <^
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:         <d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         <S
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:         <Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*`
_output_shapesN
L: : : : :         :         : : :<:<:<* 
_read_only_resource_inputs
 *
bodyR
while_body_4923*
condR
while_cond_4922*_
output_shapesN
L: : : : :         :         : : :<:<:<*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_d488af13-8684-47b6-90da-62423f0cbf17*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
Ѕ,
═
while_body_8214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Љ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:         <ѓ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:         <v
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:         <o
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:         <W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         "*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :         :         : : :<:<:<:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:FB

_output_shapes

:<
 
_user_specified_namekernel:P	L

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@
<

_output_shapes
:<

_user_specified_namebias
њ

и
while_cond_8642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_8642___redundant_placeholder02
.while_while_cond_8642___redundant_placeholder12
.while_while_cond_8642___redundant_placeholder22
.while_while_cond_8642___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
њ

и
while_cond_7355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_7355___redundant_placeholder02
.while_while_cond_7355___redundant_placeholder12
.while_while_cond_7355___redundant_placeholder22
.while_while_cond_7355___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
њ

и
while_cond_7784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_7784___redundant_placeholder02
.while_while_cond_7784___redundant_placeholder12
.while_while_cond_7784___redundant_placeholder22
.while_while_cond_7784___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
тK
Ъ
%__forward_gpu_lstm_with_fallback_6616

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_959a81ce-e832-464e-ad20-4b15b8910f30*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_6441_6617*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
к

­
?__inference_dense_layer_call_and_return_conditional_losses_6637

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
¤
Й
"__inference_signature_wrapper_7226
embedding_input
unknown:d
	unknown_0:<
	unknown_1:<
	unknown_2:<
	unknown_3:

	unknown_4:

	unknown_5:

	unknown_6:
identityѕбStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference__wrapped_model_5296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input:$ 

_user_specified_name7208:$ 

_user_specified_name7210:$ 

_user_specified_name7212:$ 

_user_specified_name7214:$ 

_user_specified_name7216:$ 

_user_specified_name7218:$ 

_user_specified_name7220:$ 

_user_specified_name7222
■
х
>__inference_lstm_layer_call_and_return_conditional_losses_8573

inputs.
read_readvariableop_resource:<0
read_1_readvariableop_resource:<,
read_2_readvariableop_resource:<

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         p
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:<*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:<t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:<*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:<p
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:<*
dtype0Z

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:<░
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         :         :         :         : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference_standard_lstm_8300i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
тK
Ъ
%__forward_gpu_lstm_with_fallback_8570

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_02e7e6e0-9061-4972-b928-500f8ef9936f*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_8395_8571*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
тK
Ъ
%__forward_gpu_lstm_with_fallback_6151

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_03ce482b-5d64-4618-be4f-86bae1afe577*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_5976_6152*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
╝@
╩
'__inference_gpu_lstm_with_fallback_7536

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ъ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:гМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_5d756fc6-5685-434e-a31a-836f7a76dafb*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
Ў;
Й
__inference_standard_lstm_7442

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskd
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:         <^
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:         <d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         <S
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:         <Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*`
_output_shapesN
L: : : : :         :         : : :<:<:<* 
_read_only_resource_inputs
 *
bodyR
while_body_7356*
condR
while_cond_7355*_
output_shapesN
L: : : : :         :         : : :<:<:<*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_5d756fc6-5685-434e-a31a-836f7a76dafb*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
Ѕ,
═
while_body_7356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Љ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:         <ѓ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:         <v
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:         <o
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:         <W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         "*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :         :         : : :<:<:<:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:FB

_output_shapes

:<
 
_user_specified_namekernel:P	L

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@
<

_output_shapes
:<

_user_specified_namebias
■
х
>__inference_lstm_layer_call_and_return_conditional_losses_5725

inputs.
read_readvariableop_resource:<0
read_1_readvariableop_resource:<,
read_2_readvariableop_resource:<

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         p
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:<*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:<t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:<*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:<p
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:<*
dtype0Z

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:<░
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         :         :         :         : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference_standard_lstm_5452i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ,
═
while_body_5366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Љ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:         <ѓ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:         <v
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:         <o
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:         <W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         "*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :         :         : : :<:<:<:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:FB

_output_shapes

:<
 
_user_specified_namekernel:P	L

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@
<

_output_shapes
:<

_user_specified_namebias
тK
Ъ
%__forward_gpu_lstm_with_fallback_7712

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_5d756fc6-5685-434e-a31a-836f7a76dafb*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_7537_7713*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
Й╩
р
7__inference___backward_gpu_lstm_with_fallback_7966_8142
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:                  :         :         :гќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  Ѓ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:рi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:р№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:№
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      А
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:и
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:и
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:и
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:Т
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:x«
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:<┤
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:<\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:<g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:<╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Л
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:<Н
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:<{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:<g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:<c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:<"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapesш
Ы:         :         :         :         : :         :         :         :                  ::                  :         :         :г::         :         : ::::::::: : : : *=
api_implements+)lstm_d87734e5-6b59-4cc7-8434-732b2e8dbb0b*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_8141*
go_backwards( *

time_major( :- )
'
_output_shapes
:         :1-
+
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :VR
'
_output_shapes
:         
'
_user_specified_namestrided_slice:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :                  
#
_user_specified_name	transpose:WS
+
_output_shapes
:         
$
_user_specified_name
ExpandDims:YU
+
_output_shapes
:         
&
_user_specified_nameExpandDims_1:EA

_output_shapes	
:г
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
є
и
>__inference_lstm_layer_call_and_return_conditional_losses_7715
inputs_0.
read_readvariableop_resource:<0
read_1_readvariableop_resource:<,
read_2_readvariableop_resource:<

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         p
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:<*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:<t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:<*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:<p
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:<*
dtype0Z

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:<▓
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         :         :         :         : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference_standard_lstm_7442i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ў;
Й
__inference_standard_lstm_5452

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskd
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:         <^
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:         <d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         <S
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:         <Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*`
_output_shapesN
L: : : : :         :         : : :<:<:<* 
_read_only_resource_inputs
 *
bodyR
while_body_5366*
condR
while_cond_5365*_
output_shapesN
L: : : : :         :         : : :<:<:<*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_0d4cb08a-04e7-467e-9af9-149168d6f342*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
ч
┼
)__inference_sequential_layer_call_fn_7155
embedding_input
unknown:d
	unknown_0:<
	unknown_1:<
	unknown_2:<
	unknown_3:

	unknown_4:

	unknown_5:

	unknown_6:
identityѕбStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7113o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input:$ 

_user_specified_name7137:$ 

_user_specified_name7139:$ 

_user_specified_name7141:$ 

_user_specified_name7143:$ 

_user_specified_name7145:$ 

_user_specified_name7147:$ 

_user_specified_name7149:$ 

_user_specified_name7151
Ў;
Й
__inference_standard_lstm_8300

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskd
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:         <^
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:         <d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         <S
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:         <Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*`
_output_shapesN
L: : : : :         :         : : :<:<:<* 
_read_only_resource_inputs
 *
bodyR
while_body_8214*
condR
while_cond_8213*_
output_shapesN
L: : : : :         :         : : :<:<:<*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_02e7e6e0-9061-4972-b928-500f8ef9936f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
Й╩
р
7__inference___backward_gpu_lstm_with_fallback_7537_7713
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:                  :         :         :гќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  Ѓ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:рi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:р№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:№
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      А
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:и
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:и
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:и
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:Т
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:x«
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:<┤
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:<\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:<g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:<╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Л
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:<Н
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:<{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:<g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:<c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:<"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapesш
Ы:         :         :         :         : :         :         :         :                  ::                  :         :         :г::         :         : ::::::::: : : : *=
api_implements+)lstm_5d756fc6-5685-434e-a31a-836f7a76dafb*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_7712*
go_backwards( *

time_major( :- )
'
_output_shapes
:         :1-
+
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :VR
'
_output_shapes
:         
'
_user_specified_namestrided_slice:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :                  
#
_user_specified_name	transpose:WS
+
_output_shapes
:         
$
_user_specified_name
ExpandDims:YU
+
_output_shapes
:         
&
_user_specified_nameExpandDims_1:EA

_output_shapes	
:г
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
Ў;
Й
__inference_standard_lstm_8729

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskd
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:         <^
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:         <d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         <S
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:         <Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*`
_output_shapesN
L: : : : :         :         : : :<:<:<* 
_read_only_resource_inputs
 *
bodyR
while_body_8643*
condR
while_cond_8642*_
output_shapesN
L: : : : :         :         : : :<:<:<*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_3ded1488-f5f0-4045-ac6d-bd129e21a192*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
Ў;
Й
__inference_standard_lstm_6821

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskd
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:         <^
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:         <d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         <S
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:         <Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*`
_output_shapesN
L: : : : :         :         : : :<:<:<* 
_read_only_resource_inputs
 *
bodyR
while_body_6735*
condR
while_cond_6734*_
output_shapesN
L: : : : :         :         : : :<:<:<*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_288a6d11-6f8c-48f0-adfa-891256fa8e07*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
њ

и
while_cond_6259
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_6259___redundant_placeholder02
.while_while_cond_6259___redundant_placeholder12
.while_while_cond_6259___redundant_placeholder22
.while_while_cond_6259___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Й╩
р
7__inference___backward_gpu_lstm_with_fallback_6441_6617
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:                  :         :         :гќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  Ѓ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:рi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:р№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:№
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      А
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:и
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:и
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:и
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:Т
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:x«
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:<┤
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:<\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:<g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:<╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Л
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:<Н
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:<{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:<g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:<c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:<"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapesш
Ы:         :         :         :         : :         :         :         :                  ::                  :         :         :г::         :         : ::::::::: : : : *=
api_implements+)lstm_959a81ce-e832-464e-ad20-4b15b8910f30*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_6616*
go_backwards( *

time_major( :- )
'
_output_shapes
:         :1-
+
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :VR
'
_output_shapes
:         
'
_user_specified_namestrided_slice:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :                  
#
_user_specified_name	transpose:WS
+
_output_shapes
:         
$
_user_specified_name
ExpandDims:YU
+
_output_shapes
:         
&
_user_specified_nameExpandDims_1:EA

_output_shapes	
:г
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
њ

и
while_cond_4922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_4922___redundant_placeholder02
.while_while_cond_4922___redundant_placeholder12
.while_while_cond_4922___redundant_placeholder22
.while_while_cond_4922___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
њ

и
while_cond_5365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_5365___redundant_placeholder02
.while_while_cond_5365___redundant_placeholder12
.while_while_cond_5365___redundant_placeholder22
.while_while_cond_5365___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
яg
»
 __inference__traced_restore_9271
file_prefix7
%assignvariableop_embedding_embeddings:d1
assignvariableop_1_dense_kernel:
+
assignvariableop_2_dense_bias:
3
!assignvariableop_3_dense_1_kernel:
-
assignvariableop_4_dense_1_bias::
(assignvariableop_5_lstm_lstm_cell_kernel:<D
2assignvariableop_6_lstm_lstm_cell_recurrent_kernel:<4
&assignvariableop_7_lstm_lstm_cell_bias:<&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: @
.assignvariableop_10_sgd_m_embedding_embeddings:dA
/assignvariableop_11_sgd_m_lstm_lstm_cell_kernel:<K
9assignvariableop_12_sgd_m_lstm_lstm_cell_recurrent_kernel:<;
-assignvariableop_13_sgd_m_lstm_lstm_cell_bias:<8
&assignvariableop_14_sgd_m_dense_kernel:
2
$assignvariableop_15_sgd_m_dense_bias:
:
(assignvariableop_16_sgd_m_dense_1_kernel:
4
&assignvariableop_17_sgd_m_dense_1_bias:%
assignvariableop_18_total_1: %
assignvariableop_19_count_1: #
assignvariableop_20_total: #
assignvariableop_21_count: 
identity_23ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9З	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*џ	
valueљ	BЇ	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHъ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B Љ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_1_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_1_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_5AssignVariableOp(assignvariableop_5_lstm_lstm_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_6AssignVariableOp2assignvariableop_6_lstm_lstm_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_7AssignVariableOp&assignvariableop_7_lstm_lstm_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_10AssignVariableOp.assignvariableop_10_sgd_m_embedding_embeddingsIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_11AssignVariableOp/assignvariableop_11_sgd_m_lstm_lstm_cell_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_12AssignVariableOp9assignvariableop_12_sgd_m_lstm_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_13AssignVariableOp-assignvariableop_13_sgd_m_lstm_lstm_cell_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_14AssignVariableOp&assignvariableop_14_sgd_m_dense_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_15AssignVariableOp$assignvariableop_15_sgd_m_dense_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_16AssignVariableOp(assignvariableop_16_sgd_m_dense_1_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_17AssignVariableOp&assignvariableop_17_sgd_m_dense_1_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 │
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: Ч
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_23Identity_23:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
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
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_user_specified_nameembedding/embeddings:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:51
/
_user_specified_namelstm/lstm_cell/kernel:?;
9
_user_specified_name!lstm/lstm_cell/recurrent_kernel:3/
-
_user_specified_namelstm/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate::6
4
_user_specified_nameSGD/m/embedding/embeddings:;7
5
_user_specified_nameSGD/m/lstm/lstm_cell/kernel:EA
?
_user_specified_name'%SGD/m/lstm/lstm_cell/recurrent_kernel:95
3
_user_specified_nameSGD/m/lstm/lstm_cell/bias:2.
,
_user_specified_nameSGD/m/dense/kernel:0,
*
_user_specified_nameSGD/m/dense/bias:40
.
_user_specified_nameSGD/m/dense_1/kernel:2.
,
_user_specified_nameSGD/m/dense_1/bias:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount
╝@
╩
'__inference_gpu_lstm_with_fallback_6915

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ъ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:гМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_288a6d11-6f8c-48f0-adfa-891256fa8e07*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
Ѕ,
═
while_body_6735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Љ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:         <ѓ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:         <v
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:         <o
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:         <W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         "*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :         :         : : :<:<:<:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:FB

_output_shapes

:<
 
_user_specified_namekernel:P	L

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@
<

_output_shapes
:<

_user_specified_namebias
є
и
>__inference_lstm_layer_call_and_return_conditional_losses_8144
inputs_0.
read_readvariableop_resource:<0
read_1_readvariableop_resource:<,
read_2_readvariableop_resource:<

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         p
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:<*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:<t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:<*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:<p
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:<*
dtype0Z

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:<▓
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         :         :         :         : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference_standard_lstm_7871i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ,
═
while_body_4923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Љ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:         <ѓ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:         <v
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:         <o
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:         <W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         "*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :         :         : : :<:<:<:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:FB

_output_shapes

:<
 
_user_specified_namekernel:P	L

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@
<

_output_shapes
:<

_user_specified_namebias
Ў;
Й
__inference_standard_lstm_6346

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskd
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:         <^
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:         <d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         <S
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:         <Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*`
_output_shapesN
L: : : : :         :         : : :<:<:<* 
_read_only_resource_inputs
 *
bodyR
while_body_6260*
condR
while_cond_6259*_
output_shapesN
L: : : : :         :         : : :<:<:<*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         ]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_959a81ce-e832-464e-ad20-4b15b8910f30*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
╝@
╩
'__inference_gpu_lstm_with_fallback_8823

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ъ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:гМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_3ded1488-f5f0-4045-ac6d-bd129e21a192*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
ъ
ъ
C__inference_embedding_layer_call_and_return_conditional_losses_7242

inputs'
embedding_lookup_7237:d
identityѕбembedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:                  └
embedding_lookupResourceGatherembedding_lookup_7237Cast:y:0*
Tindices0*(
_class
loc:@embedding_lookup/7237*4
_output_shapes"
 :                  *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*4
_output_shapes"
 :                  ~
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*4
_output_shapes"
 :                  5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:                  : 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs:$ 

_user_specified_name7237
■
х
>__inference_lstm_layer_call_and_return_conditional_losses_9002

inputs.
read_readvariableop_resource:<0
read_1_readvariableop_resource:<,
read_2_readvariableop_resource:<

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         p
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:<*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:<t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:<*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:<p
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:<*
dtype0Z

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:<░
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         :         :         :         : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference_standard_lstm_8729i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╩
Г
#__inference_lstm_layer_call_fn_7275

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6619o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:$ 

_user_specified_name7267:$ 

_user_specified_name7269:$ 

_user_specified_name7271
тK
Ъ
%__forward_gpu_lstm_with_fallback_5279

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0О
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_d488af13-8684-47b6-90da-62423f0cbf17*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_5104_5280*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
■
х
>__inference_lstm_layer_call_and_return_conditional_losses_6154

inputs.
read_readvariableop_resource:<0
read_1_readvariableop_resource:<,
read_2_readvariableop_resource:<

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         p
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:<*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:<t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:<*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:<p
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:<*
dtype0Z

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:<░
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         :         :         :         : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference_standard_lstm_5881i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ,
═
while_body_5795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Љ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:         <ѓ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:         <v
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:         <o
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:         <W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         "*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :         :         : : :<:<:<:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:FB

_output_shapes

:<
 
_user_specified_namekernel:P	L

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@
<

_output_shapes
:<

_user_specified_namebias
╝@
╩
'__inference_gpu_lstm_with_fallback_8394

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:<*
dtype0*
valueB<*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:xS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ю
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:гa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:рa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:р[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ъ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:гМ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  :         :         :f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         *
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         *
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         c

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         \

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:                  :         :         :<:<:<*=
api_implements+)lstm_02e7e6e0-9061-4972-b928-500f8ef9936f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:FB

_output_shapes

:<
 
_user_specified_namekernel:PL

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:<

_user_specified_namebias
Й╩
р
7__inference___backward_gpu_lstm_with_fallback_5104_5280
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         `
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         `
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ј
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::ь¤ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         Ѓ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         ┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         І
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::ь¤є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  *
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:                  :         :         :гќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  Ѓ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::ь¤┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         Є
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::ь¤╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         ^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:гj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:рj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:рi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::В
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:г­
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:р­
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:р№
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:№
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:Ы
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      А
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Д
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Б
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:и
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:и
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:и
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:и
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:и
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:и
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:и
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:Т
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:x«
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:<┤
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:<\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:<g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:<╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Л
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:<Н
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:<{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:<g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:<c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:<"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapesш
Ы:         :         :         :         : :         :         :         :                  ::                  :         :         :г::         :         : ::::::::: : : : *=
api_implements+)lstm_d488af13-8684-47b6-90da-62423f0cbf17*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_5279*
go_backwards( *

time_major( :- )
'
_output_shapes
:         :1-
+
_output_shapes
:         :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :VR
'
_output_shapes
:         
'
_user_specified_namestrided_slice:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:UQ
+
_output_shapes
:         
"
_user_specified_name
CudnnRNN:^Z
4
_output_shapes"
 :                  
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :                  
#
_user_specified_name	transpose:WS
+
_output_shapes
:         
$
_user_specified_name
ExpandDims:YU
+
_output_shapes
:         
&
_user_specified_nameExpandDims_1:EA

_output_shapes	
:г
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:OK
'
_output_shapes
:         
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
▓>
Ќ
__inference__wrapped_model_5296
embedding_input<
*sequential_embedding_embedding_lookup_4852:d>
,sequential_lstm_read_readvariableop_resource:<@
.sequential_lstm_read_1_readvariableop_resource:<<
.sequential_lstm_read_2_readvariableop_resource:<A
/sequential_dense_matmul_readvariableop_resource:
>
0sequential_dense_biasadd_readvariableop_resource:
C
1sequential_dense_1_matmul_readvariableop_resource:
@
2sequential_dense_1_biasadd_readvariableop_resource:
identityѕб'sequential/dense/BiasAdd/ReadVariableOpб&sequential/dense/MatMul/ReadVariableOpб)sequential/dense_1/BiasAdd/ReadVariableOpб(sequential/dense_1/MatMul/ReadVariableOpб%sequential/embedding/embedding_lookupб#sequential/lstm/Read/ReadVariableOpб%sequential/lstm/Read_1/ReadVariableOpб%sequential/lstm/Read_2/ReadVariableOp|
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*0
_output_shapes
:                  ћ
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_4852sequential/embedding/Cast:y:0*
Tindices0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/4852*4
_output_shapes"
 :                  *
dtype0Е
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*4
_output_shapes"
 :                  і
sequential/lstm/ShapeShape7sequential/embedding/embedding_lookup/Identity:output:0*
T0*
_output_shapes
::ь¤m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:         b
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:         љ
#sequential/lstm/Read/ReadVariableOpReadVariableOp,sequential_lstm_read_readvariableop_resource*
_output_shapes

:<*
dtype0z
sequential/lstm/IdentityIdentity+sequential/lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes

:<ћ
%sequential/lstm/Read_1/ReadVariableOpReadVariableOp.sequential_lstm_read_1_readvariableop_resource*
_output_shapes

:<*
dtype0~
sequential/lstm/Identity_1Identity-sequential/lstm/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes

:<љ
%sequential/lstm/Read_2/ReadVariableOpReadVariableOp.sequential_lstm_read_2_readvariableop_resource*
_output_shapes
:<*
dtype0z
sequential/lstm/Identity_2Identity-sequential/lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:<┴
sequential/lstm/PartitionedCallPartitionedCall7sequential/embedding/embedding_lookup/Identity:output:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0!sequential/lstm/Identity:output:0#sequential/lstm/Identity_1:output:0#sequential/lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         :         :         :         : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference_standard_lstm_5009ќ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Г
sequential/dense/MatMulMatMul(sequential/lstm/PartitionedCall:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
ћ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Е
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         
џ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0г
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ў
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         |
sequential/dense_1/SigmoidSigmoid#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         m
IdentityIdentitysequential/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Ж
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup$^sequential/lstm/Read/ReadVariableOp&^sequential/lstm/Read_1/ReadVariableOp&^sequential/lstm/Read_2/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2J
#sequential/lstm/Read/ReadVariableOp#sequential/lstm/Read/ReadVariableOp2N
%sequential/lstm/Read_1/ReadVariableOp%sequential/lstm/Read_1/ReadVariableOp2N
%sequential/lstm/Read_2/ReadVariableOp%sequential/lstm/Read_2/ReadVariableOp:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input:$ 

_user_specified_name4852:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ,
═
while_body_7785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Љ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:         <ѓ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:         <v
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:         <o
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:         <W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         _
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         "*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :         :         : : :<:<:<:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:FB

_output_shapes

:<
 
_user_specified_namekernel:P	L

_output_shapes

:<
*
_user_specified_namerecurrent_kernel:@
<

_output_shapes
:<

_user_specified_namebias"ДL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*├
serving_default»
T
embedding_inputA
!serving_default_embedding_input:0                  ;
dense_10
StatefulPartitionedCall:0         tensorflow/serving/predict:щћ
ѓ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
х
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
╗
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
╗
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
X
0
.1
/2
03
$4
%5
,6
-7"
trackable_list_wrapper
X
0
.1
/2
03
$4
%5
,6
-7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
┼
6trace_0
7trace_12ј
)__inference_sequential_layer_call_fn_7134
)__inference_sequential_layer_call_fn_7155х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z6trace_0z7trace_1
ч
8trace_0
9trace_12─
D__inference_sequential_layer_call_and_return_conditional_losses_6660
D__inference_sequential_layer_call_and_return_conditional_losses_7113х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z8trace_0z9trace_1
мB¤
__inference__wrapped_model_5296embedding_input"ў
Љ▓Ї
FullArgSpec
argsџ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
і
:
_variables
;_iterations
<_learning_rate
=_index_dict
>	momentums
?_update_step_xla"
experimentalOptimizer
,
@serving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Р
Ftrace_02┼
(__inference_embedding_layer_call_fn_7233ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zFtrace_0
§
Gtrace_02Я
C__inference_embedding_layer_call_and_return_conditional_losses_7242ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zGtrace_0
&:$d2embedding/embeddings
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

Hstates
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╠
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32р
#__inference_lstm_layer_call_fn_7253
#__inference_lstm_layer_call_fn_7264
#__inference_lstm_layer_call_fn_7275
#__inference_lstm_layer_call_fn_7286╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
И
Rtrace_0
Strace_1
Ttrace_2
Utrace_32═
>__inference_lstm_layer_call_and_return_conditional_losses_7715
>__inference_lstm_layer_call_and_return_conditional_losses_8144
>__inference_lstm_layer_call_and_return_conditional_losses_8573
>__inference_lstm_layer_call_and_return_conditional_losses_9002╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
"
_generic_user_object
Э
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\_random_generator
]
state_size

.kernel
/recurrent_kernel
0bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
я
ctrace_02┴
$__inference_dense_layer_call_fn_9011ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zctrace_0
щ
dtrace_02▄
?__inference_dense_layer_call_and_return_conditional_losses_9022ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zdtrace_0
:
2dense/kernel
:
2
dense/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
Я
jtrace_02├
&__inference_dense_1_layer_call_fn_9031ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zjtrace_0
ч
ktrace_02я
A__inference_dense_1_layer_call_and_return_conditional_losses_9042ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zktrace_0
 :
2dense_1/kernel
:2dense_1/bias
':%<2lstm/lstm_cell/kernel
1:/<2lstm/lstm_cell/recurrent_kernel
!:<2lstm/lstm_cell/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
­Bь
)__inference_sequential_layer_call_fn_7134embedding_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­Bь
)__inference_sequential_layer_call_fn_7155embedding_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ІBѕ
D__inference_sequential_layer_call_and_return_conditional_losses_6660embedding_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ІBѕ
D__inference_sequential_layer_call_and_return_conditional_losses_7113embedding_input"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
_
;0
n1
o2
p3
q4
r5
s6
t7
u8"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
X
n0
o1
p2
q3
r4
s5
t6
u7"
trackable_list_wrapper
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
яB█
"__inference_signature_wrapper_7226embedding_input"А
џ▓ќ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 $

kwonlyargsџ
jembedding_input
kwonlydefaults
 
annotationsф *
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
мB¤
(__inference_embedding_layer_call_fn_7233inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_embedding_layer_call_and_return_conditional_losses_7242inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЗBы
#__inference_lstm_layer_call_fn_7253inputs_0"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
#__inference_lstm_layer_call_fn_7264inputs_0"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЫB№
#__inference_lstm_layer_call_fn_7275inputs"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЫB№
#__inference_lstm_layer_call_fn_7286inputs"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
>__inference_lstm_layer_call_and_return_conditional_losses_7715inputs_0"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
>__inference_lstm_layer_call_and_return_conditional_losses_8144inputs_0"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЇBі
>__inference_lstm_layer_call_and_return_conditional_losses_8573inputs"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЇBі
>__inference_lstm_layer_call_and_return_conditional_losses_9002inputs"й
Х▓▓
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
╣2Х│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╣2Х│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
"
_generic_user_object
 "
trackable_list_wrapper
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
╬B╦
$__inference_dense_layer_call_fn_9011inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
жBТ
?__inference_dense_layer_call_and_return_conditional_losses_9022inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
лB═
&__inference_dense_1_layer_call_fn_9031inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
вBУ
A__inference_dense_1_layer_call_and_return_conditional_losses_9042inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
N
{	variables
|	keras_api
	}total
	~count"
_tf_keras_metric
b
	variables
ђ	keras_api

Ђtotal

ѓcount
Ѓ
_fn_kwargs"
_tf_keras_metric
*:(d2SGD/m/embedding/embeddings
+:)<2SGD/m/lstm/lstm_cell/kernel
5:3<2%SGD/m/lstm/lstm_cell/recurrent_kernel
%:#<2SGD/m/lstm/lstm_cell/bias
": 
2SGD/m/dense/kernel
:
2SGD/m/dense/bias
$:"
2SGD/m/dense_1/kernel
:2SGD/m/dense_1/bias
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
.
}0
~1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
:  (2total
:  (2count
0
Ђ0
ѓ1"
trackable_list_wrapper
-
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperц
__inference__wrapped_model_5296ђ./0$%,-Aб>
7б4
2і/
embedding_input                  
ф "1ф.
,
dense_1!і
dense_1         е
A__inference_dense_1_layer_call_and_return_conditional_losses_9042c,-/б,
%б"
 і
inputs         

ф ",б)
"і
tensor_0         
џ ѓ
&__inference_dense_1_layer_call_fn_9031X,-/б,
%б"
 і
inputs         

ф "!і
unknown         д
?__inference_dense_layer_call_and_return_conditional_losses_9022c$%/б,
%б"
 і
inputs         
ф ",б)
"і
tensor_0         

џ ђ
$__inference_dense_layer_call_fn_9011X$%/б,
%б"
 і
inputs         
ф "!і
unknown         
┐
C__inference_embedding_layer_call_and_return_conditional_losses_7242x8б5
.б+
)і&
inputs                  
ф "9б6
/і,
tensor_0                  
џ Ў
(__inference_embedding_layer_call_fn_7233m8б5
.б+
)і&
inputs                  
ф ".і+
unknown                  К
>__inference_lstm_layer_call_and_return_conditional_losses_7715ё./0OбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф ",б)
"і
tensor_0         
џ К
>__inference_lstm_layer_call_and_return_conditional_losses_8144ё./0OбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф ",б)
"і
tensor_0         
џ ┐
>__inference_lstm_layer_call_and_return_conditional_losses_8573}./0HбE
>б;
-і*
inputs                  

 
p

 
ф ",б)
"і
tensor_0         
џ ┐
>__inference_lstm_layer_call_and_return_conditional_losses_9002}./0HбE
>б;
-і*
inputs                  

 
p 

 
ф ",б)
"і
tensor_0         
џ а
#__inference_lstm_layer_call_fn_7253y./0OбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф "!і
unknown         а
#__inference_lstm_layer_call_fn_7264y./0OбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф "!і
unknown         Ў
#__inference_lstm_layer_call_fn_7275r./0HбE
>б;
-і*
inputs                  

 
p

 
ф "!і
unknown         Ў
#__inference_lstm_layer_call_fn_7286r./0HбE
>б;
-і*
inputs                  

 
p 

 
ф "!і
unknown         ╠
D__inference_sequential_layer_call_and_return_conditional_losses_6660Ѓ./0$%,-IбF
?б<
2і/
embedding_input                  
p

 
ф ",б)
"і
tensor_0         
џ ╠
D__inference_sequential_layer_call_and_return_conditional_losses_7113Ѓ./0$%,-IбF
?б<
2і/
embedding_input                  
p 

 
ф ",б)
"і
tensor_0         
џ Ц
)__inference_sequential_layer_call_fn_7134x./0$%,-IбF
?б<
2і/
embedding_input                  
p

 
ф "!і
unknown         Ц
)__inference_sequential_layer_call_fn_7155x./0$%,-IбF
?б<
2і/
embedding_input                  
p 

 
ф "!і
unknown         ║
"__inference_signature_wrapper_7226Њ./0$%,-TбQ
б 
JфG
E
embedding_input2і/
embedding_input                  "1ф.
,
dense_1!і
dense_1         