��
��
.
Abs
x"T
y"T"
Ttype:

2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	
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
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
2
Round
x"T
y"T"
Ttype:
2
	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
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
1
Sign
x"T
y"T"
Ttype:
2
	
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8��
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0
�
Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:*
dtype0
v
Adam/fc1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/fc1/bias/v
o
#Adam/fc1/bias/v/Read/ReadVariableOpReadVariableOpAdam/fc1/bias/v*
_output_shapes
:*
dtype0
~
Adam/fc1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_nameAdam/fc1/kernel/v
w
%Adam/fc1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/fc1/kernel/v*
_output_shapes

:*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0
�
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:*
dtype0
v
Adam/fc1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/fc1/bias/m
o
#Adam/fc1/bias/m/Read/ReadVariableOpReadVariableOpAdam/fc1/bias/m*
_output_shapes
:*
dtype0
~
Adam/fc1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_nameAdam/fc1/kernel/m
w
%Adam/fc1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/fc1/kernel/m*
_output_shapes

:*
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
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:*
dtype0
h
fc1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
fc1/bias
a
fc1/bias/Read/ReadVariableOpReadVariableOpfc1/bias*
_output_shapes
:*
dtype0
p

fc1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name
fc1/kernel
i
fc1/kernel/Read/ReadVariableOpReadVariableOp
fc1/kernel*
_output_shapes

:*
dtype0
|
serving_default_fc1_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_fc1_input
fc1/kernelfc1/biasoutput/kerneloutput/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_28844

NoOpNoOp
�/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�.
value�.B�. B�.
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
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
loss

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kernel_quantizer
bias_quantizer
kernel_quantizer_internal
bias_quantizer_internal

quantizers

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 
activation
 	quantizer* 
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'kernel_quantizer
(bias_quantizer
'kernel_quantizer_internal
(bias_quantizer_internal
)
quantizers

*kernel
+bias*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
 
0
1
*2
+3*
 
0
1
*2
+3*

20
31* 
�
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
9trace_0
:trace_1
;trace_2
<trace_3* 
6
=trace_0
>trace_1
?trace_2
@trace_3* 
* 
�
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_ratempmq*mr+msvtvu*vv+vw*
* 

Fserving_default* 

0
1*

0
1*
	
20* 
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ltrace_0* 

Mtrace_0* 
* 
* 

0
1* 
ZT
VARIABLE_VALUE
fc1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEfc1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Strace_0* 

Ttrace_0* 
* 

*0
+1*

*0
+1*
	
30* 
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

Ztrace_0* 

[trace_0* 
* 
* 

'0
(1* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

atrace_0* 

btrace_0* 

ctrace_0* 

dtrace_0* 
* 
 
0
1
2
3*

e0
f1*
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
* 
* 
* 
* 
	
20* 
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
	
30* 
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
g	variables
h	keras_api
	itotal
	jcount*
H
k	variables
l	keras_api
	mtotal
	ncount
o
_fn_kwargs*

i0
j1*

g	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

m0
n1*

k	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
}w
VARIABLE_VALUEAdam/fc1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/fc1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/fc1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/fc1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamefc1/kernel/Read/ReadVariableOpfc1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp%Adam/fc1/kernel/m/Read/ReadVariableOp#Adam/fc1/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp%Adam/fc1/kernel/v/Read/ReadVariableOp#Adam/fc1/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_29876
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
fc1/kernelfc1/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/fc1/kernel/mAdam/fc1/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/fc1/kernel/vAdam/fc1/bias/vAdam/output/kernel/vAdam/output/bias/v*!
Tin
2*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_29949��
�\
�
>__inference_fc1_layer_call_and_return_conditional_losses_28442

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identity��Abs_1/ReadVariableOp�Abs_3/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�)fc1/kernel/Regularizer/Abs/ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0M
SignSignReadVariableOp:value:0*
T0*
_output_shapes

:=
AbsAbsSign:y:0*
T0*
_output_shapes

:J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
subSubsub/x:output:0Abs:y:0*
T0*
_output_shapes

:H
addAddV2Sign:y:0sub:z:0*
T0*
_output_shapes

:l
Abs_1/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0S
Abs_1AbsAbs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:K
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
LessLess	Abs_1:y:0Less/y:output:0*
T0*
_output_shapes

:O

SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3g
SelectV2SelectV2Less:z:0SelectV2/t:output:0	Abs_1:y:0*
T0*
_output_shapes

:S
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?q
GreaterEqualGreaterEqualSelectV2:output:0GreaterEqual/y:output:0*
T0*
_output_shapes

:p
ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
	ones_likeFill(ones_like/Shape/shape_as_tensor:output:0ones_like/Const:output:0*
T0*
_output_shapes

:J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
mulMulones_like:output:0mul/y:output:0*
T0*
_output_shapes

:m

SelectV2_1SelectV2GreaterEqual:z:0mul:z:0SelectV2:output:0*
T0*
_output_shapes

:M
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3U
Less_1Less	Abs_1:y:0Less_1/y:output:0*
T0*
_output_shapes

:r
!ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_1Fill*ones_like_1/Shape/shape_as_tensor:output:0ones_like_1/Const:output:0*
T0*
_output_shapes

:L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �]
mul_1Mulones_like_1:output:0mul_1/y:output:0*
T0*
_output_shapes

:H
LogLogSelectV2_1:output:0*
T0*
_output_shapes

:N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?X
truedivRealDivLog:y:0truediv/y:output:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:K
add_1AddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:P
StopGradientStopGradient	add_1:z:0*
T0*
_output_shapes

:[
add_2AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value/MinimumMinimum	add_2:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
mul_2Mulmul_2/x:output:0clip_by_value:z:0*
T0*
_output_shapes

:a

SelectV2_2SelectV2
Less_1:z:0	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes

:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
powPowpow/x:output:0SelectV2_2:output:0*
T0*
_output_shapes

:G
mul_3Muladd:z:0pow:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_3AddV2	Neg_1:y:0	mul_3:z:0*
T0*
_output_shapes

:L
mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?R
mul_4Mulmul_4/x:output:0	add_3:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_4:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_4AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_4:z:0*
T0*'
_output_shapes
:���������f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0M
Sign_1SignReadVariableOp_3:value:0*
T0*
_output_shapes
:=
Abs_2Abs
Sign_1:y:0*
T0*
_output_shapes
:L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
sub_1Subsub_1/x:output:0	Abs_2:y:0*
T0*
_output_shapes
:J
add_5AddV2
Sign_1:y:0	sub_1:z:0*
T0*
_output_shapes
:j
Abs_3/ReadVariableOpReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0O
Abs_3AbsAbs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:M
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_2Less	Abs_3:y:0Less_2/y:output:0*
T0*
_output_shapes
:Q
SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3i

SelectV2_3SelectV2
Less_2:z:0SelectV2_3/t:output:0	Abs_3:y:0*
T0*
_output_shapes
:U
GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
GreaterEqual_1GreaterEqualSelectV2_3:output:0GreaterEqual_1/y:output:0*
T0*
_output_shapes
:k
!ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_2Fill*ones_like_2/Shape/shape_as_tensor:output:0ones_like_2/Const:output:0*
T0*
_output_shapes
:L
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
mul_5Mulones_like_2:output:0mul_5/y:output:0*
T0*
_output_shapes
:o

SelectV2_4SelectV2GreaterEqual_1:z:0	mul_5:z:0SelectV2_3:output:0*
T0*
_output_shapes
:M
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_3Less	Abs_3:y:0Less_3/y:output:0*
T0*
_output_shapes
:k
!ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_3Fill*ones_like_3/Shape/shape_as_tensor:output:0ones_like_3/Const:output:0*
T0*
_output_shapes
:L
mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �Y
mul_6Mulones_like_3:output:0mul_6/y:output:0*
T0*
_output_shapes
:F
Log_1LogSelectV2_4:output:0*
T0*
_output_shapes
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?Z
	truediv_1RealDiv	Log_1:y:0truediv_1/y:output:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_1:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_1:z:0*
T0*
_output_shapes
:K
add_6AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_6:z:0*
T0*
_output_shapes
:[
add_7AddV2truediv_1:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value_1/MinimumMinimum	add_7:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?X
mul_7Mulmul_7/x:output:0clip_by_value_1:z:0*
T0*
_output_shapes
:]

SelectV2_5SelectV2
Less_3:z:0	mul_6:z:0	mul_7:z:0*
T0*
_output_shapes
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
pow_1Powpow_1/x:output:0SelectV2_5:output:0*
T0*
_output_shapes
:G
mul_8Mul	add_5:z:0	pow_1:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_8AddV2	Neg_3:y:0	mul_8:z:0*
T0*
_output_shapes
:L
mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
mul_9Mulmul_9/x:output:0	add_8:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_9:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_9AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_9:z:0*
T0*'
_output_shapes
:����������
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
fc1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
fc1/kernel/Regularizer/SumSumfc1/kernel/Regularizer/Abs:y:0%fc1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: a
fc1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
fc1/kernel/Regularizer/mulMul%fc1/kernel/Regularizer/mul/x:output:0#fc1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Abs_1/ReadVariableOp^Abs_3/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*^fc1/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2,
Abs_1/ReadVariableOpAbs_1/ReadVariableOp2,
Abs_3/ReadVariableOpAbs_3/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
� 
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_28783
	fc1_input
	fc1_28758:
	fc1_28760:
output_28764:
output_28766:
identity��fc1/StatefulPartitionedCall�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/StatefulPartitionedCall�,output/kernel/Regularizer/Abs/ReadVariableOp�
fc1/StatefulPartitionedCallStatefulPartitionedCall	fc1_input	fc1_28758	fc1_28760*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_fc1_layer_call_and_return_conditional_losses_28442�
relu1/PartitionedCallPartitionedCall$fc1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_relu1_layer_call_and_return_conditional_losses_28497�
output/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0output_28764output_28766*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_28619�
softmax/PartitionedCallPartitionedCall'output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_28630s
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp	fc1_28758*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
fc1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
fc1/kernel/Regularizer/SumSumfc1/kernel/Regularizer/Abs:y:0%fc1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: a
fc1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
fc1/kernel/Regularizer/mulMul%fc1/kernel/Regularizer/mul/x:output:0#fc1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpoutput_28764*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
output/kernel/Regularizer/SumSum!output/kernel/Regularizer/Abs:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^fc1/StatefulPartitionedCall*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
�\
�
A__inference_output_layer_call_and_return_conditional_losses_29758

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identity��Abs_1/ReadVariableOp�Abs_3/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�,output/kernel/Regularizer/Abs/ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0M
SignSignReadVariableOp:value:0*
T0*
_output_shapes

:=
AbsAbsSign:y:0*
T0*
_output_shapes

:J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
subSubsub/x:output:0Abs:y:0*
T0*
_output_shapes

:H
addAddV2Sign:y:0sub:z:0*
T0*
_output_shapes

:l
Abs_1/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0S
Abs_1AbsAbs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:K
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
LessLess	Abs_1:y:0Less/y:output:0*
T0*
_output_shapes

:O

SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3g
SelectV2SelectV2Less:z:0SelectV2/t:output:0	Abs_1:y:0*
T0*
_output_shapes

:S
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?q
GreaterEqualGreaterEqualSelectV2:output:0GreaterEqual/y:output:0*
T0*
_output_shapes

:p
ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
	ones_likeFill(ones_like/Shape/shape_as_tensor:output:0ones_like/Const:output:0*
T0*
_output_shapes

:J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
mulMulones_like:output:0mul/y:output:0*
T0*
_output_shapes

:m

SelectV2_1SelectV2GreaterEqual:z:0mul:z:0SelectV2:output:0*
T0*
_output_shapes

:M
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3U
Less_1Less	Abs_1:y:0Less_1/y:output:0*
T0*
_output_shapes

:r
!ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_1Fill*ones_like_1/Shape/shape_as_tensor:output:0ones_like_1/Const:output:0*
T0*
_output_shapes

:L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �]
mul_1Mulones_like_1:output:0mul_1/y:output:0*
T0*
_output_shapes

:H
LogLogSelectV2_1:output:0*
T0*
_output_shapes

:N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?X
truedivRealDivLog:y:0truediv/y:output:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:K
add_1AddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:P
StopGradientStopGradient	add_1:z:0*
T0*
_output_shapes

:[
add_2AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value/MinimumMinimum	add_2:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
mul_2Mulmul_2/x:output:0clip_by_value:z:0*
T0*
_output_shapes

:a

SelectV2_2SelectV2
Less_1:z:0	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes

:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
powPowpow/x:output:0SelectV2_2:output:0*
T0*
_output_shapes

:G
mul_3Muladd:z:0pow:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_3AddV2	Neg_1:y:0	mul_3:z:0*
T0*
_output_shapes

:L
mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?R
mul_4Mulmul_4/x:output:0	add_3:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_4:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_4AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_4:z:0*
T0*'
_output_shapes
:���������f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0M
Sign_1SignReadVariableOp_3:value:0*
T0*
_output_shapes
:=
Abs_2Abs
Sign_1:y:0*
T0*
_output_shapes
:L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
sub_1Subsub_1/x:output:0	Abs_2:y:0*
T0*
_output_shapes
:J
add_5AddV2
Sign_1:y:0	sub_1:z:0*
T0*
_output_shapes
:j
Abs_3/ReadVariableOpReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0O
Abs_3AbsAbs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:M
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_2Less	Abs_3:y:0Less_2/y:output:0*
T0*
_output_shapes
:Q
SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3i

SelectV2_3SelectV2
Less_2:z:0SelectV2_3/t:output:0	Abs_3:y:0*
T0*
_output_shapes
:U
GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
GreaterEqual_1GreaterEqualSelectV2_3:output:0GreaterEqual_1/y:output:0*
T0*
_output_shapes
:k
!ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_2Fill*ones_like_2/Shape/shape_as_tensor:output:0ones_like_2/Const:output:0*
T0*
_output_shapes
:L
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
mul_5Mulones_like_2:output:0mul_5/y:output:0*
T0*
_output_shapes
:o

SelectV2_4SelectV2GreaterEqual_1:z:0	mul_5:z:0SelectV2_3:output:0*
T0*
_output_shapes
:M
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_3Less	Abs_3:y:0Less_3/y:output:0*
T0*
_output_shapes
:k
!ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_3Fill*ones_like_3/Shape/shape_as_tensor:output:0ones_like_3/Const:output:0*
T0*
_output_shapes
:L
mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �Y
mul_6Mulones_like_3:output:0mul_6/y:output:0*
T0*
_output_shapes
:F
Log_1LogSelectV2_4:output:0*
T0*
_output_shapes
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?Z
	truediv_1RealDiv	Log_1:y:0truediv_1/y:output:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_1:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_1:z:0*
T0*
_output_shapes
:K
add_6AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_6:z:0*
T0*
_output_shapes
:[
add_7AddV2truediv_1:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value_1/MinimumMinimum	add_7:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?X
mul_7Mulmul_7/x:output:0clip_by_value_1:z:0*
T0*
_output_shapes
:]

SelectV2_5SelectV2
Less_3:z:0	mul_6:z:0	mul_7:z:0*
T0*
_output_shapes
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
pow_1Powpow_1/x:output:0SelectV2_5:output:0*
T0*
_output_shapes
:G
mul_8Mul	add_5:z:0	pow_1:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_8AddV2	Neg_3:y:0	mul_8:z:0*
T0*
_output_shapes
:L
mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
mul_9Mulmul_9/x:output:0	add_8:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_9:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_9AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_9:z:0*
T0*'
_output_shapes
:����������
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
output/kernel/Regularizer/SumSum!output/kernel/Regularizer/Abs:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Abs_1/ReadVariableOp^Abs_3/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2,
Abs_1/ReadVariableOpAbs_1/ReadVariableOp2,
Abs_3/ReadVariableOpAbs_3/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_29164

inputs-
fc1_readvariableop_resource:+
fc1_readvariableop_3_resource:0
output_readvariableop_resource:.
 output_readvariableop_3_resource:
identity��fc1/Abs_1/ReadVariableOp�fc1/Abs_3/ReadVariableOp�fc1/ReadVariableOp�fc1/ReadVariableOp_1�fc1/ReadVariableOp_2�fc1/ReadVariableOp_3�fc1/ReadVariableOp_4�fc1/ReadVariableOp_5�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/Abs_1/ReadVariableOp�output/Abs_3/ReadVariableOp�output/ReadVariableOp�output/ReadVariableOp_1�output/ReadVariableOp_2�output/ReadVariableOp_3�output/ReadVariableOp_4�output/ReadVariableOp_5�,output/kernel/Regularizer/Abs/ReadVariableOpn
fc1/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0U
fc1/SignSignfc1/ReadVariableOp:value:0*
T0*
_output_shapes

:E
fc1/AbsAbsfc1/Sign:y:0*
T0*
_output_shapes

:N
	fc1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?X
fc1/subSubfc1/sub/x:output:0fc1/Abs:y:0*
T0*
_output_shapes

:T
fc1/addAddV2fc1/Sign:y:0fc1/sub:z:0*
T0*
_output_shapes

:t
fc1/Abs_1/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0[
	fc1/Abs_1Abs fc1/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:O

fc1/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3]
fc1/LessLessfc1/Abs_1:y:0fc1/Less/y:output:0*
T0*
_output_shapes

:S
fc1/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3w
fc1/SelectV2SelectV2fc1/Less:z:0fc1/SelectV2/t:output:0fc1/Abs_1:y:0*
T0*
_output_shapes

:W
fc1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?}
fc1/GreaterEqualGreaterEqualfc1/SelectV2:output:0fc1/GreaterEqual/y:output:0*
T0*
_output_shapes

:t
#fc1/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      X
fc1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_likeFill,fc1/ones_like/Shape/shape_as_tensor:output:0fc1/ones_like/Const:output:0*
T0*
_output_shapes

:N
	fc1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
fc1/mulMulfc1/ones_like:output:0fc1/mul/y:output:0*
T0*
_output_shapes

:}
fc1/SelectV2_1SelectV2fc1/GreaterEqual:z:0fc1/mul:z:0fc1/SelectV2:output:0*
T0*
_output_shapes

:Q
fc1/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3a

fc1/Less_1Lessfc1/Abs_1:y:0fc1/Less_1/y:output:0*
T0*
_output_shapes

:v
%fc1/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      Z
fc1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_like_1Fill.fc1/ones_like_1/Shape/shape_as_tensor:output:0fc1/ones_like_1/Const:output:0*
T0*
_output_shapes

:P
fc1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �i
	fc1/mul_1Mulfc1/ones_like_1:output:0fc1/mul_1/y:output:0*
T0*
_output_shapes

:P
fc1/LogLogfc1/SelectV2_1:output:0*
T0*
_output_shapes

:R
fc1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?d
fc1/truedivRealDivfc1/Log:y:0fc1/truediv/y:output:0*
T0*
_output_shapes

:H
fc1/NegNegfc1/truediv:z:0*
T0*
_output_shapes

:L
	fc1/RoundRoundfc1/truediv:z:0*
T0*
_output_shapes

:W
	fc1/add_1AddV2fc1/Neg:y:0fc1/Round:y:0*
T0*
_output_shapes

:X
fc1/StopGradientStopGradientfc1/add_1:z:0*
T0*
_output_shapes

:g
	fc1/add_2AddV2fc1/truediv:z:0fc1/StopGradient:output:0*
T0*
_output_shapes

:`
fc1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
fc1/clip_by_value/MinimumMinimumfc1/add_2:z:0$fc1/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:X
fc1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
fc1/clip_by_valueMaximumfc1/clip_by_value/Minimum:z:0fc1/clip_by_value/y:output:0*
T0*
_output_shapes

:P
fc1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
	fc1/mul_2Mulfc1/mul_2/x:output:0fc1/clip_by_value:z:0*
T0*
_output_shapes

:q
fc1/SelectV2_2SelectV2fc1/Less_1:z:0fc1/mul_1:z:0fc1/mul_2:z:0*
T0*
_output_shapes

:N
	fc1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
fc1/powPowfc1/pow/x:output:0fc1/SelectV2_2:output:0*
T0*
_output_shapes

:S
	fc1/mul_3Mulfc1/add:z:0fc1/pow:z:0*
T0*
_output_shapes

:p
fc1/ReadVariableOp_1ReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0W
	fc1/Neg_1Negfc1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:Y
	fc1/add_3AddV2fc1/Neg_1:y:0fc1/mul_3:z:0*
T0*
_output_shapes

:P
fc1/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
	fc1/mul_4Mulfc1/mul_4/x:output:0fc1/add_3:z:0*
T0*
_output_shapes

:Z
fc1/StopGradient_1StopGradientfc1/mul_4:z:0*
T0*
_output_shapes

:p
fc1/ReadVariableOp_2ReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0v
	fc1/add_4AddV2fc1/ReadVariableOp_2:value:0fc1/StopGradient_1:output:0*
T0*
_output_shapes

:]

fc1/MatMulMatMulinputsfc1/add_4:z:0*
T0*'
_output_shapes
:���������n
fc1/ReadVariableOp_3ReadVariableOpfc1_readvariableop_3_resource*
_output_shapes
:*
dtype0U

fc1/Sign_1Signfc1/ReadVariableOp_3:value:0*
T0*
_output_shapes
:E
	fc1/Abs_2Absfc1/Sign_1:y:0*
T0*
_output_shapes
:P
fc1/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
	fc1/sub_1Subfc1/sub_1/x:output:0fc1/Abs_2:y:0*
T0*
_output_shapes
:V
	fc1/add_5AddV2fc1/Sign_1:y:0fc1/sub_1:z:0*
T0*
_output_shapes
:r
fc1/Abs_3/ReadVariableOpReadVariableOpfc1_readvariableop_3_resource*
_output_shapes
:*
dtype0W
	fc1/Abs_3Abs fc1/Abs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:Q
fc1/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3]

fc1/Less_2Lessfc1/Abs_3:y:0fc1/Less_2/y:output:0*
T0*
_output_shapes
:U
fc1/SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3y
fc1/SelectV2_3SelectV2fc1/Less_2:z:0fc1/SelectV2_3/t:output:0fc1/Abs_3:y:0*
T0*
_output_shapes
:Y
fc1/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
fc1/GreaterEqual_1GreaterEqualfc1/SelectV2_3:output:0fc1/GreaterEqual_1/y:output:0*
T0*
_output_shapes
:o
%fc1/ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Z
fc1/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_like_2Fill.fc1/ones_like_2/Shape/shape_as_tensor:output:0fc1/ones_like_2/Const:output:0*
T0*
_output_shapes
:P
fc1/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
	fc1/mul_5Mulfc1/ones_like_2:output:0fc1/mul_5/y:output:0*
T0*
_output_shapes
:
fc1/SelectV2_4SelectV2fc1/GreaterEqual_1:z:0fc1/mul_5:z:0fc1/SelectV2_3:output:0*
T0*
_output_shapes
:Q
fc1/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3]

fc1/Less_3Lessfc1/Abs_3:y:0fc1/Less_3/y:output:0*
T0*
_output_shapes
:o
%fc1/ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Z
fc1/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_like_3Fill.fc1/ones_like_3/Shape/shape_as_tensor:output:0fc1/ones_like_3/Const:output:0*
T0*
_output_shapes
:P
fc1/mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �e
	fc1/mul_6Mulfc1/ones_like_3:output:0fc1/mul_6/y:output:0*
T0*
_output_shapes
:N
	fc1/Log_1Logfc1/SelectV2_4:output:0*
T0*
_output_shapes
:T
fc1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?f
fc1/truediv_1RealDivfc1/Log_1:y:0fc1/truediv_1/y:output:0*
T0*
_output_shapes
:H
	fc1/Neg_2Negfc1/truediv_1:z:0*
T0*
_output_shapes
:L
fc1/Round_1Roundfc1/truediv_1:z:0*
T0*
_output_shapes
:W
	fc1/add_6AddV2fc1/Neg_2:y:0fc1/Round_1:y:0*
T0*
_output_shapes
:V
fc1/StopGradient_2StopGradientfc1/add_6:z:0*
T0*
_output_shapes
:g
	fc1/add_7AddV2fc1/truediv_1:z:0fc1/StopGradient_2:output:0*
T0*
_output_shapes
:b
fc1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
fc1/clip_by_value_1/MinimumMinimumfc1/add_7:z:0&fc1/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:Z
fc1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
fc1/clip_by_value_1Maximumfc1/clip_by_value_1/Minimum:z:0fc1/clip_by_value_1/y:output:0*
T0*
_output_shapes
:P
fc1/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
	fc1/mul_7Mulfc1/mul_7/x:output:0fc1/clip_by_value_1:z:0*
T0*
_output_shapes
:m
fc1/SelectV2_5SelectV2fc1/Less_3:z:0fc1/mul_6:z:0fc1/mul_7:z:0*
T0*
_output_shapes
:P
fc1/pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
	fc1/pow_1Powfc1/pow_1/x:output:0fc1/SelectV2_5:output:0*
T0*
_output_shapes
:S
	fc1/mul_8Mulfc1/add_5:z:0fc1/pow_1:z:0*
T0*
_output_shapes
:n
fc1/ReadVariableOp_4ReadVariableOpfc1_readvariableop_3_resource*
_output_shapes
:*
dtype0S
	fc1/Neg_3Negfc1/ReadVariableOp_4:value:0*
T0*
_output_shapes
:U
	fc1/add_8AddV2fc1/Neg_3:y:0fc1/mul_8:z:0*
T0*
_output_shapes
:P
fc1/mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
	fc1/mul_9Mulfc1/mul_9/x:output:0fc1/add_8:z:0*
T0*
_output_shapes
:V
fc1/StopGradient_3StopGradientfc1/mul_9:z:0*
T0*
_output_shapes
:n
fc1/ReadVariableOp_5ReadVariableOpfc1_readvariableop_3_resource*
_output_shapes
:*
dtype0r
	fc1/add_9AddV2fc1/ReadVariableOp_5:value:0fc1/StopGradient_3:output:0*
T0*
_output_shapes
:m
fc1/BiasAddBiasAddfc1/MatMul:product:0fc1/add_9:z:0*
T0*'
_output_shapes
:���������M
relu1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :M
relu1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :]
	relu1/PowPowrelu1/Pow/x:output:0relu1/Pow/y:output:0*
T0*
_output_shapes
: Q

relu1/CastCastrelu1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: O
relu1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :O
relu1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :c
relu1/Pow_1Powrelu1/Pow_1/x:output:0relu1/Pow_1/y:output:0*
T0*
_output_shapes
: U
relu1/Cast_1Castrelu1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: P
relu1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @P
relu1/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :]
relu1/Cast_2Castrelu1/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: P
relu1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AY
	relu1/subSubrelu1/Cast_2:y:0relu1/sub/y:output:0*
T0*
_output_shapes
: X
relu1/Pow_2Powrelu1/Const:output:0relu1/sub:z:0*
T0*
_output_shapes
: V
relu1/sub_1Subrelu1/Cast_1:y:0relu1/Pow_2:z:0*
T0*
_output_shapes
: u
relu1/LessEqual	LessEqualfc1/BiasAdd:output:0relu1/sub_1:z:0*
T0*'
_output_shapes
:���������Z

relu1/ReluRelufc1/BiasAdd:output:0*
T0*'
_output_shapes
:���������Y
relu1/ones_like/ShapeShapefc1/BiasAdd:output:0*
T0*
_output_shapes
:Z
relu1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
relu1/ones_likeFillrelu1/ones_like/Shape:output:0relu1/ones_like/Const:output:0*
T0*'
_output_shapes
:���������V
relu1/sub_2Subrelu1/Cast_1:y:0relu1/Pow_2:z:0*
T0*
_output_shapes
: m
	relu1/mulMulrelu1/ones_like:output:0relu1/sub_2:z:0*
T0*'
_output_shapes
:����������
relu1/SelectV2SelectV2relu1/LessEqual:z:0relu1/Relu:activations:0relu1/mul:z:0*
T0*'
_output_shapes
:���������j
relu1/mul_1Mulfc1/BiasAdd:output:0relu1/Cast:y:0*
T0*'
_output_shapes
:���������m
relu1/truedivRealDivrelu1/mul_1:z:0relu1/Cast_1:y:0*
T0*'
_output_shapes
:���������U
	relu1/NegNegrelu1/truediv:z:0*
T0*'
_output_shapes
:���������Y
relu1/RoundRoundrelu1/truediv:z:0*
T0*'
_output_shapes
:���������d
	relu1/addAddV2relu1/Neg:y:0relu1/Round:y:0*
T0*'
_output_shapes
:���������c
relu1/StopGradientStopGradientrelu1/add:z:0*
T0*'
_output_shapes
:���������v
relu1/add_1AddV2relu1/truediv:z:0relu1/StopGradient:output:0*
T0*'
_output_shapes
:���������m
relu1/truediv_1RealDivrelu1/add_1:z:0relu1/Cast:y:0*
T0*'
_output_shapes
:���������V
relu1/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
relu1/truediv_2RealDivrelu1/truediv_2/x:output:0relu1/Cast:y:0*
T0*
_output_shapes
: R
relu1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?`
relu1/sub_3Subrelu1/sub_3/x:output:0relu1/truediv_2:z:0*
T0*
_output_shapes
: ~
relu1/clip_by_value/MinimumMinimumrelu1/truediv_1:z:0relu1/sub_3:z:0*
T0*'
_output_shapes
:���������Z
relu1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
relu1/clip_by_valueMaximumrelu1/clip_by_value/Minimum:z:0relu1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������o
relu1/mul_2Mulrelu1/Cast_1:y:0relu1/clip_by_value:z:0*
T0*'
_output_shapes
:���������]
relu1/Neg_1Negrelu1/SelectV2:output:0*
T0*'
_output_shapes
:���������h
relu1/add_2AddV2relu1/Neg_1:y:0relu1/mul_2:z:0*
T0*'
_output_shapes
:���������R
relu1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?m
relu1/mul_3Mulrelu1/mul_3/x:output:0relu1/add_2:z:0*
T0*'
_output_shapes
:���������g
relu1/StopGradient_1StopGradientrelu1/mul_3:z:0*
T0*'
_output_shapes
:���������~
relu1/add_3AddV2relu1/SelectV2:output:0relu1/StopGradient_1:output:0*
T0*'
_output_shapes
:���������t
output/ReadVariableOpReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0[
output/SignSignoutput/ReadVariableOp:value:0*
T0*
_output_shapes

:K

output/AbsAbsoutput/Sign:y:0*
T0*
_output_shapes

:Q
output/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a

output/subSuboutput/sub/x:output:0output/Abs:y:0*
T0*
_output_shapes

:]

output/addAddV2output/Sign:y:0output/sub:z:0*
T0*
_output_shapes

:z
output/Abs_1/ReadVariableOpReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0a
output/Abs_1Abs#output/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:R
output/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/LessLessoutput/Abs_1:y:0output/Less/y:output:0*
T0*
_output_shapes

:V
output/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
output/SelectV2SelectV2output/Less:z:0output/SelectV2/t:output:0output/Abs_1:y:0*
T0*
_output_shapes

:Z
output/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/GreaterEqualGreaterEqualoutput/SelectV2:output:0output/GreaterEqual/y:output:0*
T0*
_output_shapes

:w
&output/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      [
output/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_likeFill/output/ones_like/Shape/shape_as_tensor:output:0output/ones_like/Const:output:0*
T0*
_output_shapes

:Q
output/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l

output/mulMuloutput/ones_like:output:0output/mul/y:output:0*
T0*
_output_shapes

:�
output/SelectV2_1SelectV2output/GreaterEqual:z:0output/mul:z:0output/SelectV2:output:0*
T0*
_output_shapes

:T
output/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3j
output/Less_1Lessoutput/Abs_1:y:0output/Less_1/y:output:0*
T0*
_output_shapes

:y
(output/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      ]
output/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_1Fill1output/ones_like_1/Shape/shape_as_tensor:output:0!output/ones_like_1/Const:output:0*
T0*
_output_shapes

:S
output/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �r
output/mul_1Muloutput/ones_like_1:output:0output/mul_1/y:output:0*
T0*
_output_shapes

:V

output/LogLogoutput/SelectV2_1:output:0*
T0*
_output_shapes

:U
output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?m
output/truedivRealDivoutput/Log:y:0output/truediv/y:output:0*
T0*
_output_shapes

:N

output/NegNegoutput/truediv:z:0*
T0*
_output_shapes

:R
output/RoundRoundoutput/truediv:z:0*
T0*
_output_shapes

:`
output/add_1AddV2output/Neg:y:0output/Round:y:0*
T0*
_output_shapes

:^
output/StopGradientStopGradientoutput/add_1:z:0*
T0*
_output_shapes

:p
output/add_2AddV2output/truediv:z:0output/StopGradient:output:0*
T0*
_output_shapes

:c
output/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
output/clip_by_value/MinimumMinimumoutput/add_2:z:0'output/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:[
output/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
output/clip_by_valueMaximum output/clip_by_value/Minimum:z:0output/clip_by_value/y:output:0*
T0*
_output_shapes

:S
output/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
output/mul_2Muloutput/mul_2/x:output:0output/clip_by_value:z:0*
T0*
_output_shapes

:}
output/SelectV2_2SelectV2output/Less_1:z:0output/mul_1:z:0output/mul_2:z:0*
T0*
_output_shapes

:Q
output/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @m

output/powPowoutput/pow/x:output:0output/SelectV2_2:output:0*
T0*
_output_shapes

:\
output/mul_3Muloutput/add:z:0output/pow:z:0*
T0*
_output_shapes

:v
output/ReadVariableOp_1ReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0]
output/Neg_1Negoutput/ReadVariableOp_1:value:0*
T0*
_output_shapes

:b
output/add_3AddV2output/Neg_1:y:0output/mul_3:z:0*
T0*
_output_shapes

:S
output/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
output/mul_4Muloutput/mul_4/x:output:0output/add_3:z:0*
T0*
_output_shapes

:`
output/StopGradient_1StopGradientoutput/mul_4:z:0*
T0*
_output_shapes

:v
output/ReadVariableOp_2ReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0
output/add_4AddV2output/ReadVariableOp_2:value:0output/StopGradient_1:output:0*
T0*
_output_shapes

:l
output/MatMulMatMulrelu1/add_3:z:0output/add_4:z:0*
T0*'
_output_shapes
:���������t
output/ReadVariableOp_3ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0[
output/Sign_1Signoutput/ReadVariableOp_3:value:0*
T0*
_output_shapes
:K
output/Abs_2Absoutput/Sign_1:y:0*
T0*
_output_shapes
:S
output/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
output/sub_1Suboutput/sub_1/x:output:0output/Abs_2:y:0*
T0*
_output_shapes
:_
output/add_5AddV2output/Sign_1:y:0output/sub_1:z:0*
T0*
_output_shapes
:x
output/Abs_3/ReadVariableOpReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0]
output/Abs_3Abs#output/Abs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:T
output/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/Less_2Lessoutput/Abs_3:y:0output/Less_2/y:output:0*
T0*
_output_shapes
:X
output/SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
output/SelectV2_3SelectV2output/Less_2:z:0output/SelectV2_3/t:output:0output/Abs_3:y:0*
T0*
_output_shapes
:\
output/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/GreaterEqual_1GreaterEqualoutput/SelectV2_3:output:0 output/GreaterEqual_1/y:output:0*
T0*
_output_shapes
:r
(output/ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:]
output/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_2Fill1output/ones_like_2/Shape/shape_as_tensor:output:0!output/ones_like_2/Const:output:0*
T0*
_output_shapes
:S
output/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?n
output/mul_5Muloutput/ones_like_2:output:0output/mul_5/y:output:0*
T0*
_output_shapes
:�
output/SelectV2_4SelectV2output/GreaterEqual_1:z:0output/mul_5:z:0output/SelectV2_3:output:0*
T0*
_output_shapes
:T
output/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/Less_3Lessoutput/Abs_3:y:0output/Less_3/y:output:0*
T0*
_output_shapes
:r
(output/ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:]
output/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_3Fill1output/ones_like_3/Shape/shape_as_tensor:output:0!output/ones_like_3/Const:output:0*
T0*
_output_shapes
:S
output/mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �n
output/mul_6Muloutput/ones_like_3:output:0output/mul_6/y:output:0*
T0*
_output_shapes
:T
output/Log_1Logoutput/SelectV2_4:output:0*
T0*
_output_shapes
:W
output/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?o
output/truediv_1RealDivoutput/Log_1:y:0output/truediv_1/y:output:0*
T0*
_output_shapes
:N
output/Neg_2Negoutput/truediv_1:z:0*
T0*
_output_shapes
:R
output/Round_1Roundoutput/truediv_1:z:0*
T0*
_output_shapes
:`
output/add_6AddV2output/Neg_2:y:0output/Round_1:y:0*
T0*
_output_shapes
:\
output/StopGradient_2StopGradientoutput/add_6:z:0*
T0*
_output_shapes
:p
output/add_7AddV2output/truediv_1:z:0output/StopGradient_2:output:0*
T0*
_output_shapes
:e
 output/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
output/clip_by_value_1/MinimumMinimumoutput/add_7:z:0)output/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:]
output/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
output/clip_by_value_1Maximum"output/clip_by_value_1/Minimum:z:0!output/clip_by_value_1/y:output:0*
T0*
_output_shapes
:S
output/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?m
output/mul_7Muloutput/mul_7/x:output:0output/clip_by_value_1:z:0*
T0*
_output_shapes
:y
output/SelectV2_5SelectV2output/Less_3:z:0output/mul_6:z:0output/mul_7:z:0*
T0*
_output_shapes
:S
output/pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
output/pow_1Powoutput/pow_1/x:output:0output/SelectV2_5:output:0*
T0*
_output_shapes
:\
output/mul_8Muloutput/add_5:z:0output/pow_1:z:0*
T0*
_output_shapes
:t
output/ReadVariableOp_4ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0Y
output/Neg_3Negoutput/ReadVariableOp_4:value:0*
T0*
_output_shapes
:^
output/add_8AddV2output/Neg_3:y:0output/mul_8:z:0*
T0*
_output_shapes
:S
output/mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
output/mul_9Muloutput/mul_9/x:output:0output/add_8:z:0*
T0*
_output_shapes
:\
output/StopGradient_3StopGradientoutput/mul_9:z:0*
T0*
_output_shapes
:t
output/ReadVariableOp_5ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0{
output/add_9AddV2output/ReadVariableOp_5:value:0output/StopGradient_3:output:0*
T0*
_output_shapes
:v
output/BiasAddBiasAddoutput/MatMul:product:0output/add_9:z:0*
T0*'
_output_shapes
:���������e
softmax/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:����������
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
fc1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
fc1/kernel/Regularizer/SumSumfc1/kernel/Regularizer/Abs:y:0%fc1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: a
fc1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
fc1/kernel/Regularizer/mulMul%fc1/kernel/Regularizer/mul/x:output:0#fc1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
output/kernel/Regularizer/SumSum!output/kernel/Regularizer/Abs:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^fc1/Abs_1/ReadVariableOp^fc1/Abs_3/ReadVariableOp^fc1/ReadVariableOp^fc1/ReadVariableOp_1^fc1/ReadVariableOp_2^fc1/ReadVariableOp_3^fc1/ReadVariableOp_4^fc1/ReadVariableOp_5*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/Abs_1/ReadVariableOp^output/Abs_3/ReadVariableOp^output/ReadVariableOp^output/ReadVariableOp_1^output/ReadVariableOp_2^output/ReadVariableOp_3^output/ReadVariableOp_4^output/ReadVariableOp_5-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
fc1/Abs_1/ReadVariableOpfc1/Abs_1/ReadVariableOp24
fc1/Abs_3/ReadVariableOpfc1/Abs_3/ReadVariableOp2(
fc1/ReadVariableOpfc1/ReadVariableOp2,
fc1/ReadVariableOp_1fc1/ReadVariableOp_12,
fc1/ReadVariableOp_2fc1/ReadVariableOp_22,
fc1/ReadVariableOp_3fc1/ReadVariableOp_32,
fc1/ReadVariableOp_4fc1/ReadVariableOp_42,
fc1/ReadVariableOp_5fc1/ReadVariableOp_52V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp2:
output/Abs_1/ReadVariableOpoutput/Abs_1/ReadVariableOp2:
output/Abs_3/ReadVariableOpoutput/Abs_3/ReadVariableOp2.
output/ReadVariableOpoutput/ReadVariableOp22
output/ReadVariableOp_1output/ReadVariableOp_122
output/ReadVariableOp_2output/ReadVariableOp_222
output/ReadVariableOp_3output/ReadVariableOp_322
output/ReadVariableOp_4output/ReadVariableOp_422
output/ReadVariableOp_5output/ReadVariableOp_52\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_sequential_1_layer_call_fn_28882

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28731o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_output_layer_call_fn_29638

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_28619o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
__inference_loss_fn_1_29790G
5output_kernel_regularizer_abs_readvariableop_resource:
identity��,output/kernel/Regularizer/Abs/ReadVariableOp�
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp5output_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
output/kernel/Regularizer/SumSum!output/kernel/Regularizer/Abs:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!output/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: u
NoOpNoOp-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp
� 
\
@__inference_relu1_layer_call_and_return_conditional_losses_29629

inputs
identityG
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :Q
Cast_2CastCast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AG
subSub
Cast_2:y:0sub/y:output:0*
T0*
_output_shapes
: F
Pow_2PowConst:output:0sub:z:0*
T0*
_output_shapes
: D
sub_1Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
	LessEqual	LessEqualinputs	sub_1:z:0*
T0*'
_output_shapes
:���������F
ReluReluinputs*
T0*'
_output_shapes
:���������E
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:���������D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:���������r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:���������P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:���������[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:���������I
NegNegtruediv:z:0*
T0*'
_output_shapes
:���������M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:���������R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:���������W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:���������d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:���������[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:���������P
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: L
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: l
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*'
_output_shapes
:���������T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:���������Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:���������V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:���������L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:���������[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:���������l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:���������Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_28844
	fc1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	fc1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_28315o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
�
^
B__inference_softmax_layer_call_and_return_conditional_losses_29768

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:���������Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�0
�
__inference__traced_save_29876
file_prefix)
%savev2_fc1_kernel_read_readvariableop'
#savev2_fc1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop0
,savev2_adam_fc1_kernel_m_read_readvariableop.
*savev2_adam_fc1_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop0
,savev2_adam_fc1_kernel_v_read_readvariableop.
*savev2_adam_fc1_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0%savev2_fc1_kernel_read_readvariableop#savev2_fc1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop,savev2_adam_fc1_kernel_m_read_readvariableop*savev2_adam_fc1_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop,savev2_adam_fc1_kernel_v_read_readvariableop*savev2_adam_fc1_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapesx
v: ::::: : : : : : : : : ::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
�\
�
>__inference_fc1_layer_call_and_return_conditional_losses_29575

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identity��Abs_1/ReadVariableOp�Abs_3/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�)fc1/kernel/Regularizer/Abs/ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0M
SignSignReadVariableOp:value:0*
T0*
_output_shapes

:=
AbsAbsSign:y:0*
T0*
_output_shapes

:J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
subSubsub/x:output:0Abs:y:0*
T0*
_output_shapes

:H
addAddV2Sign:y:0sub:z:0*
T0*
_output_shapes

:l
Abs_1/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0S
Abs_1AbsAbs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:K
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
LessLess	Abs_1:y:0Less/y:output:0*
T0*
_output_shapes

:O

SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3g
SelectV2SelectV2Less:z:0SelectV2/t:output:0	Abs_1:y:0*
T0*
_output_shapes

:S
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?q
GreaterEqualGreaterEqualSelectV2:output:0GreaterEqual/y:output:0*
T0*
_output_shapes

:p
ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
	ones_likeFill(ones_like/Shape/shape_as_tensor:output:0ones_like/Const:output:0*
T0*
_output_shapes

:J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
mulMulones_like:output:0mul/y:output:0*
T0*
_output_shapes

:m

SelectV2_1SelectV2GreaterEqual:z:0mul:z:0SelectV2:output:0*
T0*
_output_shapes

:M
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3U
Less_1Less	Abs_1:y:0Less_1/y:output:0*
T0*
_output_shapes

:r
!ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_1Fill*ones_like_1/Shape/shape_as_tensor:output:0ones_like_1/Const:output:0*
T0*
_output_shapes

:L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �]
mul_1Mulones_like_1:output:0mul_1/y:output:0*
T0*
_output_shapes

:H
LogLogSelectV2_1:output:0*
T0*
_output_shapes

:N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?X
truedivRealDivLog:y:0truediv/y:output:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:K
add_1AddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:P
StopGradientStopGradient	add_1:z:0*
T0*
_output_shapes

:[
add_2AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value/MinimumMinimum	add_2:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
mul_2Mulmul_2/x:output:0clip_by_value:z:0*
T0*
_output_shapes

:a

SelectV2_2SelectV2
Less_1:z:0	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes

:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
powPowpow/x:output:0SelectV2_2:output:0*
T0*
_output_shapes

:G
mul_3Muladd:z:0pow:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_3AddV2	Neg_1:y:0	mul_3:z:0*
T0*
_output_shapes

:L
mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?R
mul_4Mulmul_4/x:output:0	add_3:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_4:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_4AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_4:z:0*
T0*'
_output_shapes
:���������f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0M
Sign_1SignReadVariableOp_3:value:0*
T0*
_output_shapes
:=
Abs_2Abs
Sign_1:y:0*
T0*
_output_shapes
:L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
sub_1Subsub_1/x:output:0	Abs_2:y:0*
T0*
_output_shapes
:J
add_5AddV2
Sign_1:y:0	sub_1:z:0*
T0*
_output_shapes
:j
Abs_3/ReadVariableOpReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0O
Abs_3AbsAbs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:M
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_2Less	Abs_3:y:0Less_2/y:output:0*
T0*
_output_shapes
:Q
SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3i

SelectV2_3SelectV2
Less_2:z:0SelectV2_3/t:output:0	Abs_3:y:0*
T0*
_output_shapes
:U
GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
GreaterEqual_1GreaterEqualSelectV2_3:output:0GreaterEqual_1/y:output:0*
T0*
_output_shapes
:k
!ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_2Fill*ones_like_2/Shape/shape_as_tensor:output:0ones_like_2/Const:output:0*
T0*
_output_shapes
:L
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
mul_5Mulones_like_2:output:0mul_5/y:output:0*
T0*
_output_shapes
:o

SelectV2_4SelectV2GreaterEqual_1:z:0	mul_5:z:0SelectV2_3:output:0*
T0*
_output_shapes
:M
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_3Less	Abs_3:y:0Less_3/y:output:0*
T0*
_output_shapes
:k
!ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_3Fill*ones_like_3/Shape/shape_as_tensor:output:0ones_like_3/Const:output:0*
T0*
_output_shapes
:L
mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �Y
mul_6Mulones_like_3:output:0mul_6/y:output:0*
T0*
_output_shapes
:F
Log_1LogSelectV2_4:output:0*
T0*
_output_shapes
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?Z
	truediv_1RealDiv	Log_1:y:0truediv_1/y:output:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_1:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_1:z:0*
T0*
_output_shapes
:K
add_6AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_6:z:0*
T0*
_output_shapes
:[
add_7AddV2truediv_1:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value_1/MinimumMinimum	add_7:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?X
mul_7Mulmul_7/x:output:0clip_by_value_1:z:0*
T0*
_output_shapes
:]

SelectV2_5SelectV2
Less_3:z:0	mul_6:z:0	mul_7:z:0*
T0*
_output_shapes
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
pow_1Powpow_1/x:output:0SelectV2_5:output:0*
T0*
_output_shapes
:G
mul_8Mul	add_5:z:0	pow_1:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_8AddV2	Neg_3:y:0	mul_8:z:0*
T0*
_output_shapes
:L
mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
mul_9Mulmul_9/x:output:0	add_8:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_9:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_9AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_9:z:0*
T0*'
_output_shapes
:����������
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
fc1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
fc1/kernel/Regularizer/SumSumfc1/kernel/Regularizer/Abs:y:0%fc1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: a
fc1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
fc1/kernel/Regularizer/mulMul%fc1/kernel/Regularizer/mul/x:output:0#fc1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Abs_1/ReadVariableOp^Abs_3/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5*^fc1/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2,
Abs_1/ReadVariableOpAbs_1/ReadVariableOp2,
Abs_3/ReadVariableOpAbs_3/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
� 
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_28645

inputs
	fc1_28443:
	fc1_28445:
output_28620:
output_28622:
identity��fc1/StatefulPartitionedCall�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/StatefulPartitionedCall�,output/kernel/Regularizer/Abs/ReadVariableOp�
fc1/StatefulPartitionedCallStatefulPartitionedCallinputs	fc1_28443	fc1_28445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_fc1_layer_call_and_return_conditional_losses_28442�
relu1/PartitionedCallPartitionedCall$fc1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_relu1_layer_call_and_return_conditional_losses_28497�
output/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0output_28620output_28622*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_28619�
softmax/PartitionedCallPartitionedCall'output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_28630s
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp	fc1_28443*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
fc1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
fc1/kernel/Regularizer/SumSumfc1/kernel/Regularizer/Abs:y:0%fc1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: a
fc1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
fc1/kernel/Regularizer/mulMul%fc1/kernel/Regularizer/mul/x:output:0#fc1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpoutput_28620*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
output/kernel/Regularizer/SumSum!output/kernel/Regularizer/Abs:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^fc1/StatefulPartitionedCall*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_sequential_1_layer_call_fn_28755
	fc1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	fc1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28731o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
�
C
'__inference_softmax_layer_call_fn_29763

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_28630`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
^
B__inference_softmax_layer_call_and_return_conditional_losses_28630

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:���������Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
#__inference_fc1_layer_call_fn_29455

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_fc1_layer_call_and_return_conditional_losses_28442o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
A
%__inference_relu1_layer_call_fn_29580

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_relu1_layer_call_and_return_conditional_losses_28497`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_sequential_1_layer_call_fn_28869

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28645o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�T
�
!__inference__traced_restore_29949
file_prefix-
assignvariableop_fc1_kernel:)
assignvariableop_1_fc1_bias:2
 assignvariableop_2_output_kernel:,
assignvariableop_3_output_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: #
assignvariableop_11_total: #
assignvariableop_12_count: 7
%assignvariableop_13_adam_fc1_kernel_m:1
#assignvariableop_14_adam_fc1_bias_m::
(assignvariableop_15_adam_output_kernel_m:4
&assignvariableop_16_adam_output_bias_m:7
%assignvariableop_17_adam_fc1_kernel_v:1
#assignvariableop_18_adam_fc1_bias_v::
(assignvariableop_19_adam_output_kernel_v:4
&assignvariableop_20_adam_output_bias_v:
identity_22��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_fc1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_fc1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp assignvariableop_2_output_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_output_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp%assignvariableop_13_adam_fc1_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_adam_fc1_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_output_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_output_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_fc1_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp#assignvariableop_18_adam_fc1_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_output_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_output_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
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
_user_specified_namefile_prefix
� 
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_28811
	fc1_input
	fc1_28786:
	fc1_28788:
output_28792:
output_28794:
identity��fc1/StatefulPartitionedCall�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/StatefulPartitionedCall�,output/kernel/Regularizer/Abs/ReadVariableOp�
fc1/StatefulPartitionedCallStatefulPartitionedCall	fc1_input	fc1_28786	fc1_28788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_fc1_layer_call_and_return_conditional_losses_28442�
relu1/PartitionedCallPartitionedCall$fc1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_relu1_layer_call_and_return_conditional_losses_28497�
output/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0output_28792output_28794*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_28619�
softmax/PartitionedCallPartitionedCall'output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_28630s
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp	fc1_28786*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
fc1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
fc1/kernel/Regularizer/SumSumfc1/kernel/Regularizer/Abs:y:0%fc1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: a
fc1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
fc1/kernel/Regularizer/mulMul%fc1/kernel/Regularizer/mul/x:output:0#fc1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpoutput_28792*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
output/kernel/Regularizer/SumSum!output/kernel/Regularizer/Abs:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^fc1/StatefulPartitionedCall*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
�
�
,__inference_sequential_1_layer_call_fn_28656
	fc1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	fc1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28645o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
�

�
__inference_loss_fn_0_29779D
2fc1_kernel_regularizer_abs_readvariableop_resource:
identity��)fc1/kernel/Regularizer/Abs/ReadVariableOp�
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp2fc1_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
fc1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
fc1/kernel/Regularizer/SumSumfc1/kernel/Regularizer/Abs:y:0%fc1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: a
fc1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
fc1/kernel/Regularizer/mulMul%fc1/kernel/Regularizer/mul/x:output:0#fc1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: \
IdentityIdentityfc1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: r
NoOpNoOp*^fc1/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp
� 
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_28731

inputs
	fc1_28706:
	fc1_28708:
output_28712:
output_28714:
identity��fc1/StatefulPartitionedCall�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/StatefulPartitionedCall�,output/kernel/Regularizer/Abs/ReadVariableOp�
fc1/StatefulPartitionedCallStatefulPartitionedCallinputs	fc1_28706	fc1_28708*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_fc1_layer_call_and_return_conditional_losses_28442�
relu1/PartitionedCallPartitionedCall$fc1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_relu1_layer_call_and_return_conditional_losses_28497�
output/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0output_28712output_28714*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_28619�
softmax/PartitionedCallPartitionedCall'output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_28630s
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp	fc1_28706*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
fc1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
fc1/kernel/Regularizer/SumSumfc1/kernel/Regularizer/Abs:y:0%fc1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: a
fc1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
fc1/kernel/Regularizer/mulMul%fc1/kernel/Regularizer/mul/x:output:0#fc1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpoutput_28712*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
output/kernel/Regularizer/SumSum!output/kernel/Regularizer/Abs:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^fc1/StatefulPartitionedCall*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
 __inference__wrapped_model_28315
	fc1_input:
(sequential_1_fc1_readvariableop_resource:8
*sequential_1_fc1_readvariableop_3_resource:=
+sequential_1_output_readvariableop_resource:;
-sequential_1_output_readvariableop_3_resource:
identity��%sequential_1/fc1/Abs_1/ReadVariableOp�%sequential_1/fc1/Abs_3/ReadVariableOp�sequential_1/fc1/ReadVariableOp�!sequential_1/fc1/ReadVariableOp_1�!sequential_1/fc1/ReadVariableOp_2�!sequential_1/fc1/ReadVariableOp_3�!sequential_1/fc1/ReadVariableOp_4�!sequential_1/fc1/ReadVariableOp_5�(sequential_1/output/Abs_1/ReadVariableOp�(sequential_1/output/Abs_3/ReadVariableOp�"sequential_1/output/ReadVariableOp�$sequential_1/output/ReadVariableOp_1�$sequential_1/output/ReadVariableOp_2�$sequential_1/output/ReadVariableOp_3�$sequential_1/output/ReadVariableOp_4�$sequential_1/output/ReadVariableOp_5�
sequential_1/fc1/ReadVariableOpReadVariableOp(sequential_1_fc1_readvariableop_resource*
_output_shapes

:*
dtype0o
sequential_1/fc1/SignSign'sequential_1/fc1/ReadVariableOp:value:0*
T0*
_output_shapes

:_
sequential_1/fc1/AbsAbssequential_1/fc1/Sign:y:0*
T0*
_output_shapes

:[
sequential_1/fc1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
sequential_1/fc1/subSubsequential_1/fc1/sub/x:output:0sequential_1/fc1/Abs:y:0*
T0*
_output_shapes

:{
sequential_1/fc1/addAddV2sequential_1/fc1/Sign:y:0sequential_1/fc1/sub:z:0*
T0*
_output_shapes

:�
%sequential_1/fc1/Abs_1/ReadVariableOpReadVariableOp(sequential_1_fc1_readvariableop_resource*
_output_shapes

:*
dtype0u
sequential_1/fc1/Abs_1Abs-sequential_1/fc1/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:\
sequential_1/fc1/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/fc1/LessLesssequential_1/fc1/Abs_1:y:0 sequential_1/fc1/Less/y:output:0*
T0*
_output_shapes

:`
sequential_1/fc1/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/fc1/SelectV2SelectV2sequential_1/fc1/Less:z:0$sequential_1/fc1/SelectV2/t:output:0sequential_1/fc1/Abs_1:y:0*
T0*
_output_shapes

:d
sequential_1/fc1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/GreaterEqualGreaterEqual"sequential_1/fc1/SelectV2:output:0(sequential_1/fc1/GreaterEqual/y:output:0*
T0*
_output_shapes

:�
0sequential_1/fc1/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      e
 sequential_1/fc1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/ones_likeFill9sequential_1/fc1/ones_like/Shape/shape_as_tensor:output:0)sequential_1/fc1/ones_like/Const:output:0*
T0*
_output_shapes

:[
sequential_1/fc1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/mulMul#sequential_1/fc1/ones_like:output:0sequential_1/fc1/mul/y:output:0*
T0*
_output_shapes

:�
sequential_1/fc1/SelectV2_1SelectV2!sequential_1/fc1/GreaterEqual:z:0sequential_1/fc1/mul:z:0"sequential_1/fc1/SelectV2:output:0*
T0*
_output_shapes

:^
sequential_1/fc1/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/fc1/Less_1Lesssequential_1/fc1/Abs_1:y:0"sequential_1/fc1/Less_1/y:output:0*
T0*
_output_shapes

:�
2sequential_1/fc1/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      g
"sequential_1/fc1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/ones_like_1Fill;sequential_1/fc1/ones_like_1/Shape/shape_as_tensor:output:0+sequential_1/fc1/ones_like_1/Const:output:0*
T0*
_output_shapes

:]
sequential_1/fc1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential_1/fc1/mul_1Mul%sequential_1/fc1/ones_like_1:output:0!sequential_1/fc1/mul_1/y:output:0*
T0*
_output_shapes

:j
sequential_1/fc1/LogLog$sequential_1/fc1/SelectV2_1:output:0*
T0*
_output_shapes

:_
sequential_1/fc1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?�
sequential_1/fc1/truedivRealDivsequential_1/fc1/Log:y:0#sequential_1/fc1/truediv/y:output:0*
T0*
_output_shapes

:b
sequential_1/fc1/NegNegsequential_1/fc1/truediv:z:0*
T0*
_output_shapes

:f
sequential_1/fc1/RoundRoundsequential_1/fc1/truediv:z:0*
T0*
_output_shapes

:~
sequential_1/fc1/add_1AddV2sequential_1/fc1/Neg:y:0sequential_1/fc1/Round:y:0*
T0*
_output_shapes

:r
sequential_1/fc1/StopGradientStopGradientsequential_1/fc1/add_1:z:0*
T0*
_output_shapes

:�
sequential_1/fc1/add_2AddV2sequential_1/fc1/truediv:z:0&sequential_1/fc1/StopGradient:output:0*
T0*
_output_shapes

:m
(sequential_1/fc1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
&sequential_1/fc1/clip_by_value/MinimumMinimumsequential_1/fc1/add_2:z:01sequential_1/fc1/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:e
 sequential_1/fc1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential_1/fc1/clip_by_valueMaximum*sequential_1/fc1/clip_by_value/Minimum:z:0)sequential_1/fc1/clip_by_value/y:output:0*
T0*
_output_shapes

:]
sequential_1/fc1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/mul_2Mul!sequential_1/fc1/mul_2/x:output:0"sequential_1/fc1/clip_by_value:z:0*
T0*
_output_shapes

:�
sequential_1/fc1/SelectV2_2SelectV2sequential_1/fc1/Less_1:z:0sequential_1/fc1/mul_1:z:0sequential_1/fc1/mul_2:z:0*
T0*
_output_shapes

:[
sequential_1/fc1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
sequential_1/fc1/powPowsequential_1/fc1/pow/x:output:0$sequential_1/fc1/SelectV2_2:output:0*
T0*
_output_shapes

:z
sequential_1/fc1/mul_3Mulsequential_1/fc1/add:z:0sequential_1/fc1/pow:z:0*
T0*
_output_shapes

:�
!sequential_1/fc1/ReadVariableOp_1ReadVariableOp(sequential_1_fc1_readvariableop_resource*
_output_shapes

:*
dtype0q
sequential_1/fc1/Neg_1Neg)sequential_1/fc1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
sequential_1/fc1/add_3AddV2sequential_1/fc1/Neg_1:y:0sequential_1/fc1/mul_3:z:0*
T0*
_output_shapes

:]
sequential_1/fc1/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/mul_4Mul!sequential_1/fc1/mul_4/x:output:0sequential_1/fc1/add_3:z:0*
T0*
_output_shapes

:t
sequential_1/fc1/StopGradient_1StopGradientsequential_1/fc1/mul_4:z:0*
T0*
_output_shapes

:�
!sequential_1/fc1/ReadVariableOp_2ReadVariableOp(sequential_1_fc1_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_1/fc1/add_4AddV2)sequential_1/fc1/ReadVariableOp_2:value:0(sequential_1/fc1/StopGradient_1:output:0*
T0*
_output_shapes

:z
sequential_1/fc1/MatMulMatMul	fc1_inputsequential_1/fc1/add_4:z:0*
T0*'
_output_shapes
:����������
!sequential_1/fc1/ReadVariableOp_3ReadVariableOp*sequential_1_fc1_readvariableop_3_resource*
_output_shapes
:*
dtype0o
sequential_1/fc1/Sign_1Sign)sequential_1/fc1/ReadVariableOp_3:value:0*
T0*
_output_shapes
:_
sequential_1/fc1/Abs_2Abssequential_1/fc1/Sign_1:y:0*
T0*
_output_shapes
:]
sequential_1/fc1/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/sub_1Sub!sequential_1/fc1/sub_1/x:output:0sequential_1/fc1/Abs_2:y:0*
T0*
_output_shapes
:}
sequential_1/fc1/add_5AddV2sequential_1/fc1/Sign_1:y:0sequential_1/fc1/sub_1:z:0*
T0*
_output_shapes
:�
%sequential_1/fc1/Abs_3/ReadVariableOpReadVariableOp*sequential_1_fc1_readvariableop_3_resource*
_output_shapes
:*
dtype0q
sequential_1/fc1/Abs_3Abs-sequential_1/fc1/Abs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:^
sequential_1/fc1/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/fc1/Less_2Lesssequential_1/fc1/Abs_3:y:0"sequential_1/fc1/Less_2/y:output:0*
T0*
_output_shapes
:b
sequential_1/fc1/SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/fc1/SelectV2_3SelectV2sequential_1/fc1/Less_2:z:0&sequential_1/fc1/SelectV2_3/t:output:0sequential_1/fc1/Abs_3:y:0*
T0*
_output_shapes
:f
!sequential_1/fc1/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/GreaterEqual_1GreaterEqual$sequential_1/fc1/SelectV2_3:output:0*sequential_1/fc1/GreaterEqual_1/y:output:0*
T0*
_output_shapes
:|
2sequential_1/fc1/ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:g
"sequential_1/fc1/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/ones_like_2Fill;sequential_1/fc1/ones_like_2/Shape/shape_as_tensor:output:0+sequential_1/fc1/ones_like_2/Const:output:0*
T0*
_output_shapes
:]
sequential_1/fc1/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/mul_5Mul%sequential_1/fc1/ones_like_2:output:0!sequential_1/fc1/mul_5/y:output:0*
T0*
_output_shapes
:�
sequential_1/fc1/SelectV2_4SelectV2#sequential_1/fc1/GreaterEqual_1:z:0sequential_1/fc1/mul_5:z:0$sequential_1/fc1/SelectV2_3:output:0*
T0*
_output_shapes
:^
sequential_1/fc1/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/fc1/Less_3Lesssequential_1/fc1/Abs_3:y:0"sequential_1/fc1/Less_3/y:output:0*
T0*
_output_shapes
:|
2sequential_1/fc1/ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:g
"sequential_1/fc1/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/ones_like_3Fill;sequential_1/fc1/ones_like_3/Shape/shape_as_tensor:output:0+sequential_1/fc1/ones_like_3/Const:output:0*
T0*
_output_shapes
:]
sequential_1/fc1/mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential_1/fc1/mul_6Mul%sequential_1/fc1/ones_like_3:output:0!sequential_1/fc1/mul_6/y:output:0*
T0*
_output_shapes
:h
sequential_1/fc1/Log_1Log$sequential_1/fc1/SelectV2_4:output:0*
T0*
_output_shapes
:a
sequential_1/fc1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?�
sequential_1/fc1/truediv_1RealDivsequential_1/fc1/Log_1:y:0%sequential_1/fc1/truediv_1/y:output:0*
T0*
_output_shapes
:b
sequential_1/fc1/Neg_2Negsequential_1/fc1/truediv_1:z:0*
T0*
_output_shapes
:f
sequential_1/fc1/Round_1Roundsequential_1/fc1/truediv_1:z:0*
T0*
_output_shapes
:~
sequential_1/fc1/add_6AddV2sequential_1/fc1/Neg_2:y:0sequential_1/fc1/Round_1:y:0*
T0*
_output_shapes
:p
sequential_1/fc1/StopGradient_2StopGradientsequential_1/fc1/add_6:z:0*
T0*
_output_shapes
:�
sequential_1/fc1/add_7AddV2sequential_1/fc1/truediv_1:z:0(sequential_1/fc1/StopGradient_2:output:0*
T0*
_output_shapes
:o
*sequential_1/fc1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
(sequential_1/fc1/clip_by_value_1/MinimumMinimumsequential_1/fc1/add_7:z:03sequential_1/fc1/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:g
"sequential_1/fc1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
 sequential_1/fc1/clip_by_value_1Maximum,sequential_1/fc1/clip_by_value_1/Minimum:z:0+sequential_1/fc1/clip_by_value_1/y:output:0*
T0*
_output_shapes
:]
sequential_1/fc1/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/mul_7Mul!sequential_1/fc1/mul_7/x:output:0$sequential_1/fc1/clip_by_value_1:z:0*
T0*
_output_shapes
:�
sequential_1/fc1/SelectV2_5SelectV2sequential_1/fc1/Less_3:z:0sequential_1/fc1/mul_6:z:0sequential_1/fc1/mul_7:z:0*
T0*
_output_shapes
:]
sequential_1/fc1/pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
sequential_1/fc1/pow_1Pow!sequential_1/fc1/pow_1/x:output:0$sequential_1/fc1/SelectV2_5:output:0*
T0*
_output_shapes
:z
sequential_1/fc1/mul_8Mulsequential_1/fc1/add_5:z:0sequential_1/fc1/pow_1:z:0*
T0*
_output_shapes
:�
!sequential_1/fc1/ReadVariableOp_4ReadVariableOp*sequential_1_fc1_readvariableop_3_resource*
_output_shapes
:*
dtype0m
sequential_1/fc1/Neg_3Neg)sequential_1/fc1/ReadVariableOp_4:value:0*
T0*
_output_shapes
:|
sequential_1/fc1/add_8AddV2sequential_1/fc1/Neg_3:y:0sequential_1/fc1/mul_8:z:0*
T0*
_output_shapes
:]
sequential_1/fc1/mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/fc1/mul_9Mul!sequential_1/fc1/mul_9/x:output:0sequential_1/fc1/add_8:z:0*
T0*
_output_shapes
:p
sequential_1/fc1/StopGradient_3StopGradientsequential_1/fc1/mul_9:z:0*
T0*
_output_shapes
:�
!sequential_1/fc1/ReadVariableOp_5ReadVariableOp*sequential_1_fc1_readvariableop_3_resource*
_output_shapes
:*
dtype0�
sequential_1/fc1/add_9AddV2)sequential_1/fc1/ReadVariableOp_5:value:0(sequential_1/fc1/StopGradient_3:output:0*
T0*
_output_shapes
:�
sequential_1/fc1/BiasAddBiasAdd!sequential_1/fc1/MatMul:product:0sequential_1/fc1/add_9:z:0*
T0*'
_output_shapes
:���������Z
sequential_1/relu1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :Z
sequential_1/relu1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_1/relu1/PowPow!sequential_1/relu1/Pow/x:output:0!sequential_1/relu1/Pow/y:output:0*
T0*
_output_shapes
: k
sequential_1/relu1/CastCastsequential_1/relu1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: \
sequential_1/relu1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :\
sequential_1/relu1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_1/relu1/Pow_1Pow#sequential_1/relu1/Pow_1/x:output:0#sequential_1/relu1/Pow_1/y:output:0*
T0*
_output_shapes
: o
sequential_1/relu1/Cast_1Castsequential_1/relu1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: ]
sequential_1/relu1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @]
sequential_1/relu1/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :w
sequential_1/relu1/Cast_2Cast$sequential_1/relu1/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ]
sequential_1/relu1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
sequential_1/relu1/subSubsequential_1/relu1/Cast_2:y:0!sequential_1/relu1/sub/y:output:0*
T0*
_output_shapes
: 
sequential_1/relu1/Pow_2Pow!sequential_1/relu1/Const:output:0sequential_1/relu1/sub:z:0*
T0*
_output_shapes
: }
sequential_1/relu1/sub_1Subsequential_1/relu1/Cast_1:y:0sequential_1/relu1/Pow_2:z:0*
T0*
_output_shapes
: �
sequential_1/relu1/LessEqual	LessEqual!sequential_1/fc1/BiasAdd:output:0sequential_1/relu1/sub_1:z:0*
T0*'
_output_shapes
:���������t
sequential_1/relu1/ReluRelu!sequential_1/fc1/BiasAdd:output:0*
T0*'
_output_shapes
:���������s
"sequential_1/relu1/ones_like/ShapeShape!sequential_1/fc1/BiasAdd:output:0*
T0*
_output_shapes
:g
"sequential_1/relu1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/relu1/ones_likeFill+sequential_1/relu1/ones_like/Shape:output:0+sequential_1/relu1/ones_like/Const:output:0*
T0*'
_output_shapes
:���������}
sequential_1/relu1/sub_2Subsequential_1/relu1/Cast_1:y:0sequential_1/relu1/Pow_2:z:0*
T0*
_output_shapes
: �
sequential_1/relu1/mulMul%sequential_1/relu1/ones_like:output:0sequential_1/relu1/sub_2:z:0*
T0*'
_output_shapes
:����������
sequential_1/relu1/SelectV2SelectV2 sequential_1/relu1/LessEqual:z:0%sequential_1/relu1/Relu:activations:0sequential_1/relu1/mul:z:0*
T0*'
_output_shapes
:����������
sequential_1/relu1/mul_1Mul!sequential_1/fc1/BiasAdd:output:0sequential_1/relu1/Cast:y:0*
T0*'
_output_shapes
:����������
sequential_1/relu1/truedivRealDivsequential_1/relu1/mul_1:z:0sequential_1/relu1/Cast_1:y:0*
T0*'
_output_shapes
:���������o
sequential_1/relu1/NegNegsequential_1/relu1/truediv:z:0*
T0*'
_output_shapes
:���������s
sequential_1/relu1/RoundRoundsequential_1/relu1/truediv:z:0*
T0*'
_output_shapes
:����������
sequential_1/relu1/addAddV2sequential_1/relu1/Neg:y:0sequential_1/relu1/Round:y:0*
T0*'
_output_shapes
:���������}
sequential_1/relu1/StopGradientStopGradientsequential_1/relu1/add:z:0*
T0*'
_output_shapes
:����������
sequential_1/relu1/add_1AddV2sequential_1/relu1/truediv:z:0(sequential_1/relu1/StopGradient:output:0*
T0*'
_output_shapes
:����������
sequential_1/relu1/truediv_1RealDivsequential_1/relu1/add_1:z:0sequential_1/relu1/Cast:y:0*
T0*'
_output_shapes
:���������c
sequential_1/relu1/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/relu1/truediv_2RealDiv'sequential_1/relu1/truediv_2/x:output:0sequential_1/relu1/Cast:y:0*
T0*
_output_shapes
: _
sequential_1/relu1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/relu1/sub_3Sub#sequential_1/relu1/sub_3/x:output:0 sequential_1/relu1/truediv_2:z:0*
T0*
_output_shapes
: �
(sequential_1/relu1/clip_by_value/MinimumMinimum sequential_1/relu1/truediv_1:z:0sequential_1/relu1/sub_3:z:0*
T0*'
_output_shapes
:���������g
"sequential_1/relu1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
 sequential_1/relu1/clip_by_valueMaximum,sequential_1/relu1/clip_by_value/Minimum:z:0+sequential_1/relu1/clip_by_value/y:output:0*
T0*'
_output_shapes
:����������
sequential_1/relu1/mul_2Mulsequential_1/relu1/Cast_1:y:0$sequential_1/relu1/clip_by_value:z:0*
T0*'
_output_shapes
:���������w
sequential_1/relu1/Neg_1Neg$sequential_1/relu1/SelectV2:output:0*
T0*'
_output_shapes
:����������
sequential_1/relu1/add_2AddV2sequential_1/relu1/Neg_1:y:0sequential_1/relu1/mul_2:z:0*
T0*'
_output_shapes
:���������_
sequential_1/relu1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/relu1/mul_3Mul#sequential_1/relu1/mul_3/x:output:0sequential_1/relu1/add_2:z:0*
T0*'
_output_shapes
:����������
!sequential_1/relu1/StopGradient_1StopGradientsequential_1/relu1/mul_3:z:0*
T0*'
_output_shapes
:����������
sequential_1/relu1/add_3AddV2$sequential_1/relu1/SelectV2:output:0*sequential_1/relu1/StopGradient_1:output:0*
T0*'
_output_shapes
:����������
"sequential_1/output/ReadVariableOpReadVariableOp+sequential_1_output_readvariableop_resource*
_output_shapes

:*
dtype0u
sequential_1/output/SignSign*sequential_1/output/ReadVariableOp:value:0*
T0*
_output_shapes

:e
sequential_1/output/AbsAbssequential_1/output/Sign:y:0*
T0*
_output_shapes

:^
sequential_1/output/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/subSub"sequential_1/output/sub/x:output:0sequential_1/output/Abs:y:0*
T0*
_output_shapes

:�
sequential_1/output/addAddV2sequential_1/output/Sign:y:0sequential_1/output/sub:z:0*
T0*
_output_shapes

:�
(sequential_1/output/Abs_1/ReadVariableOpReadVariableOp+sequential_1_output_readvariableop_resource*
_output_shapes

:*
dtype0{
sequential_1/output/Abs_1Abs0sequential_1/output/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:_
sequential_1/output/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/output/LessLesssequential_1/output/Abs_1:y:0#sequential_1/output/Less/y:output:0*
T0*
_output_shapes

:c
sequential_1/output/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/output/SelectV2SelectV2sequential_1/output/Less:z:0'sequential_1/output/SelectV2/t:output:0sequential_1/output/Abs_1:y:0*
T0*
_output_shapes

:g
"sequential_1/output/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
 sequential_1/output/GreaterEqualGreaterEqual%sequential_1/output/SelectV2:output:0+sequential_1/output/GreaterEqual/y:output:0*
T0*
_output_shapes

:�
3sequential_1/output/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      h
#sequential_1/output/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/ones_likeFill<sequential_1/output/ones_like/Shape/shape_as_tensor:output:0,sequential_1/output/ones_like/Const:output:0*
T0*
_output_shapes

:^
sequential_1/output/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/mulMul&sequential_1/output/ones_like:output:0"sequential_1/output/mul/y:output:0*
T0*
_output_shapes

:�
sequential_1/output/SelectV2_1SelectV2$sequential_1/output/GreaterEqual:z:0sequential_1/output/mul:z:0%sequential_1/output/SelectV2:output:0*
T0*
_output_shapes

:a
sequential_1/output/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/output/Less_1Lesssequential_1/output/Abs_1:y:0%sequential_1/output/Less_1/y:output:0*
T0*
_output_shapes

:�
5sequential_1/output/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      j
%sequential_1/output/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/ones_like_1Fill>sequential_1/output/ones_like_1/Shape/shape_as_tensor:output:0.sequential_1/output/ones_like_1/Const:output:0*
T0*
_output_shapes

:`
sequential_1/output/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential_1/output/mul_1Mul(sequential_1/output/ones_like_1:output:0$sequential_1/output/mul_1/y:output:0*
T0*
_output_shapes

:p
sequential_1/output/LogLog'sequential_1/output/SelectV2_1:output:0*
T0*
_output_shapes

:b
sequential_1/output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?�
sequential_1/output/truedivRealDivsequential_1/output/Log:y:0&sequential_1/output/truediv/y:output:0*
T0*
_output_shapes

:h
sequential_1/output/NegNegsequential_1/output/truediv:z:0*
T0*
_output_shapes

:l
sequential_1/output/RoundRoundsequential_1/output/truediv:z:0*
T0*
_output_shapes

:�
sequential_1/output/add_1AddV2sequential_1/output/Neg:y:0sequential_1/output/Round:y:0*
T0*
_output_shapes

:x
 sequential_1/output/StopGradientStopGradientsequential_1/output/add_1:z:0*
T0*
_output_shapes

:�
sequential_1/output/add_2AddV2sequential_1/output/truediv:z:0)sequential_1/output/StopGradient:output:0*
T0*
_output_shapes

:p
+sequential_1/output/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
)sequential_1/output/clip_by_value/MinimumMinimumsequential_1/output/add_2:z:04sequential_1/output/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:h
#sequential_1/output/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
!sequential_1/output/clip_by_valueMaximum-sequential_1/output/clip_by_value/Minimum:z:0,sequential_1/output/clip_by_value/y:output:0*
T0*
_output_shapes

:`
sequential_1/output/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/mul_2Mul$sequential_1/output/mul_2/x:output:0%sequential_1/output/clip_by_value:z:0*
T0*
_output_shapes

:�
sequential_1/output/SelectV2_2SelectV2sequential_1/output/Less_1:z:0sequential_1/output/mul_1:z:0sequential_1/output/mul_2:z:0*
T0*
_output_shapes

:^
sequential_1/output/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
sequential_1/output/powPow"sequential_1/output/pow/x:output:0'sequential_1/output/SelectV2_2:output:0*
T0*
_output_shapes

:�
sequential_1/output/mul_3Mulsequential_1/output/add:z:0sequential_1/output/pow:z:0*
T0*
_output_shapes

:�
$sequential_1/output/ReadVariableOp_1ReadVariableOp+sequential_1_output_readvariableop_resource*
_output_shapes

:*
dtype0w
sequential_1/output/Neg_1Neg,sequential_1/output/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
sequential_1/output/add_3AddV2sequential_1/output/Neg_1:y:0sequential_1/output/mul_3:z:0*
T0*
_output_shapes

:`
sequential_1/output/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/mul_4Mul$sequential_1/output/mul_4/x:output:0sequential_1/output/add_3:z:0*
T0*
_output_shapes

:z
"sequential_1/output/StopGradient_1StopGradientsequential_1/output/mul_4:z:0*
T0*
_output_shapes

:�
$sequential_1/output/ReadVariableOp_2ReadVariableOp+sequential_1_output_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_1/output/add_4AddV2,sequential_1/output/ReadVariableOp_2:value:0+sequential_1/output/StopGradient_1:output:0*
T0*
_output_shapes

:�
sequential_1/output/MatMulMatMulsequential_1/relu1/add_3:z:0sequential_1/output/add_4:z:0*
T0*'
_output_shapes
:����������
$sequential_1/output/ReadVariableOp_3ReadVariableOp-sequential_1_output_readvariableop_3_resource*
_output_shapes
:*
dtype0u
sequential_1/output/Sign_1Sign,sequential_1/output/ReadVariableOp_3:value:0*
T0*
_output_shapes
:e
sequential_1/output/Abs_2Abssequential_1/output/Sign_1:y:0*
T0*
_output_shapes
:`
sequential_1/output/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/sub_1Sub$sequential_1/output/sub_1/x:output:0sequential_1/output/Abs_2:y:0*
T0*
_output_shapes
:�
sequential_1/output/add_5AddV2sequential_1/output/Sign_1:y:0sequential_1/output/sub_1:z:0*
T0*
_output_shapes
:�
(sequential_1/output/Abs_3/ReadVariableOpReadVariableOp-sequential_1_output_readvariableop_3_resource*
_output_shapes
:*
dtype0w
sequential_1/output/Abs_3Abs0sequential_1/output/Abs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:a
sequential_1/output/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/output/Less_2Lesssequential_1/output/Abs_3:y:0%sequential_1/output/Less_2/y:output:0*
T0*
_output_shapes
:e
 sequential_1/output/SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/output/SelectV2_3SelectV2sequential_1/output/Less_2:z:0)sequential_1/output/SelectV2_3/t:output:0sequential_1/output/Abs_3:y:0*
T0*
_output_shapes
:i
$sequential_1/output/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"sequential_1/output/GreaterEqual_1GreaterEqual'sequential_1/output/SelectV2_3:output:0-sequential_1/output/GreaterEqual_1/y:output:0*
T0*
_output_shapes
:
5sequential_1/output/ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:j
%sequential_1/output/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/ones_like_2Fill>sequential_1/output/ones_like_2/Shape/shape_as_tensor:output:0.sequential_1/output/ones_like_2/Const:output:0*
T0*
_output_shapes
:`
sequential_1/output/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/mul_5Mul(sequential_1/output/ones_like_2:output:0$sequential_1/output/mul_5/y:output:0*
T0*
_output_shapes
:�
sequential_1/output/SelectV2_4SelectV2&sequential_1/output/GreaterEqual_1:z:0sequential_1/output/mul_5:z:0'sequential_1/output/SelectV2_3:output:0*
T0*
_output_shapes
:a
sequential_1/output/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential_1/output/Less_3Lesssequential_1/output/Abs_3:y:0%sequential_1/output/Less_3/y:output:0*
T0*
_output_shapes
:
5sequential_1/output/ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:j
%sequential_1/output/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/ones_like_3Fill>sequential_1/output/ones_like_3/Shape/shape_as_tensor:output:0.sequential_1/output/ones_like_3/Const:output:0*
T0*
_output_shapes
:`
sequential_1/output/mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential_1/output/mul_6Mul(sequential_1/output/ones_like_3:output:0$sequential_1/output/mul_6/y:output:0*
T0*
_output_shapes
:n
sequential_1/output/Log_1Log'sequential_1/output/SelectV2_4:output:0*
T0*
_output_shapes
:d
sequential_1/output/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?�
sequential_1/output/truediv_1RealDivsequential_1/output/Log_1:y:0(sequential_1/output/truediv_1/y:output:0*
T0*
_output_shapes
:h
sequential_1/output/Neg_2Neg!sequential_1/output/truediv_1:z:0*
T0*
_output_shapes
:l
sequential_1/output/Round_1Round!sequential_1/output/truediv_1:z:0*
T0*
_output_shapes
:�
sequential_1/output/add_6AddV2sequential_1/output/Neg_2:y:0sequential_1/output/Round_1:y:0*
T0*
_output_shapes
:v
"sequential_1/output/StopGradient_2StopGradientsequential_1/output/add_6:z:0*
T0*
_output_shapes
:�
sequential_1/output/add_7AddV2!sequential_1/output/truediv_1:z:0+sequential_1/output/StopGradient_2:output:0*
T0*
_output_shapes
:r
-sequential_1/output/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
+sequential_1/output/clip_by_value_1/MinimumMinimumsequential_1/output/add_7:z:06sequential_1/output/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:j
%sequential_1/output/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
#sequential_1/output/clip_by_value_1Maximum/sequential_1/output/clip_by_value_1/Minimum:z:0.sequential_1/output/clip_by_value_1/y:output:0*
T0*
_output_shapes
:`
sequential_1/output/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/mul_7Mul$sequential_1/output/mul_7/x:output:0'sequential_1/output/clip_by_value_1:z:0*
T0*
_output_shapes
:�
sequential_1/output/SelectV2_5SelectV2sequential_1/output/Less_3:z:0sequential_1/output/mul_6:z:0sequential_1/output/mul_7:z:0*
T0*
_output_shapes
:`
sequential_1/output/pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
sequential_1/output/pow_1Pow$sequential_1/output/pow_1/x:output:0'sequential_1/output/SelectV2_5:output:0*
T0*
_output_shapes
:�
sequential_1/output/mul_8Mulsequential_1/output/add_5:z:0sequential_1/output/pow_1:z:0*
T0*
_output_shapes
:�
$sequential_1/output/ReadVariableOp_4ReadVariableOp-sequential_1_output_readvariableop_3_resource*
_output_shapes
:*
dtype0s
sequential_1/output/Neg_3Neg,sequential_1/output/ReadVariableOp_4:value:0*
T0*
_output_shapes
:�
sequential_1/output/add_8AddV2sequential_1/output/Neg_3:y:0sequential_1/output/mul_8:z:0*
T0*
_output_shapes
:`
sequential_1/output/mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential_1/output/mul_9Mul$sequential_1/output/mul_9/x:output:0sequential_1/output/add_8:z:0*
T0*
_output_shapes
:v
"sequential_1/output/StopGradient_3StopGradientsequential_1/output/mul_9:z:0*
T0*
_output_shapes
:�
$sequential_1/output/ReadVariableOp_5ReadVariableOp-sequential_1_output_readvariableop_3_resource*
_output_shapes
:*
dtype0�
sequential_1/output/add_9AddV2,sequential_1/output/ReadVariableOp_5:value:0+sequential_1/output/StopGradient_3:output:0*
T0*
_output_shapes
:�
sequential_1/output/BiasAddBiasAdd$sequential_1/output/MatMul:product:0sequential_1/output/add_9:z:0*
T0*'
_output_shapes
:���������
sequential_1/softmax/SoftmaxSoftmax$sequential_1/output/BiasAdd:output:0*
T0*'
_output_shapes
:���������u
IdentityIdentity&sequential_1/softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^sequential_1/fc1/Abs_1/ReadVariableOp&^sequential_1/fc1/Abs_3/ReadVariableOp ^sequential_1/fc1/ReadVariableOp"^sequential_1/fc1/ReadVariableOp_1"^sequential_1/fc1/ReadVariableOp_2"^sequential_1/fc1/ReadVariableOp_3"^sequential_1/fc1/ReadVariableOp_4"^sequential_1/fc1/ReadVariableOp_5)^sequential_1/output/Abs_1/ReadVariableOp)^sequential_1/output/Abs_3/ReadVariableOp#^sequential_1/output/ReadVariableOp%^sequential_1/output/ReadVariableOp_1%^sequential_1/output/ReadVariableOp_2%^sequential_1/output/ReadVariableOp_3%^sequential_1/output/ReadVariableOp_4%^sequential_1/output/ReadVariableOp_5*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2N
%sequential_1/fc1/Abs_1/ReadVariableOp%sequential_1/fc1/Abs_1/ReadVariableOp2N
%sequential_1/fc1/Abs_3/ReadVariableOp%sequential_1/fc1/Abs_3/ReadVariableOp2B
sequential_1/fc1/ReadVariableOpsequential_1/fc1/ReadVariableOp2F
!sequential_1/fc1/ReadVariableOp_1!sequential_1/fc1/ReadVariableOp_12F
!sequential_1/fc1/ReadVariableOp_2!sequential_1/fc1/ReadVariableOp_22F
!sequential_1/fc1/ReadVariableOp_3!sequential_1/fc1/ReadVariableOp_32F
!sequential_1/fc1/ReadVariableOp_4!sequential_1/fc1/ReadVariableOp_42F
!sequential_1/fc1/ReadVariableOp_5!sequential_1/fc1/ReadVariableOp_52T
(sequential_1/output/Abs_1/ReadVariableOp(sequential_1/output/Abs_1/ReadVariableOp2T
(sequential_1/output/Abs_3/ReadVariableOp(sequential_1/output/Abs_3/ReadVariableOp2H
"sequential_1/output/ReadVariableOp"sequential_1/output/ReadVariableOp2L
$sequential_1/output/ReadVariableOp_1$sequential_1/output/ReadVariableOp_12L
$sequential_1/output/ReadVariableOp_2$sequential_1/output/ReadVariableOp_22L
$sequential_1/output/ReadVariableOp_3$sequential_1/output/ReadVariableOp_32L
$sequential_1/output/ReadVariableOp_4$sequential_1/output/ReadVariableOp_42L
$sequential_1/output/ReadVariableOp_5$sequential_1/output/ReadVariableOp_5:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
��
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_29446

inputs-
fc1_readvariableop_resource:+
fc1_readvariableop_3_resource:0
output_readvariableop_resource:.
 output_readvariableop_3_resource:
identity��fc1/Abs_1/ReadVariableOp�fc1/Abs_3/ReadVariableOp�fc1/ReadVariableOp�fc1/ReadVariableOp_1�fc1/ReadVariableOp_2�fc1/ReadVariableOp_3�fc1/ReadVariableOp_4�fc1/ReadVariableOp_5�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/Abs_1/ReadVariableOp�output/Abs_3/ReadVariableOp�output/ReadVariableOp�output/ReadVariableOp_1�output/ReadVariableOp_2�output/ReadVariableOp_3�output/ReadVariableOp_4�output/ReadVariableOp_5�,output/kernel/Regularizer/Abs/ReadVariableOpn
fc1/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0U
fc1/SignSignfc1/ReadVariableOp:value:0*
T0*
_output_shapes

:E
fc1/AbsAbsfc1/Sign:y:0*
T0*
_output_shapes

:N
	fc1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?X
fc1/subSubfc1/sub/x:output:0fc1/Abs:y:0*
T0*
_output_shapes

:T
fc1/addAddV2fc1/Sign:y:0fc1/sub:z:0*
T0*
_output_shapes

:t
fc1/Abs_1/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0[
	fc1/Abs_1Abs fc1/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:O

fc1/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3]
fc1/LessLessfc1/Abs_1:y:0fc1/Less/y:output:0*
T0*
_output_shapes

:S
fc1/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3w
fc1/SelectV2SelectV2fc1/Less:z:0fc1/SelectV2/t:output:0fc1/Abs_1:y:0*
T0*
_output_shapes

:W
fc1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?}
fc1/GreaterEqualGreaterEqualfc1/SelectV2:output:0fc1/GreaterEqual/y:output:0*
T0*
_output_shapes

:t
#fc1/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      X
fc1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_likeFill,fc1/ones_like/Shape/shape_as_tensor:output:0fc1/ones_like/Const:output:0*
T0*
_output_shapes

:N
	fc1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
fc1/mulMulfc1/ones_like:output:0fc1/mul/y:output:0*
T0*
_output_shapes

:}
fc1/SelectV2_1SelectV2fc1/GreaterEqual:z:0fc1/mul:z:0fc1/SelectV2:output:0*
T0*
_output_shapes

:Q
fc1/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3a

fc1/Less_1Lessfc1/Abs_1:y:0fc1/Less_1/y:output:0*
T0*
_output_shapes

:v
%fc1/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      Z
fc1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_like_1Fill.fc1/ones_like_1/Shape/shape_as_tensor:output:0fc1/ones_like_1/Const:output:0*
T0*
_output_shapes

:P
fc1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �i
	fc1/mul_1Mulfc1/ones_like_1:output:0fc1/mul_1/y:output:0*
T0*
_output_shapes

:P
fc1/LogLogfc1/SelectV2_1:output:0*
T0*
_output_shapes

:R
fc1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?d
fc1/truedivRealDivfc1/Log:y:0fc1/truediv/y:output:0*
T0*
_output_shapes

:H
fc1/NegNegfc1/truediv:z:0*
T0*
_output_shapes

:L
	fc1/RoundRoundfc1/truediv:z:0*
T0*
_output_shapes

:W
	fc1/add_1AddV2fc1/Neg:y:0fc1/Round:y:0*
T0*
_output_shapes

:X
fc1/StopGradientStopGradientfc1/add_1:z:0*
T0*
_output_shapes

:g
	fc1/add_2AddV2fc1/truediv:z:0fc1/StopGradient:output:0*
T0*
_output_shapes

:`
fc1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
fc1/clip_by_value/MinimumMinimumfc1/add_2:z:0$fc1/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:X
fc1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
fc1/clip_by_valueMaximumfc1/clip_by_value/Minimum:z:0fc1/clip_by_value/y:output:0*
T0*
_output_shapes

:P
fc1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
	fc1/mul_2Mulfc1/mul_2/x:output:0fc1/clip_by_value:z:0*
T0*
_output_shapes

:q
fc1/SelectV2_2SelectV2fc1/Less_1:z:0fc1/mul_1:z:0fc1/mul_2:z:0*
T0*
_output_shapes

:N
	fc1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
fc1/powPowfc1/pow/x:output:0fc1/SelectV2_2:output:0*
T0*
_output_shapes

:S
	fc1/mul_3Mulfc1/add:z:0fc1/pow:z:0*
T0*
_output_shapes

:p
fc1/ReadVariableOp_1ReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0W
	fc1/Neg_1Negfc1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:Y
	fc1/add_3AddV2fc1/Neg_1:y:0fc1/mul_3:z:0*
T0*
_output_shapes

:P
fc1/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
	fc1/mul_4Mulfc1/mul_4/x:output:0fc1/add_3:z:0*
T0*
_output_shapes

:Z
fc1/StopGradient_1StopGradientfc1/mul_4:z:0*
T0*
_output_shapes

:p
fc1/ReadVariableOp_2ReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0v
	fc1/add_4AddV2fc1/ReadVariableOp_2:value:0fc1/StopGradient_1:output:0*
T0*
_output_shapes

:]

fc1/MatMulMatMulinputsfc1/add_4:z:0*
T0*'
_output_shapes
:���������n
fc1/ReadVariableOp_3ReadVariableOpfc1_readvariableop_3_resource*
_output_shapes
:*
dtype0U

fc1/Sign_1Signfc1/ReadVariableOp_3:value:0*
T0*
_output_shapes
:E
	fc1/Abs_2Absfc1/Sign_1:y:0*
T0*
_output_shapes
:P
fc1/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
	fc1/sub_1Subfc1/sub_1/x:output:0fc1/Abs_2:y:0*
T0*
_output_shapes
:V
	fc1/add_5AddV2fc1/Sign_1:y:0fc1/sub_1:z:0*
T0*
_output_shapes
:r
fc1/Abs_3/ReadVariableOpReadVariableOpfc1_readvariableop_3_resource*
_output_shapes
:*
dtype0W
	fc1/Abs_3Abs fc1/Abs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:Q
fc1/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3]

fc1/Less_2Lessfc1/Abs_3:y:0fc1/Less_2/y:output:0*
T0*
_output_shapes
:U
fc1/SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3y
fc1/SelectV2_3SelectV2fc1/Less_2:z:0fc1/SelectV2_3/t:output:0fc1/Abs_3:y:0*
T0*
_output_shapes
:Y
fc1/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
fc1/GreaterEqual_1GreaterEqualfc1/SelectV2_3:output:0fc1/GreaterEqual_1/y:output:0*
T0*
_output_shapes
:o
%fc1/ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Z
fc1/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_like_2Fill.fc1/ones_like_2/Shape/shape_as_tensor:output:0fc1/ones_like_2/Const:output:0*
T0*
_output_shapes
:P
fc1/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
	fc1/mul_5Mulfc1/ones_like_2:output:0fc1/mul_5/y:output:0*
T0*
_output_shapes
:
fc1/SelectV2_4SelectV2fc1/GreaterEqual_1:z:0fc1/mul_5:z:0fc1/SelectV2_3:output:0*
T0*
_output_shapes
:Q
fc1/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3]

fc1/Less_3Lessfc1/Abs_3:y:0fc1/Less_3/y:output:0*
T0*
_output_shapes
:o
%fc1/ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Z
fc1/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_like_3Fill.fc1/ones_like_3/Shape/shape_as_tensor:output:0fc1/ones_like_3/Const:output:0*
T0*
_output_shapes
:P
fc1/mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �e
	fc1/mul_6Mulfc1/ones_like_3:output:0fc1/mul_6/y:output:0*
T0*
_output_shapes
:N
	fc1/Log_1Logfc1/SelectV2_4:output:0*
T0*
_output_shapes
:T
fc1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?f
fc1/truediv_1RealDivfc1/Log_1:y:0fc1/truediv_1/y:output:0*
T0*
_output_shapes
:H
	fc1/Neg_2Negfc1/truediv_1:z:0*
T0*
_output_shapes
:L
fc1/Round_1Roundfc1/truediv_1:z:0*
T0*
_output_shapes
:W
	fc1/add_6AddV2fc1/Neg_2:y:0fc1/Round_1:y:0*
T0*
_output_shapes
:V
fc1/StopGradient_2StopGradientfc1/add_6:z:0*
T0*
_output_shapes
:g
	fc1/add_7AddV2fc1/truediv_1:z:0fc1/StopGradient_2:output:0*
T0*
_output_shapes
:b
fc1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
fc1/clip_by_value_1/MinimumMinimumfc1/add_7:z:0&fc1/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:Z
fc1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
fc1/clip_by_value_1Maximumfc1/clip_by_value_1/Minimum:z:0fc1/clip_by_value_1/y:output:0*
T0*
_output_shapes
:P
fc1/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
	fc1/mul_7Mulfc1/mul_7/x:output:0fc1/clip_by_value_1:z:0*
T0*
_output_shapes
:m
fc1/SelectV2_5SelectV2fc1/Less_3:z:0fc1/mul_6:z:0fc1/mul_7:z:0*
T0*
_output_shapes
:P
fc1/pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
	fc1/pow_1Powfc1/pow_1/x:output:0fc1/SelectV2_5:output:0*
T0*
_output_shapes
:S
	fc1/mul_8Mulfc1/add_5:z:0fc1/pow_1:z:0*
T0*
_output_shapes
:n
fc1/ReadVariableOp_4ReadVariableOpfc1_readvariableop_3_resource*
_output_shapes
:*
dtype0S
	fc1/Neg_3Negfc1/ReadVariableOp_4:value:0*
T0*
_output_shapes
:U
	fc1/add_8AddV2fc1/Neg_3:y:0fc1/mul_8:z:0*
T0*
_output_shapes
:P
fc1/mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
	fc1/mul_9Mulfc1/mul_9/x:output:0fc1/add_8:z:0*
T0*
_output_shapes
:V
fc1/StopGradient_3StopGradientfc1/mul_9:z:0*
T0*
_output_shapes
:n
fc1/ReadVariableOp_5ReadVariableOpfc1_readvariableop_3_resource*
_output_shapes
:*
dtype0r
	fc1/add_9AddV2fc1/ReadVariableOp_5:value:0fc1/StopGradient_3:output:0*
T0*
_output_shapes
:m
fc1/BiasAddBiasAddfc1/MatMul:product:0fc1/add_9:z:0*
T0*'
_output_shapes
:���������M
relu1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :M
relu1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :]
	relu1/PowPowrelu1/Pow/x:output:0relu1/Pow/y:output:0*
T0*
_output_shapes
: Q

relu1/CastCastrelu1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: O
relu1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :O
relu1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :c
relu1/Pow_1Powrelu1/Pow_1/x:output:0relu1/Pow_1/y:output:0*
T0*
_output_shapes
: U
relu1/Cast_1Castrelu1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: P
relu1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @P
relu1/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :]
relu1/Cast_2Castrelu1/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: P
relu1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AY
	relu1/subSubrelu1/Cast_2:y:0relu1/sub/y:output:0*
T0*
_output_shapes
: X
relu1/Pow_2Powrelu1/Const:output:0relu1/sub:z:0*
T0*
_output_shapes
: V
relu1/sub_1Subrelu1/Cast_1:y:0relu1/Pow_2:z:0*
T0*
_output_shapes
: u
relu1/LessEqual	LessEqualfc1/BiasAdd:output:0relu1/sub_1:z:0*
T0*'
_output_shapes
:���������Z

relu1/ReluRelufc1/BiasAdd:output:0*
T0*'
_output_shapes
:���������Y
relu1/ones_like/ShapeShapefc1/BiasAdd:output:0*
T0*
_output_shapes
:Z
relu1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
relu1/ones_likeFillrelu1/ones_like/Shape:output:0relu1/ones_like/Const:output:0*
T0*'
_output_shapes
:���������V
relu1/sub_2Subrelu1/Cast_1:y:0relu1/Pow_2:z:0*
T0*
_output_shapes
: m
	relu1/mulMulrelu1/ones_like:output:0relu1/sub_2:z:0*
T0*'
_output_shapes
:����������
relu1/SelectV2SelectV2relu1/LessEqual:z:0relu1/Relu:activations:0relu1/mul:z:0*
T0*'
_output_shapes
:���������j
relu1/mul_1Mulfc1/BiasAdd:output:0relu1/Cast:y:0*
T0*'
_output_shapes
:���������m
relu1/truedivRealDivrelu1/mul_1:z:0relu1/Cast_1:y:0*
T0*'
_output_shapes
:���������U
	relu1/NegNegrelu1/truediv:z:0*
T0*'
_output_shapes
:���������Y
relu1/RoundRoundrelu1/truediv:z:0*
T0*'
_output_shapes
:���������d
	relu1/addAddV2relu1/Neg:y:0relu1/Round:y:0*
T0*'
_output_shapes
:���������c
relu1/StopGradientStopGradientrelu1/add:z:0*
T0*'
_output_shapes
:���������v
relu1/add_1AddV2relu1/truediv:z:0relu1/StopGradient:output:0*
T0*'
_output_shapes
:���������m
relu1/truediv_1RealDivrelu1/add_1:z:0relu1/Cast:y:0*
T0*'
_output_shapes
:���������V
relu1/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
relu1/truediv_2RealDivrelu1/truediv_2/x:output:0relu1/Cast:y:0*
T0*
_output_shapes
: R
relu1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?`
relu1/sub_3Subrelu1/sub_3/x:output:0relu1/truediv_2:z:0*
T0*
_output_shapes
: ~
relu1/clip_by_value/MinimumMinimumrelu1/truediv_1:z:0relu1/sub_3:z:0*
T0*'
_output_shapes
:���������Z
relu1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
relu1/clip_by_valueMaximumrelu1/clip_by_value/Minimum:z:0relu1/clip_by_value/y:output:0*
T0*'
_output_shapes
:���������o
relu1/mul_2Mulrelu1/Cast_1:y:0relu1/clip_by_value:z:0*
T0*'
_output_shapes
:���������]
relu1/Neg_1Negrelu1/SelectV2:output:0*
T0*'
_output_shapes
:���������h
relu1/add_2AddV2relu1/Neg_1:y:0relu1/mul_2:z:0*
T0*'
_output_shapes
:���������R
relu1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?m
relu1/mul_3Mulrelu1/mul_3/x:output:0relu1/add_2:z:0*
T0*'
_output_shapes
:���������g
relu1/StopGradient_1StopGradientrelu1/mul_3:z:0*
T0*'
_output_shapes
:���������~
relu1/add_3AddV2relu1/SelectV2:output:0relu1/StopGradient_1:output:0*
T0*'
_output_shapes
:���������t
output/ReadVariableOpReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0[
output/SignSignoutput/ReadVariableOp:value:0*
T0*
_output_shapes

:K

output/AbsAbsoutput/Sign:y:0*
T0*
_output_shapes

:Q
output/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a

output/subSuboutput/sub/x:output:0output/Abs:y:0*
T0*
_output_shapes

:]

output/addAddV2output/Sign:y:0output/sub:z:0*
T0*
_output_shapes

:z
output/Abs_1/ReadVariableOpReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0a
output/Abs_1Abs#output/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:R
output/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/LessLessoutput/Abs_1:y:0output/Less/y:output:0*
T0*
_output_shapes

:V
output/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
output/SelectV2SelectV2output/Less:z:0output/SelectV2/t:output:0output/Abs_1:y:0*
T0*
_output_shapes

:Z
output/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/GreaterEqualGreaterEqualoutput/SelectV2:output:0output/GreaterEqual/y:output:0*
T0*
_output_shapes

:w
&output/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      [
output/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_likeFill/output/ones_like/Shape/shape_as_tensor:output:0output/ones_like/Const:output:0*
T0*
_output_shapes

:Q
output/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l

output/mulMuloutput/ones_like:output:0output/mul/y:output:0*
T0*
_output_shapes

:�
output/SelectV2_1SelectV2output/GreaterEqual:z:0output/mul:z:0output/SelectV2:output:0*
T0*
_output_shapes

:T
output/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3j
output/Less_1Lessoutput/Abs_1:y:0output/Less_1/y:output:0*
T0*
_output_shapes

:y
(output/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      ]
output/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_1Fill1output/ones_like_1/Shape/shape_as_tensor:output:0!output/ones_like_1/Const:output:0*
T0*
_output_shapes

:S
output/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �r
output/mul_1Muloutput/ones_like_1:output:0output/mul_1/y:output:0*
T0*
_output_shapes

:V

output/LogLogoutput/SelectV2_1:output:0*
T0*
_output_shapes

:U
output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?m
output/truedivRealDivoutput/Log:y:0output/truediv/y:output:0*
T0*
_output_shapes

:N

output/NegNegoutput/truediv:z:0*
T0*
_output_shapes

:R
output/RoundRoundoutput/truediv:z:0*
T0*
_output_shapes

:`
output/add_1AddV2output/Neg:y:0output/Round:y:0*
T0*
_output_shapes

:^
output/StopGradientStopGradientoutput/add_1:z:0*
T0*
_output_shapes

:p
output/add_2AddV2output/truediv:z:0output/StopGradient:output:0*
T0*
_output_shapes

:c
output/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
output/clip_by_value/MinimumMinimumoutput/add_2:z:0'output/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:[
output/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
output/clip_by_valueMaximum output/clip_by_value/Minimum:z:0output/clip_by_value/y:output:0*
T0*
_output_shapes

:S
output/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
output/mul_2Muloutput/mul_2/x:output:0output/clip_by_value:z:0*
T0*
_output_shapes

:}
output/SelectV2_2SelectV2output/Less_1:z:0output/mul_1:z:0output/mul_2:z:0*
T0*
_output_shapes

:Q
output/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @m

output/powPowoutput/pow/x:output:0output/SelectV2_2:output:0*
T0*
_output_shapes

:\
output/mul_3Muloutput/add:z:0output/pow:z:0*
T0*
_output_shapes

:v
output/ReadVariableOp_1ReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0]
output/Neg_1Negoutput/ReadVariableOp_1:value:0*
T0*
_output_shapes

:b
output/add_3AddV2output/Neg_1:y:0output/mul_3:z:0*
T0*
_output_shapes

:S
output/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
output/mul_4Muloutput/mul_4/x:output:0output/add_3:z:0*
T0*
_output_shapes

:`
output/StopGradient_1StopGradientoutput/mul_4:z:0*
T0*
_output_shapes

:v
output/ReadVariableOp_2ReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0
output/add_4AddV2output/ReadVariableOp_2:value:0output/StopGradient_1:output:0*
T0*
_output_shapes

:l
output/MatMulMatMulrelu1/add_3:z:0output/add_4:z:0*
T0*'
_output_shapes
:���������t
output/ReadVariableOp_3ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0[
output/Sign_1Signoutput/ReadVariableOp_3:value:0*
T0*
_output_shapes
:K
output/Abs_2Absoutput/Sign_1:y:0*
T0*
_output_shapes
:S
output/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
output/sub_1Suboutput/sub_1/x:output:0output/Abs_2:y:0*
T0*
_output_shapes
:_
output/add_5AddV2output/Sign_1:y:0output/sub_1:z:0*
T0*
_output_shapes
:x
output/Abs_3/ReadVariableOpReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0]
output/Abs_3Abs#output/Abs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:T
output/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/Less_2Lessoutput/Abs_3:y:0output/Less_2/y:output:0*
T0*
_output_shapes
:X
output/SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
output/SelectV2_3SelectV2output/Less_2:z:0output/SelectV2_3/t:output:0output/Abs_3:y:0*
T0*
_output_shapes
:\
output/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/GreaterEqual_1GreaterEqualoutput/SelectV2_3:output:0 output/GreaterEqual_1/y:output:0*
T0*
_output_shapes
:r
(output/ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:]
output/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_2Fill1output/ones_like_2/Shape/shape_as_tensor:output:0!output/ones_like_2/Const:output:0*
T0*
_output_shapes
:S
output/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?n
output/mul_5Muloutput/ones_like_2:output:0output/mul_5/y:output:0*
T0*
_output_shapes
:�
output/SelectV2_4SelectV2output/GreaterEqual_1:z:0output/mul_5:z:0output/SelectV2_3:output:0*
T0*
_output_shapes
:T
output/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/Less_3Lessoutput/Abs_3:y:0output/Less_3/y:output:0*
T0*
_output_shapes
:r
(output/ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:]
output/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_3Fill1output/ones_like_3/Shape/shape_as_tensor:output:0!output/ones_like_3/Const:output:0*
T0*
_output_shapes
:S
output/mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �n
output/mul_6Muloutput/ones_like_3:output:0output/mul_6/y:output:0*
T0*
_output_shapes
:T
output/Log_1Logoutput/SelectV2_4:output:0*
T0*
_output_shapes
:W
output/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?o
output/truediv_1RealDivoutput/Log_1:y:0output/truediv_1/y:output:0*
T0*
_output_shapes
:N
output/Neg_2Negoutput/truediv_1:z:0*
T0*
_output_shapes
:R
output/Round_1Roundoutput/truediv_1:z:0*
T0*
_output_shapes
:`
output/add_6AddV2output/Neg_2:y:0output/Round_1:y:0*
T0*
_output_shapes
:\
output/StopGradient_2StopGradientoutput/add_6:z:0*
T0*
_output_shapes
:p
output/add_7AddV2output/truediv_1:z:0output/StopGradient_2:output:0*
T0*
_output_shapes
:e
 output/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
output/clip_by_value_1/MinimumMinimumoutput/add_7:z:0)output/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:]
output/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
output/clip_by_value_1Maximum"output/clip_by_value_1/Minimum:z:0!output/clip_by_value_1/y:output:0*
T0*
_output_shapes
:S
output/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?m
output/mul_7Muloutput/mul_7/x:output:0output/clip_by_value_1:z:0*
T0*
_output_shapes
:y
output/SelectV2_5SelectV2output/Less_3:z:0output/mul_6:z:0output/mul_7:z:0*
T0*
_output_shapes
:S
output/pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
output/pow_1Powoutput/pow_1/x:output:0output/SelectV2_5:output:0*
T0*
_output_shapes
:\
output/mul_8Muloutput/add_5:z:0output/pow_1:z:0*
T0*
_output_shapes
:t
output/ReadVariableOp_4ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0Y
output/Neg_3Negoutput/ReadVariableOp_4:value:0*
T0*
_output_shapes
:^
output/add_8AddV2output/Neg_3:y:0output/mul_8:z:0*
T0*
_output_shapes
:S
output/mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
output/mul_9Muloutput/mul_9/x:output:0output/add_8:z:0*
T0*
_output_shapes
:\
output/StopGradient_3StopGradientoutput/mul_9:z:0*
T0*
_output_shapes
:t
output/ReadVariableOp_5ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0{
output/add_9AddV2output/ReadVariableOp_5:value:0output/StopGradient_3:output:0*
T0*
_output_shapes
:v
output/BiasAddBiasAddoutput/MatMul:product:0output/add_9:z:0*
T0*'
_output_shapes
:���������e
softmax/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:����������
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
fc1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
fc1/kernel/Regularizer/SumSumfc1/kernel/Regularizer/Abs:y:0%fc1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: a
fc1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
fc1/kernel/Regularizer/mulMul%fc1/kernel/Regularizer/mul/x:output:0#fc1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
output/kernel/Regularizer/SumSum!output/kernel/Regularizer/Abs:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^fc1/Abs_1/ReadVariableOp^fc1/Abs_3/ReadVariableOp^fc1/ReadVariableOp^fc1/ReadVariableOp_1^fc1/ReadVariableOp_2^fc1/ReadVariableOp_3^fc1/ReadVariableOp_4^fc1/ReadVariableOp_5*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/Abs_1/ReadVariableOp^output/Abs_3/ReadVariableOp^output/ReadVariableOp^output/ReadVariableOp_1^output/ReadVariableOp_2^output/ReadVariableOp_3^output/ReadVariableOp_4^output/ReadVariableOp_5-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
fc1/Abs_1/ReadVariableOpfc1/Abs_1/ReadVariableOp24
fc1/Abs_3/ReadVariableOpfc1/Abs_3/ReadVariableOp2(
fc1/ReadVariableOpfc1/ReadVariableOp2,
fc1/ReadVariableOp_1fc1/ReadVariableOp_12,
fc1/ReadVariableOp_2fc1/ReadVariableOp_22,
fc1/ReadVariableOp_3fc1/ReadVariableOp_32,
fc1/ReadVariableOp_4fc1/ReadVariableOp_42,
fc1/ReadVariableOp_5fc1/ReadVariableOp_52V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp2:
output/Abs_1/ReadVariableOpoutput/Abs_1/ReadVariableOp2:
output/Abs_3/ReadVariableOpoutput/Abs_3/ReadVariableOp2.
output/ReadVariableOpoutput/ReadVariableOp22
output/ReadVariableOp_1output/ReadVariableOp_122
output/ReadVariableOp_2output/ReadVariableOp_222
output/ReadVariableOp_3output/ReadVariableOp_322
output/ReadVariableOp_4output/ReadVariableOp_422
output/ReadVariableOp_5output/ReadVariableOp_52\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
� 
\
@__inference_relu1_layer_call_and_return_conditional_losses_28497

inputs
identityG
Pow/xConst*
_output_shapes
: *
dtype0*
value	B :G
Pow/yConst*
_output_shapes
: *
dtype0*
value	B :K
PowPowPow/x:output:0Pow/y:output:0*
T0*
_output_shapes
: E
CastCastPow:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :I
Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :Q
Pow_1PowPow_1/x:output:0Pow_1/y:output:0*
T0*
_output_shapes
: I
Cast_1Cast	Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :Q
Cast_2CastCast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AG
subSub
Cast_2:y:0sub/y:output:0*
T0*
_output_shapes
: F
Pow_2PowConst:output:0sub:z:0*
T0*
_output_shapes
: D
sub_1Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
	LessEqual	LessEqualinputs	sub_1:z:0*
T0*'
_output_shapes
:���������F
ReluReluinputs*
T0*'
_output_shapes
:���������E
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:���������D
sub_2Sub
Cast_1:y:0	Pow_2:z:0*
T0*
_output_shapes
: [
mulMulones_like:output:0	sub_2:z:0*
T0*'
_output_shapes
:���������r
SelectV2SelectV2LessEqual:z:0Relu:activations:0mul:z:0*
T0*'
_output_shapes
:���������P
mul_1MulinputsCast:y:0*
T0*'
_output_shapes
:���������[
truedivRealDiv	mul_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:���������I
NegNegtruediv:z:0*
T0*'
_output_shapes
:���������M
RoundRoundtruediv:z:0*
T0*'
_output_shapes
:���������R
addAddV2Neg:y:0	Round:y:0*
T0*'
_output_shapes
:���������W
StopGradientStopGradientadd:z:0*
T0*'
_output_shapes
:���������d
add_1AddV2truediv:z:0StopGradient:output:0*
T0*'
_output_shapes
:���������[
	truediv_1RealDiv	add_1:z:0Cast:y:0*
T0*'
_output_shapes
:���������P
truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
	truediv_2RealDivtruediv_2/x:output:0Cast:y:0*
T0*
_output_shapes
: L
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
sub_3Subsub_3/x:output:0truediv_2:z:0*
T0*
_output_shapes
: l
clip_by_value/MinimumMinimumtruediv_1:z:0	sub_3:z:0*
T0*'
_output_shapes
:���������T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:���������]
mul_2Mul
Cast_1:y:0clip_by_value:z:0*
T0*'
_output_shapes
:���������Q
Neg_1NegSelectV2:output:0*
T0*'
_output_shapes
:���������V
add_2AddV2	Neg_1:y:0	mul_2:z:0*
T0*'
_output_shapes
:���������L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?[
mul_3Mulmul_3/x:output:0	add_2:z:0*
T0*'
_output_shapes
:���������[
StopGradient_1StopGradient	mul_3:z:0*
T0*'
_output_shapes
:���������l
add_3AddV2SelectV2:output:0StopGradient_1:output:0*
T0*'
_output_shapes
:���������Q
IdentityIdentity	add_3:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�\
�
A__inference_output_layer_call_and_return_conditional_losses_28619

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identity��Abs_1/ReadVariableOp�Abs_3/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�,output/kernel/Regularizer/Abs/ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0M
SignSignReadVariableOp:value:0*
T0*
_output_shapes

:=
AbsAbsSign:y:0*
T0*
_output_shapes

:J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
subSubsub/x:output:0Abs:y:0*
T0*
_output_shapes

:H
addAddV2Sign:y:0sub:z:0*
T0*
_output_shapes

:l
Abs_1/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0S
Abs_1AbsAbs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:K
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
LessLess	Abs_1:y:0Less/y:output:0*
T0*
_output_shapes

:O

SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3g
SelectV2SelectV2Less:z:0SelectV2/t:output:0	Abs_1:y:0*
T0*
_output_shapes

:S
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?q
GreaterEqualGreaterEqualSelectV2:output:0GreaterEqual/y:output:0*
T0*
_output_shapes

:p
ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
	ones_likeFill(ones_like/Shape/shape_as_tensor:output:0ones_like/Const:output:0*
T0*
_output_shapes

:J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
mulMulones_like:output:0mul/y:output:0*
T0*
_output_shapes

:m

SelectV2_1SelectV2GreaterEqual:z:0mul:z:0SelectV2:output:0*
T0*
_output_shapes

:M
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3U
Less_1Less	Abs_1:y:0Less_1/y:output:0*
T0*
_output_shapes

:r
!ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_1Fill*ones_like_1/Shape/shape_as_tensor:output:0ones_like_1/Const:output:0*
T0*
_output_shapes

:L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �]
mul_1Mulones_like_1:output:0mul_1/y:output:0*
T0*
_output_shapes

:H
LogLogSelectV2_1:output:0*
T0*
_output_shapes

:N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?X
truedivRealDivLog:y:0truediv/y:output:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:K
add_1AddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:P
StopGradientStopGradient	add_1:z:0*
T0*
_output_shapes

:[
add_2AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value/MinimumMinimum	add_2:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
mul_2Mulmul_2/x:output:0clip_by_value:z:0*
T0*
_output_shapes

:a

SelectV2_2SelectV2
Less_1:z:0	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes

:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
powPowpow/x:output:0SelectV2_2:output:0*
T0*
_output_shapes

:G
mul_3Muladd:z:0pow:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_3AddV2	Neg_1:y:0	mul_3:z:0*
T0*
_output_shapes

:L
mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?R
mul_4Mulmul_4/x:output:0	add_3:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_4:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_4AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_4:z:0*
T0*'
_output_shapes
:���������f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0M
Sign_1SignReadVariableOp_3:value:0*
T0*
_output_shapes
:=
Abs_2Abs
Sign_1:y:0*
T0*
_output_shapes
:L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
sub_1Subsub_1/x:output:0	Abs_2:y:0*
T0*
_output_shapes
:J
add_5AddV2
Sign_1:y:0	sub_1:z:0*
T0*
_output_shapes
:j
Abs_3/ReadVariableOpReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0O
Abs_3AbsAbs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:M
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_2Less	Abs_3:y:0Less_2/y:output:0*
T0*
_output_shapes
:Q
SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3i

SelectV2_3SelectV2
Less_2:z:0SelectV2_3/t:output:0	Abs_3:y:0*
T0*
_output_shapes
:U
GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
GreaterEqual_1GreaterEqualSelectV2_3:output:0GreaterEqual_1/y:output:0*
T0*
_output_shapes
:k
!ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_2Fill*ones_like_2/Shape/shape_as_tensor:output:0ones_like_2/Const:output:0*
T0*
_output_shapes
:L
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
mul_5Mulones_like_2:output:0mul_5/y:output:0*
T0*
_output_shapes
:o

SelectV2_4SelectV2GreaterEqual_1:z:0	mul_5:z:0SelectV2_3:output:0*
T0*
_output_shapes
:M
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_3Less	Abs_3:y:0Less_3/y:output:0*
T0*
_output_shapes
:k
!ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_3Fill*ones_like_3/Shape/shape_as_tensor:output:0ones_like_3/Const:output:0*
T0*
_output_shapes
:L
mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �Y
mul_6Mulones_like_3:output:0mul_6/y:output:0*
T0*
_output_shapes
:F
Log_1LogSelectV2_4:output:0*
T0*
_output_shapes
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?Z
	truediv_1RealDiv	Log_1:y:0truediv_1/y:output:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_1:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_1:z:0*
T0*
_output_shapes
:K
add_6AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_6:z:0*
T0*
_output_shapes
:[
add_7AddV2truediv_1:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value_1/MinimumMinimum	add_7:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?X
mul_7Mulmul_7/x:output:0clip_by_value_1:z:0*
T0*
_output_shapes
:]

SelectV2_5SelectV2
Less_3:z:0	mul_6:z:0	mul_7:z:0*
T0*
_output_shapes
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
pow_1Powpow_1/x:output:0SelectV2_5:output:0*
T0*
_output_shapes
:G
mul_8Mul	add_5:z:0	pow_1:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_8AddV2	Neg_3:y:0	mul_8:z:0*
T0*
_output_shapes
:L
mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
mul_9Mulmul_9/x:output:0	add_8:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_9:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_9AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_9:z:0*
T0*'
_output_shapes
:����������
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
output/kernel/Regularizer/SumSum!output/kernel/Regularizer/Abs:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Abs_1/ReadVariableOp^Abs_3/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2,
Abs_1/ReadVariableOpAbs_1/ReadVariableOp2,
Abs_3/ReadVariableOpAbs_3/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
	fc1_input2
serving_default_fc1_input:0���������;
softmax0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
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
loss

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
kernel_quantizer
bias_quantizer
kernel_quantizer_internal
bias_quantizer_internal

quantizers

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 
activation
 	quantizer"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'kernel_quantizer
(bias_quantizer
'kernel_quantizer_internal
(bias_quantizer_internal
)
quantizers

*kernel
+bias"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
<
0
1
*2
+3"
trackable_list_wrapper
<
0
1
*2
+3"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
�
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
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
�
9trace_0
:trace_1
;trace_2
<trace_32�
,__inference_sequential_1_layer_call_fn_28656
,__inference_sequential_1_layer_call_fn_28869
,__inference_sequential_1_layer_call_fn_28882
,__inference_sequential_1_layer_call_fn_28755�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z9trace_0z:trace_1z;trace_2z<trace_3
�
=trace_0
>trace_1
?trace_2
@trace_32�
G__inference_sequential_1_layer_call_and_return_conditional_losses_29164
G__inference_sequential_1_layer_call_and_return_conditional_losses_29446
G__inference_sequential_1_layer_call_and_return_conditional_losses_28783
G__inference_sequential_1_layer_call_and_return_conditional_losses_28811�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z=trace_0z>trace_1z?trace_2z@trace_3
�B�
 __inference__wrapped_model_28315	fc1_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_ratempmq*mr+msvtvu*vv+vw"
	optimizer
 "
trackable_list_wrapper
,
Fserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
20"
trackable_list_wrapper
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ltrace_02�
#__inference_fc1_layer_call_fn_29455�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0
�
Mtrace_02�
>__inference_fc1_layer_call_and_return_conditional_losses_29575�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zMtrace_0
"
_generic_user_object
"
_generic_user_object
.
0
1"
trackable_list_wrapper
:2
fc1/kernel
:2fc1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Strace_02�
%__inference_relu1_layer_call_fn_29580�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zStrace_0
�
Ttrace_02�
@__inference_relu1_layer_call_and_return_conditional_losses_29629�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0
"
_generic_user_object
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
'
30"
trackable_list_wrapper
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
Ztrace_02�
&__inference_output_layer_call_fn_29638�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zZtrace_0
�
[trace_02�
A__inference_output_layer_call_and_return_conditional_losses_29758�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z[trace_0
"
_generic_user_object
"
_generic_user_object
.
'0
(1"
trackable_list_wrapper
:2output/kernel
:2output/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
atrace_02�
'__inference_softmax_layer_call_fn_29763�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zatrace_0
�
btrace_02�
B__inference_softmax_layer_call_and_return_conditional_losses_29768�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zbtrace_0
�
ctrace_02�
__inference_loss_fn_0_29779�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zctrace_0
�
dtrace_02�
__inference_loss_fn_1_29790�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zdtrace_0
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_1_layer_call_fn_28656	fc1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_1_layer_call_fn_28869inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_1_layer_call_fn_28882inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_1_layer_call_fn_28755	fc1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_29164inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_29446inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_28783	fc1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_28811	fc1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
#__inference_signature_wrapper_28844	fc1_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
20"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_fc1_layer_call_fn_29455inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_fc1_layer_call_and_return_conditional_losses_29575inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
%__inference_relu1_layer_call_fn_29580inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_relu1_layer_call_and_return_conditional_losses_29629inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
30"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_output_layer_call_fn_29638inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_output_layer_call_and_return_conditional_losses_29758inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_softmax_layer_call_fn_29763inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_softmax_layer_call_and_return_conditional_losses_29768inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_29779"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_29790"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
N
g	variables
h	keras_api
	itotal
	jcount"
_tf_keras_metric
^
k	variables
l	keras_api
	mtotal
	ncount
o
_fn_kwargs"
_tf_keras_metric
.
i0
j1"
trackable_list_wrapper
-
g	variables"
_generic_user_object
:  (2total
:  (2count
.
m0
n1"
trackable_list_wrapper
-
k	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
!:2Adam/fc1/kernel/m
:2Adam/fc1/bias/m
$:"2Adam/output/kernel/m
:2Adam/output/bias/m
!:2Adam/fc1/kernel/v
:2Adam/fc1/bias/v
$:"2Adam/output/kernel/v
:2Adam/output/bias/v�
 __inference__wrapped_model_28315m*+2�/
(�%
#� 
	fc1_input���������
� "1�.
,
softmax!�
softmax����������
>__inference_fc1_layer_call_and_return_conditional_losses_29575\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� v
#__inference_fc1_layer_call_fn_29455O/�,
%�"
 �
inputs���������
� "����������:
__inference_loss_fn_0_29779�

� 
� "� :
__inference_loss_fn_1_29790*�

� 
� "� �
A__inference_output_layer_call_and_return_conditional_losses_29758\*+/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� y
&__inference_output_layer_call_fn_29638O*+/�,
%�"
 �
inputs���������
� "�����������
@__inference_relu1_layer_call_and_return_conditional_losses_29629X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� t
%__inference_relu1_layer_call_fn_29580K/�,
%�"
 �
inputs���������
� "�����������
G__inference_sequential_1_layer_call_and_return_conditional_losses_28783i*+:�7
0�-
#� 
	fc1_input���������
p 

 
� "%�"
�
0���������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_28811i*+:�7
0�-
#� 
	fc1_input���������
p

 
� "%�"
�
0���������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_29164f*+7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_29446f*+7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
,__inference_sequential_1_layer_call_fn_28656\*+:�7
0�-
#� 
	fc1_input���������
p 

 
� "�����������
,__inference_sequential_1_layer_call_fn_28755\*+:�7
0�-
#� 
	fc1_input���������
p

 
� "�����������
,__inference_sequential_1_layer_call_fn_28869Y*+7�4
-�*
 �
inputs���������
p 

 
� "�����������
,__inference_sequential_1_layer_call_fn_28882Y*+7�4
-�*
 �
inputs���������
p

 
� "�����������
#__inference_signature_wrapper_28844z*+?�<
� 
5�2
0
	fc1_input#� 
	fc1_input���������"1�.
,
softmax!�
softmax����������
B__inference_softmax_layer_call_and_return_conditional_losses_29768X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� v
'__inference_softmax_layer_call_fn_29763K/�,
%�"
 �
inputs���������
� "����������