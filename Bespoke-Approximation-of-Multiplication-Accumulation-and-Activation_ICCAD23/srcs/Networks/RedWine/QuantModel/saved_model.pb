��
��
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
�
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
resource�
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
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
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
d
Shape

input"T&
output"out_type��out_type"	
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
 �"serve*2.12.02unknown8��
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
Adam/v/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/output/bias
u
&Adam/v/output/bias/Read/ReadVariableOpReadVariableOpAdam/v/output/bias*
_output_shapes
:*
dtype0
|
Adam/m/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/output/bias
u
&Adam/m/output/bias/Read/ReadVariableOpReadVariableOpAdam/m/output/bias*
_output_shapes
:*
dtype0
�
Adam/v/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/v/output/kernel
}
(Adam/v/output/kernel/Read/ReadVariableOpReadVariableOpAdam/v/output/kernel*
_output_shapes

:*
dtype0
�
Adam/m/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/m/output/kernel
}
(Adam/m/output/kernel/Read/ReadVariableOpReadVariableOpAdam/m/output/kernel*
_output_shapes

:*
dtype0
v
Adam/v/fc1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/v/fc1/bias
o
#Adam/v/fc1/bias/Read/ReadVariableOpReadVariableOpAdam/v/fc1/bias*
_output_shapes
:*
dtype0
v
Adam/m/fc1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/m/fc1/bias
o
#Adam/m/fc1/bias/Read/ReadVariableOpReadVariableOpAdam/m/fc1/bias*
_output_shapes
:*
dtype0
~
Adam/v/fc1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_nameAdam/v/fc1/kernel
w
%Adam/v/fc1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/fc1/kernel*
_output_shapes

:*
dtype0
~
Adam/m/fc1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_nameAdam/m/fc1/kernel
w
%Adam/m/fc1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/fc1/kernel*
_output_shapes

:*
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
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:*
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
:*
shared_name
fc1/kernel
i
fc1/kernel/Read/ReadVariableOpReadVariableOp
fc1/kernel*
_output_shapes

:*
dtype0
|
serving_default_fc1_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
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
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_128289

NoOpNoOp
�,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�+
value�+B�+ B�+
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
A
_variables
B_iterations
C_learning_rate
D_index_dict
E
_momentums
F_velocities
G_update_step_xla*
* 

Hserving_default* 

0
1*

0
1*
	
20* 
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ntrace_0* 

Otrace_0* 
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
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Utrace_0* 

Vtrace_0* 
* 

*0
+1*

*0
+1*
	
30* 
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

\trace_0* 

]trace_0* 
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
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

ctrace_0* 

dtrace_0* 

etrace_0* 

ftrace_0* 
* 
 
0
1
2
3*

g0
h1*
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
C
B0
i1
j2
k3
l4
m5
n6
o7
p8*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
i0
k1
m2
o3*
 
j0
l1
n2
p3*
* 
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
q	variables
r	keras_api
	stotal
	tcount*
H
u	variables
v	keras_api
	wtotal
	xcount
y
_fn_kwargs*
\V
VARIABLE_VALUEAdam/m/fc1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/fc1/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/m/fc1/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/v/fc1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/output/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/output/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/output/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/output/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*

s0
t1*

q	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

w0
x1*

u	variables*
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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename
fc1/kernelfc1/biasoutput/kerneloutput/bias	iterationlearning_rateAdam/m/fc1/kernelAdam/v/fc1/kernelAdam/m/fc1/biasAdam/v/fc1/biasAdam/m/output/kernelAdam/v/output/kernelAdam/m/output/biasAdam/v/output/biastotal_1count_1totalcountConst*
Tin
2*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_129366
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
fc1/kernelfc1/biasoutput/kerneloutput/bias	iterationlearning_rateAdam/m/fc1/kernelAdam/v/fc1/kernelAdam/m/fc1/biasAdam/v/fc1/biasAdam/m/output/kernelAdam/v/output/kernelAdam/m/output/biasAdam/v/output/biastotal_1count_1totalcount*
Tin
2*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_129430��
�!
]
A__inference_relu1_layer_call_and_return_conditional_losses_129074

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
:���������S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::��T
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
��
�
F__inference_sequential_layer_call_and_return_conditional_losses_128609

inputs-
fc1_readvariableop_resource:+
fc1_readvariableop_3_resource:0
output_readvariableop_resource:.
 output_readvariableop_3_resource:
identity��fc1/Abs_1/ReadVariableOp�fc1/Abs_3/ReadVariableOp�fc1/ReadVariableOp�fc1/ReadVariableOp_1�fc1/ReadVariableOp_2�fc1/ReadVariableOp_3�fc1/ReadVariableOp_4�fc1/ReadVariableOp_5�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/Abs_1/ReadVariableOp�output/Abs_3/ReadVariableOp�output/ReadVariableOp�output/ReadVariableOp_1�output/ReadVariableOp_2�output/ReadVariableOp_3�output/ReadVariableOp_4�output/ReadVariableOp_5�,output/kernel/Regularizer/Abs/ReadVariableOpn
fc1/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0U
fc1/SignSignfc1/ReadVariableOp:value:0*
T0*
_output_shapes

:E
fc1/AbsAbsfc1/Sign:y:0*
T0*
_output_shapes

:N
	fc1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?X
fc1/subSubfc1/sub/x:output:0fc1/Abs:y:0*
T0*
_output_shapes

:T
fc1/addAddV2fc1/Sign:y:0fc1/sub:z:0*
T0*
_output_shapes

:t
fc1/Abs_1/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0[
	fc1/Abs_1Abs fc1/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:O

fc1/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3]
fc1/LessLessfc1/Abs_1:y:0fc1/Less/y:output:0*
T0*
_output_shapes

:S
fc1/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3w
fc1/SelectV2SelectV2fc1/Less:z:0fc1/SelectV2/t:output:0fc1/Abs_1:y:0*
T0*
_output_shapes

:W
fc1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?}
fc1/GreaterEqualGreaterEqualfc1/SelectV2:output:0fc1/GreaterEqual/y:output:0*
T0*
_output_shapes

:t
#fc1/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      X
fc1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_likeFill,fc1/ones_like/Shape/shape_as_tensor:output:0fc1/ones_like/Const:output:0*
T0*
_output_shapes

:N
	fc1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
fc1/mulMulfc1/ones_like:output:0fc1/mul/y:output:0*
T0*
_output_shapes

:}
fc1/SelectV2_1SelectV2fc1/GreaterEqual:z:0fc1/mul:z:0fc1/SelectV2:output:0*
T0*
_output_shapes

:Q
fc1/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3a

fc1/Less_1Lessfc1/Abs_1:y:0fc1/Less_1/y:output:0*
T0*
_output_shapes

:v
%fc1/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      Z
fc1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_like_1Fill.fc1/ones_like_1/Shape/shape_as_tensor:output:0fc1/ones_like_1/Const:output:0*
T0*
_output_shapes

:P
fc1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �i
	fc1/mul_1Mulfc1/ones_like_1:output:0fc1/mul_1/y:output:0*
T0*
_output_shapes

:P
fc1/LogLogfc1/SelectV2_1:output:0*
T0*
_output_shapes

:R
fc1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?d
fc1/truedivRealDivfc1/Log:y:0fc1/truediv/y:output:0*
T0*
_output_shapes

:H
fc1/NegNegfc1/truediv:z:0*
T0*
_output_shapes

:L
	fc1/RoundRoundfc1/truediv:z:0*
T0*
_output_shapes

:W
	fc1/add_1AddV2fc1/Neg:y:0fc1/Round:y:0*
T0*
_output_shapes

:X
fc1/StopGradientStopGradientfc1/add_1:z:0*
T0*
_output_shapes

:g
	fc1/add_2AddV2fc1/truediv:z:0fc1/StopGradient:output:0*
T0*
_output_shapes

:`
fc1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
fc1/clip_by_value/MinimumMinimumfc1/add_2:z:0$fc1/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:X
fc1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
fc1/clip_by_valueMaximumfc1/clip_by_value/Minimum:z:0fc1/clip_by_value/y:output:0*
T0*
_output_shapes

:P
fc1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
	fc1/mul_2Mulfc1/mul_2/x:output:0fc1/clip_by_value:z:0*
T0*
_output_shapes

:q
fc1/SelectV2_2SelectV2fc1/Less_1:z:0fc1/mul_1:z:0fc1/mul_2:z:0*
T0*
_output_shapes

:N
	fc1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
fc1/powPowfc1/pow/x:output:0fc1/SelectV2_2:output:0*
T0*
_output_shapes

:S
	fc1/mul_3Mulfc1/add:z:0fc1/pow:z:0*
T0*
_output_shapes

:p
fc1/ReadVariableOp_1ReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0W
	fc1/Neg_1Negfc1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:Y
	fc1/add_3AddV2fc1/Neg_1:y:0fc1/mul_3:z:0*
T0*
_output_shapes

:P
fc1/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
	fc1/mul_4Mulfc1/mul_4/x:output:0fc1/add_3:z:0*
T0*
_output_shapes

:Z
fc1/StopGradient_1StopGradientfc1/mul_4:z:0*
T0*
_output_shapes

:p
fc1/ReadVariableOp_2ReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0v
	fc1/add_4AddV2fc1/ReadVariableOp_2:value:0fc1/StopGradient_1:output:0*
T0*
_output_shapes

:]

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
:���������g
relu1/ones_like/ShapeShapefc1/BiasAdd:output:0*
T0*
_output_shapes
::��Z
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

:*
dtype0[
output/SignSignoutput/ReadVariableOp:value:0*
T0*
_output_shapes

:K

output/AbsAbsoutput/Sign:y:0*
T0*
_output_shapes

:Q
output/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a

output/subSuboutput/sub/x:output:0output/Abs:y:0*
T0*
_output_shapes

:]

output/addAddV2output/Sign:y:0output/sub:z:0*
T0*
_output_shapes

:z
output/Abs_1/ReadVariableOpReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0a
output/Abs_1Abs#output/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:R
output/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/LessLessoutput/Abs_1:y:0output/Less/y:output:0*
T0*
_output_shapes

:V
output/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
output/SelectV2SelectV2output/Less:z:0output/SelectV2/t:output:0output/Abs_1:y:0*
T0*
_output_shapes

:Z
output/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/GreaterEqualGreaterEqualoutput/SelectV2:output:0output/GreaterEqual/y:output:0*
T0*
_output_shapes

:w
&output/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      [
output/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_likeFill/output/ones_like/Shape/shape_as_tensor:output:0output/ones_like/Const:output:0*
T0*
_output_shapes

:Q
output/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l

output/mulMuloutput/ones_like:output:0output/mul/y:output:0*
T0*
_output_shapes

:�
output/SelectV2_1SelectV2output/GreaterEqual:z:0output/mul:z:0output/SelectV2:output:0*
T0*
_output_shapes

:T
output/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3j
output/Less_1Lessoutput/Abs_1:y:0output/Less_1/y:output:0*
T0*
_output_shapes

:y
(output/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      ]
output/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_1Fill1output/ones_like_1/Shape/shape_as_tensor:output:0!output/ones_like_1/Const:output:0*
T0*
_output_shapes

:S
output/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �r
output/mul_1Muloutput/ones_like_1:output:0output/mul_1/y:output:0*
T0*
_output_shapes

:V

output/LogLogoutput/SelectV2_1:output:0*
T0*
_output_shapes

:U
output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?m
output/truedivRealDivoutput/Log:y:0output/truediv/y:output:0*
T0*
_output_shapes

:N

output/NegNegoutput/truediv:z:0*
T0*
_output_shapes

:R
output/RoundRoundoutput/truediv:z:0*
T0*
_output_shapes

:`
output/add_1AddV2output/Neg:y:0output/Round:y:0*
T0*
_output_shapes

:^
output/StopGradientStopGradientoutput/add_1:z:0*
T0*
_output_shapes

:p
output/add_2AddV2output/truediv:z:0output/StopGradient:output:0*
T0*
_output_shapes

:c
output/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
output/clip_by_value/MinimumMinimumoutput/add_2:z:0'output/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:[
output/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
output/clip_by_valueMaximum output/clip_by_value/Minimum:z:0output/clip_by_value/y:output:0*
T0*
_output_shapes

:S
output/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
output/mul_2Muloutput/mul_2/x:output:0output/clip_by_value:z:0*
T0*
_output_shapes

:}
output/SelectV2_2SelectV2output/Less_1:z:0output/mul_1:z:0output/mul_2:z:0*
T0*
_output_shapes

:Q
output/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @m

output/powPowoutput/pow/x:output:0output/SelectV2_2:output:0*
T0*
_output_shapes

:\
output/mul_3Muloutput/add:z:0output/pow:z:0*
T0*
_output_shapes

:v
output/ReadVariableOp_1ReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0]
output/Neg_1Negoutput/ReadVariableOp_1:value:0*
T0*
_output_shapes

:b
output/add_3AddV2output/Neg_1:y:0output/mul_3:z:0*
T0*
_output_shapes

:S
output/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
output/mul_4Muloutput/mul_4/x:output:0output/add_3:z:0*
T0*
_output_shapes

:`
output/StopGradient_1StopGradientoutput/mul_4:z:0*
T0*
_output_shapes

:v
output/ReadVariableOp_2ReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0
output/add_4AddV2output/ReadVariableOp_2:value:0output/StopGradient_1:output:0*
T0*
_output_shapes

:l
output/MatMulMatMulrelu1/add_3:z:0output/add_4:z:0*
T0*'
_output_shapes
:���������t
output/ReadVariableOp_3ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0[
output/Sign_1Signoutput/ReadVariableOp_3:value:0*
T0*
_output_shapes
:K
output/Abs_2Absoutput/Sign_1:y:0*
T0*
_output_shapes
:S
output/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
output/sub_1Suboutput/sub_1/x:output:0output/Abs_2:y:0*
T0*
_output_shapes
:_
output/add_5AddV2output/Sign_1:y:0output/sub_1:z:0*
T0*
_output_shapes
:x
output/Abs_3/ReadVariableOpReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0]
output/Abs_3Abs#output/Abs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:T
output/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/Less_2Lessoutput/Abs_3:y:0output/Less_2/y:output:0*
T0*
_output_shapes
:X
output/SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
output/SelectV2_3SelectV2output/Less_2:z:0output/SelectV2_3/t:output:0output/Abs_3:y:0*
T0*
_output_shapes
:\
output/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/GreaterEqual_1GreaterEqualoutput/SelectV2_3:output:0 output/GreaterEqual_1/y:output:0*
T0*
_output_shapes
:r
(output/ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:]
output/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_2Fill1output/ones_like_2/Shape/shape_as_tensor:output:0!output/ones_like_2/Const:output:0*
T0*
_output_shapes
:S
output/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?n
output/mul_5Muloutput/ones_like_2:output:0output/mul_5/y:output:0*
T0*
_output_shapes
:�
output/SelectV2_4SelectV2output/GreaterEqual_1:z:0output/mul_5:z:0output/SelectV2_3:output:0*
T0*
_output_shapes
:T
output/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/Less_3Lessoutput/Abs_3:y:0output/Less_3/y:output:0*
T0*
_output_shapes
:r
(output/ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:]
output/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_3Fill1output/ones_like_3/Shape/shape_as_tensor:output:0!output/ones_like_3/Const:output:0*
T0*
_output_shapes
:S
output/mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �n
output/mul_6Muloutput/ones_like_3:output:0output/mul_6/y:output:0*
T0*
_output_shapes
:T
output/Log_1Logoutput/SelectV2_4:output:0*
T0*
_output_shapes
:W
output/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?o
output/truediv_1RealDivoutput/Log_1:y:0output/truediv_1/y:output:0*
T0*
_output_shapes
:N
output/Neg_2Negoutput/truediv_1:z:0*
T0*
_output_shapes
:R
output/Round_1Roundoutput/truediv_1:z:0*
T0*
_output_shapes
:`
output/add_6AddV2output/Neg_2:y:0output/Round_1:y:0*
T0*
_output_shapes
:\
output/StopGradient_2StopGradientoutput/add_6:z:0*
T0*
_output_shapes
:p
output/add_7AddV2output/truediv_1:z:0output/StopGradient_2:output:0*
T0*
_output_shapes
:e
 output/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
output/clip_by_value_1/MinimumMinimumoutput/add_7:z:0)output/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:]
output/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
output/clip_by_value_1Maximum"output/clip_by_value_1/Minimum:z:0!output/clip_by_value_1/y:output:0*
T0*
_output_shapes
:S
output/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?m
output/mul_7Muloutput/mul_7/x:output:0output/clip_by_value_1:z:0*
T0*
_output_shapes
:y
output/SelectV2_5SelectV2output/Less_3:z:0output/mul_6:z:0output/mul_7:z:0*
T0*
_output_shapes
:S
output/pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
output/pow_1Powoutput/pow_1/x:output:0output/SelectV2_5:output:0*
T0*
_output_shapes
:\
output/mul_8Muloutput/add_5:z:0output/pow_1:z:0*
T0*
_output_shapes
:t
output/ReadVariableOp_4ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0Y
output/Neg_3Negoutput/ReadVariableOp_4:value:0*
T0*
_output_shapes
:^
output/add_8AddV2output/Neg_3:y:0output/mul_8:z:0*
T0*
_output_shapes
:S
output/mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
output/mul_9Muloutput/mul_9/x:output:0output/add_8:z:0*
T0*
_output_shapes
:\
output/StopGradient_3StopGradientoutput/mul_9:z:0*
T0*
_output_shapes
:t
output/ReadVariableOp_5ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0{
output/add_9AddV2output/ReadVariableOp_5:value:0output/StopGradient_3:output:0*
T0*
_output_shapes
:v
output/BiasAddBiasAddoutput/MatMul:product:0output/add_9:z:0*
T0*'
_output_shapes
:���������e
softmax/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:����������
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
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

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
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
:����������
NoOpNoOp^fc1/Abs_1/ReadVariableOp^fc1/Abs_3/ReadVariableOp^fc1/ReadVariableOp^fc1/ReadVariableOp_1^fc1/ReadVariableOp_2^fc1/ReadVariableOp_3^fc1/ReadVariableOp_4^fc1/ReadVariableOp_5*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/Abs_1/ReadVariableOp^output/Abs_3/ReadVariableOp^output/ReadVariableOp^output/ReadVariableOp_1^output/ReadVariableOp_2^output/ReadVariableOp_3^output/ReadVariableOp_4^output/ReadVariableOp_5-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
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
:���������
 
_user_specified_nameinputs
�!
]
A__inference_relu1_layer_call_and_return_conditional_losses_127943

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
:���������S
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::��T
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
� 
�
F__inference_sequential_layer_call_and_return_conditional_losses_128119
	fc1_input

fc1_128094:

fc1_128096:
output_128100:
output_128102:
identity��fc1/StatefulPartitionedCall�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/StatefulPartitionedCall�,output/kernel/Regularizer/Abs/ReadVariableOp�
fc1/StatefulPartitionedCallStatefulPartitionedCall	fc1_input
fc1_128094
fc1_128096*
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
GPU 2J 8� *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_127888�
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
GPU 2J 8� *J
fERC
A__inference_relu1_layer_call_and_return_conditional_losses_127943�
output/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0output_128100output_128102*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_128065�
softmax/PartitionedCallPartitionedCall'output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_128076t
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp
fc1_128094*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
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
: z
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpoutput_128100*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
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
:����������
NoOpNoOp^fc1/StatefulPartitionedCall*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
�\
�
B__inference_output_layer_call_and_return_conditional_losses_128065

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identity��Abs_1/ReadVariableOp�Abs_3/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�,output/kernel/Regularizer/Abs/ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0M
SignSignReadVariableOp:value:0*
T0*
_output_shapes

:=
AbsAbsSign:y:0*
T0*
_output_shapes

:J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
subSubsub/x:output:0Abs:y:0*
T0*
_output_shapes

:H
addAddV2Sign:y:0sub:z:0*
T0*
_output_shapes

:l
Abs_1/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0S
Abs_1AbsAbs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:K
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
LessLess	Abs_1:y:0Less/y:output:0*
T0*
_output_shapes

:O

SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3g
SelectV2SelectV2Less:z:0SelectV2/t:output:0	Abs_1:y:0*
T0*
_output_shapes

:S
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?q
GreaterEqualGreaterEqualSelectV2:output:0GreaterEqual/y:output:0*
T0*
_output_shapes

:p
ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
	ones_likeFill(ones_like/Shape/shape_as_tensor:output:0ones_like/Const:output:0*
T0*
_output_shapes

:J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
mulMulones_like:output:0mul/y:output:0*
T0*
_output_shapes

:m

SelectV2_1SelectV2GreaterEqual:z:0mul:z:0SelectV2:output:0*
T0*
_output_shapes

:M
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3U
Less_1Less	Abs_1:y:0Less_1/y:output:0*
T0*
_output_shapes

:r
!ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_1Fill*ones_like_1/Shape/shape_as_tensor:output:0ones_like_1/Const:output:0*
T0*
_output_shapes

:L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �]
mul_1Mulones_like_1:output:0mul_1/y:output:0*
T0*
_output_shapes

:H
LogLogSelectV2_1:output:0*
T0*
_output_shapes

:N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?X
truedivRealDivLog:y:0truediv/y:output:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:K
add_1AddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:P
StopGradientStopGradient	add_1:z:0*
T0*
_output_shapes

:[
add_2AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value/MinimumMinimum	add_2:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
mul_2Mulmul_2/x:output:0clip_by_value:z:0*
T0*
_output_shapes

:a

SelectV2_2SelectV2
Less_1:z:0	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes

:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
powPowpow/x:output:0SelectV2_2:output:0*
T0*
_output_shapes

:G
mul_3Muladd:z:0pow:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_3AddV2	Neg_1:y:0	mul_3:z:0*
T0*
_output_shapes

:L
mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?R
mul_4Mulmul_4/x:output:0	add_3:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_4:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_4AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_4:z:0*
T0*'
_output_shapes
:���������f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0M
Sign_1SignReadVariableOp_3:value:0*
T0*
_output_shapes
:=
Abs_2Abs
Sign_1:y:0*
T0*
_output_shapes
:L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
sub_1Subsub_1/x:output:0	Abs_2:y:0*
T0*
_output_shapes
:J
add_5AddV2
Sign_1:y:0	sub_1:z:0*
T0*
_output_shapes
:j
Abs_3/ReadVariableOpReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0O
Abs_3AbsAbs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:M
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_2Less	Abs_3:y:0Less_2/y:output:0*
T0*
_output_shapes
:Q
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
:U
GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
GreaterEqual_1GreaterEqualSelectV2_3:output:0GreaterEqual_1/y:output:0*
T0*
_output_shapes
:k
!ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_2Fill*ones_like_2/Shape/shape_as_tensor:output:0ones_like_2/Const:output:0*
T0*
_output_shapes
:L
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
mul_5Mulones_like_2:output:0mul_5/y:output:0*
T0*
_output_shapes
:o

SelectV2_4SelectV2GreaterEqual_1:z:0	mul_5:z:0SelectV2_3:output:0*
T0*
_output_shapes
:M
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_3Less	Abs_3:y:0Less_3/y:output:0*
T0*
_output_shapes
:k
!ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_3Fill*ones_like_3/Shape/shape_as_tensor:output:0ones_like_3/Const:output:0*
T0*
_output_shapes
:L
mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �Y
mul_6Mulones_like_3:output:0mul_6/y:output:0*
T0*
_output_shapes
:F
Log_1LogSelectV2_4:output:0*
T0*
_output_shapes
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?Z
	truediv_1RealDiv	Log_1:y:0truediv_1/y:output:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_1:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_1:z:0*
T0*
_output_shapes
:K
add_6AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_6:z:0*
T0*
_output_shapes
:[
add_7AddV2truediv_1:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value_1/MinimumMinimum	add_7:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?X
mul_7Mulmul_7/x:output:0clip_by_value_1:z:0*
T0*
_output_shapes
:]

SelectV2_5SelectV2
Less_3:z:0	mul_6:z:0	mul_7:z:0*
T0*
_output_shapes
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
pow_1Powpow_1/x:output:0SelectV2_5:output:0*
T0*
_output_shapes
:G
mul_8Mul	add_5:z:0	pow_1:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_8AddV2	Neg_3:y:0	mul_8:z:0*
T0*
_output_shapes
:L
mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
mul_9Mulmul_9/x:output:0	add_8:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_9:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_9AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_9:z:0*
T0*'
_output_shapes
:����������
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
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
:����������
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
� 
�
F__inference_sequential_layer_call_and_return_conditional_losses_128091
	fc1_input

fc1_127889:

fc1_127891:
output_128066:
output_128068:
identity��fc1/StatefulPartitionedCall�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/StatefulPartitionedCall�,output/kernel/Regularizer/Abs/ReadVariableOp�
fc1/StatefulPartitionedCallStatefulPartitionedCall	fc1_input
fc1_127889
fc1_127891*
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
GPU 2J 8� *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_127888�
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
GPU 2J 8� *J
fERC
A__inference_relu1_layer_call_and_return_conditional_losses_127943�
output/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0output_128066output_128068*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_128065�
softmax/PartitionedCallPartitionedCall'output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_128076t
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp
fc1_127889*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
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
: z
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpoutput_128066*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
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
:����������
NoOpNoOp^fc1/StatefulPartitionedCall*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
� 
�
F__inference_sequential_layer_call_and_return_conditional_losses_128150

inputs

fc1_128125:

fc1_128127:
output_128131:
output_128133:
identity��fc1/StatefulPartitionedCall�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/StatefulPartitionedCall�,output/kernel/Regularizer/Abs/ReadVariableOp�
fc1/StatefulPartitionedCallStatefulPartitionedCallinputs
fc1_128125
fc1_128127*
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
GPU 2J 8� *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_127888�
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
GPU 2J 8� *J
fERC
A__inference_relu1_layer_call_and_return_conditional_losses_127943�
output/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0output_128131output_128133*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_128065�
softmax/PartitionedCallPartitionedCall'output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_128076t
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp
fc1_128125*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
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
: z
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpoutput_128131*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
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
:����������
NoOpNoOp^fc1/StatefulPartitionedCall*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_128161
	fc1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	fc1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_128150o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
�
�
$__inference_fc1_layer_call_fn_128900

inputs
unknown:
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
GPU 2J 8� *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_127888o
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
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
� 
�
F__inference_sequential_layer_call_and_return_conditional_losses_128191

inputs

fc1_128166:

fc1_128168:
output_128172:
output_128174:
identity��fc1/StatefulPartitionedCall�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/StatefulPartitionedCall�,output/kernel/Regularizer/Abs/ReadVariableOp�
fc1/StatefulPartitionedCallStatefulPartitionedCallinputs
fc1_128166
fc1_128168*
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
GPU 2J 8� *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_127888�
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
GPU 2J 8� *J
fERC
A__inference_relu1_layer_call_and_return_conditional_losses_127943�
output/StatefulPartitionedCallStatefulPartitionedCallrelu1/PartitionedCall:output:0output_128172output_128174*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_128065�
softmax/PartitionedCallPartitionedCall'output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_128076t
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp
fc1_128166*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
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
: z
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpoutput_128172*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
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
:����������
NoOpNoOp^fc1/StatefulPartitionedCall*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/StatefulPartitionedCall-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2V
)fc1/kernel/Regularizer/Abs/ReadVariableOp)fc1/kernel/Regularizer/Abs/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2\
,output/kernel/Regularizer/Abs/ReadVariableOp,output/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
__inference_loss_fn_1_129235G
5output_kernel_regularizer_abs_readvariableop_resource:
identity��,output/kernel/Regularizer/Abs/ReadVariableOp�
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp5output_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
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
�
_
C__inference_softmax_layer_call_and_return_conditional_losses_129213

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:���������Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
D
(__inference_softmax_layer_call_fn_129208

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_softmax_layer_call_and_return_conditional_losses_128076`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�\
�
B__inference_output_layer_call_and_return_conditional_losses_129203

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identity��Abs_1/ReadVariableOp�Abs_3/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�,output/kernel/Regularizer/Abs/ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0M
SignSignReadVariableOp:value:0*
T0*
_output_shapes

:=
AbsAbsSign:y:0*
T0*
_output_shapes

:J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
subSubsub/x:output:0Abs:y:0*
T0*
_output_shapes

:H
addAddV2Sign:y:0sub:z:0*
T0*
_output_shapes

:l
Abs_1/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0S
Abs_1AbsAbs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:K
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
LessLess	Abs_1:y:0Less/y:output:0*
T0*
_output_shapes

:O

SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3g
SelectV2SelectV2Less:z:0SelectV2/t:output:0	Abs_1:y:0*
T0*
_output_shapes

:S
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?q
GreaterEqualGreaterEqualSelectV2:output:0GreaterEqual/y:output:0*
T0*
_output_shapes

:p
ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
	ones_likeFill(ones_like/Shape/shape_as_tensor:output:0ones_like/Const:output:0*
T0*
_output_shapes

:J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
mulMulones_like:output:0mul/y:output:0*
T0*
_output_shapes

:m

SelectV2_1SelectV2GreaterEqual:z:0mul:z:0SelectV2:output:0*
T0*
_output_shapes

:M
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3U
Less_1Less	Abs_1:y:0Less_1/y:output:0*
T0*
_output_shapes

:r
!ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_1Fill*ones_like_1/Shape/shape_as_tensor:output:0ones_like_1/Const:output:0*
T0*
_output_shapes

:L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �]
mul_1Mulones_like_1:output:0mul_1/y:output:0*
T0*
_output_shapes

:H
LogLogSelectV2_1:output:0*
T0*
_output_shapes

:N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?X
truedivRealDivLog:y:0truediv/y:output:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:K
add_1AddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:P
StopGradientStopGradient	add_1:z:0*
T0*
_output_shapes

:[
add_2AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value/MinimumMinimum	add_2:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
mul_2Mulmul_2/x:output:0clip_by_value:z:0*
T0*
_output_shapes

:a

SelectV2_2SelectV2
Less_1:z:0	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes

:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
powPowpow/x:output:0SelectV2_2:output:0*
T0*
_output_shapes

:G
mul_3Muladd:z:0pow:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_3AddV2	Neg_1:y:0	mul_3:z:0*
T0*
_output_shapes

:L
mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?R
mul_4Mulmul_4/x:output:0	add_3:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_4:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_4AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
MatMulMatMulinputs	add_4:z:0*
T0*'
_output_shapes
:���������f
ReadVariableOp_3ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0M
Sign_1SignReadVariableOp_3:value:0*
T0*
_output_shapes
:=
Abs_2Abs
Sign_1:y:0*
T0*
_output_shapes
:L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
sub_1Subsub_1/x:output:0	Abs_2:y:0*
T0*
_output_shapes
:J
add_5AddV2
Sign_1:y:0	sub_1:z:0*
T0*
_output_shapes
:j
Abs_3/ReadVariableOpReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0O
Abs_3AbsAbs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:M
Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_2Less	Abs_3:y:0Less_2/y:output:0*
T0*
_output_shapes
:Q
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
:U
GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?s
GreaterEqual_1GreaterEqualSelectV2_3:output:0GreaterEqual_1/y:output:0*
T0*
_output_shapes
:k
!ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_2Fill*ones_like_2/Shape/shape_as_tensor:output:0ones_like_2/Const:output:0*
T0*
_output_shapes
:L
mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Y
mul_5Mulones_like_2:output:0mul_5/y:output:0*
T0*
_output_shapes
:o

SelectV2_4SelectV2GreaterEqual_1:z:0	mul_5:z:0SelectV2_3:output:0*
T0*
_output_shapes
:M
Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
Less_3Less	Abs_3:y:0Less_3/y:output:0*
T0*
_output_shapes
:k
!ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:V
ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_3Fill*ones_like_3/Shape/shape_as_tensor:output:0ones_like_3/Const:output:0*
T0*
_output_shapes
:L
mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �Y
mul_6Mulones_like_3:output:0mul_6/y:output:0*
T0*
_output_shapes
:F
Log_1LogSelectV2_4:output:0*
T0*
_output_shapes
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?Z
	truediv_1RealDiv	Log_1:y:0truediv_1/y:output:0*
T0*
_output_shapes
:@
Neg_2Negtruediv_1:z:0*
T0*
_output_shapes
:D
Round_1Roundtruediv_1:z:0*
T0*
_output_shapes
:K
add_6AddV2	Neg_2:y:0Round_1:y:0*
T0*
_output_shapes
:N
StopGradient_2StopGradient	add_6:z:0*
T0*
_output_shapes
:[
add_7AddV2truediv_1:z:0StopGradient_2:output:0*
T0*
_output_shapes
:^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value_1/MinimumMinimum	add_7:z:0"clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �x
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*
_output_shapes
:L
mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?X
mul_7Mulmul_7/x:output:0clip_by_value_1:z:0*
T0*
_output_shapes
:]

SelectV2_5SelectV2
Less_3:z:0	mul_6:z:0	mul_7:z:0*
T0*
_output_shapes
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
pow_1Powpow_1/x:output:0SelectV2_5:output:0*
T0*
_output_shapes
:G
mul_8Mul	add_5:z:0	pow_1:z:0*
T0*
_output_shapes
:f
ReadVariableOp_4ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0K
Neg_3NegReadVariableOp_4:value:0*
T0*
_output_shapes
:I
add_8AddV2	Neg_3:y:0	mul_8:z:0*
T0*
_output_shapes
:L
mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?N
mul_9Mulmul_9/x:output:0	add_8:z:0*
T0*
_output_shapes
:N
StopGradient_3StopGradient	mul_9:z:0*
T0*
_output_shapes
:f
ReadVariableOp_5ReadVariableOpreadvariableop_3_resource*
_output_shapes
:*
dtype0f
add_9AddV2ReadVariableOp_5:value:0StopGradient_3:output:0*
T0*
_output_shapes
:a
BiasAddBiasAddMatMul:product:0	add_9:z:0*
T0*'
_output_shapes
:����������
,output/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
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
:����������
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
�M
�

"__inference__traced_restore_129430
file_prefix-
assignvariableop_fc1_kernel:)
assignvariableop_1_fc1_bias:2
 assignvariableop_2_output_kernel:,
assignvariableop_3_output_bias:&
assignvariableop_4_iteration:	 *
 assignvariableop_5_learning_rate: 6
$assignvariableop_6_adam_m_fc1_kernel:6
$assignvariableop_7_adam_v_fc1_kernel:0
"assignvariableop_8_adam_m_fc1_bias:0
"assignvariableop_9_adam_v_fc1_bias::
(assignvariableop_10_adam_m_output_kernel::
(assignvariableop_11_adam_v_output_kernel:4
&assignvariableop_12_adam_m_output_bias:4
&assignvariableop_13_adam_v_output_bias:%
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: 
identity_19��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_fc1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_fc1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp assignvariableop_2_output_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_output_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_iterationIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_learning_rateIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_adam_m_fc1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp$assignvariableop_7_adam_v_fc1_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_adam_m_fc1_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_adam_v_fc1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp(assignvariableop_10_adam_m_output_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp(assignvariableop_11_adam_v_output_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_m_output_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_v_output_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_19Identity_19:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
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
�\
�
?__inference_fc1_layer_call_and_return_conditional_losses_129020

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identity��Abs_1/ReadVariableOp�Abs_3/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�)fc1/kernel/Regularizer/Abs/ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0M
SignSignReadVariableOp:value:0*
T0*
_output_shapes

:=
AbsAbsSign:y:0*
T0*
_output_shapes

:J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
subSubsub/x:output:0Abs:y:0*
T0*
_output_shapes

:H
addAddV2Sign:y:0sub:z:0*
T0*
_output_shapes

:l
Abs_1/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0S
Abs_1AbsAbs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:K
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
LessLess	Abs_1:y:0Less/y:output:0*
T0*
_output_shapes

:O

SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3g
SelectV2SelectV2Less:z:0SelectV2/t:output:0	Abs_1:y:0*
T0*
_output_shapes

:S
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?q
GreaterEqualGreaterEqualSelectV2:output:0GreaterEqual/y:output:0*
T0*
_output_shapes

:p
ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
	ones_likeFill(ones_like/Shape/shape_as_tensor:output:0ones_like/Const:output:0*
T0*
_output_shapes

:J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
mulMulones_like:output:0mul/y:output:0*
T0*
_output_shapes

:m

SelectV2_1SelectV2GreaterEqual:z:0mul:z:0SelectV2:output:0*
T0*
_output_shapes

:M
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3U
Less_1Less	Abs_1:y:0Less_1/y:output:0*
T0*
_output_shapes

:r
!ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_1Fill*ones_like_1/Shape/shape_as_tensor:output:0ones_like_1/Const:output:0*
T0*
_output_shapes

:L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �]
mul_1Mulones_like_1:output:0mul_1/y:output:0*
T0*
_output_shapes

:H
LogLogSelectV2_1:output:0*
T0*
_output_shapes

:N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?X
truedivRealDivLog:y:0truediv/y:output:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:K
add_1AddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:P
StopGradientStopGradient	add_1:z:0*
T0*
_output_shapes

:[
add_2AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value/MinimumMinimum	add_2:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
mul_2Mulmul_2/x:output:0clip_by_value:z:0*
T0*
_output_shapes

:a

SelectV2_2SelectV2
Less_1:z:0	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes

:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
powPowpow/x:output:0SelectV2_2:output:0*
T0*
_output_shapes

:G
mul_3Muladd:z:0pow:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_3AddV2	Neg_1:y:0	mul_3:z:0*
T0*
_output_shapes

:L
mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?R
mul_4Mulmul_4/x:output:0	add_3:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_4:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_4AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
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

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
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
:���������: : 2,
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
:���������
 
_user_specified_nameinputs
�
_
C__inference_softmax_layer_call_and_return_conditional_losses_128076

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:���������Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_128202
	fc1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	fc1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_128191o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
�
B
&__inference_relu1_layer_call_fn_129025

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
GPU 2J 8� *J
fERC
A__inference_relu1_layer_call_and_return_conditional_losses_127943`
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
��
�
!__inference__wrapped_model_127764
	fc1_input8
&sequential_fc1_readvariableop_resource:6
(sequential_fc1_readvariableop_3_resource:;
)sequential_output_readvariableop_resource:9
+sequential_output_readvariableop_3_resource:
identity��#sequential/fc1/Abs_1/ReadVariableOp�#sequential/fc1/Abs_3/ReadVariableOp�sequential/fc1/ReadVariableOp�sequential/fc1/ReadVariableOp_1�sequential/fc1/ReadVariableOp_2�sequential/fc1/ReadVariableOp_3�sequential/fc1/ReadVariableOp_4�sequential/fc1/ReadVariableOp_5�&sequential/output/Abs_1/ReadVariableOp�&sequential/output/Abs_3/ReadVariableOp� sequential/output/ReadVariableOp�"sequential/output/ReadVariableOp_1�"sequential/output/ReadVariableOp_2�"sequential/output/ReadVariableOp_3�"sequential/output/ReadVariableOp_4�"sequential/output/ReadVariableOp_5�
sequential/fc1/ReadVariableOpReadVariableOp&sequential_fc1_readvariableop_resource*
_output_shapes

:*
dtype0k
sequential/fc1/SignSign%sequential/fc1/ReadVariableOp:value:0*
T0*
_output_shapes

:[
sequential/fc1/AbsAbssequential/fc1/Sign:y:0*
T0*
_output_shapes

:Y
sequential/fc1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?y
sequential/fc1/subSubsequential/fc1/sub/x:output:0sequential/fc1/Abs:y:0*
T0*
_output_shapes

:u
sequential/fc1/addAddV2sequential/fc1/Sign:y:0sequential/fc1/sub:z:0*
T0*
_output_shapes

:�
#sequential/fc1/Abs_1/ReadVariableOpReadVariableOp&sequential_fc1_readvariableop_resource*
_output_shapes

:*
dtype0q
sequential/fc1/Abs_1Abs+sequential/fc1/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:Z
sequential/fc1/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3~
sequential/fc1/LessLesssequential/fc1/Abs_1:y:0sequential/fc1/Less/y:output:0*
T0*
_output_shapes

:^
sequential/fc1/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential/fc1/SelectV2SelectV2sequential/fc1/Less:z:0"sequential/fc1/SelectV2/t:output:0sequential/fc1/Abs_1:y:0*
T0*
_output_shapes

:b
sequential/fc1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/fc1/GreaterEqualGreaterEqual sequential/fc1/SelectV2:output:0&sequential/fc1/GreaterEqual/y:output:0*
T0*
_output_shapes

:
.sequential/fc1/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      c
sequential/fc1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/fc1/ones_likeFill7sequential/fc1/ones_like/Shape/shape_as_tensor:output:0'sequential/fc1/ones_like/Const:output:0*
T0*
_output_shapes

:Y
sequential/fc1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/fc1/mulMul!sequential/fc1/ones_like:output:0sequential/fc1/mul/y:output:0*
T0*
_output_shapes

:�
sequential/fc1/SelectV2_1SelectV2sequential/fc1/GreaterEqual:z:0sequential/fc1/mul:z:0 sequential/fc1/SelectV2:output:0*
T0*
_output_shapes

:\
sequential/fc1/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential/fc1/Less_1Lesssequential/fc1/Abs_1:y:0 sequential/fc1/Less_1/y:output:0*
T0*
_output_shapes

:�
0sequential/fc1/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      e
 sequential/fc1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/fc1/ones_like_1Fill9sequential/fc1/ones_like_1/Shape/shape_as_tensor:output:0)sequential/fc1/ones_like_1/Const:output:0*
T0*
_output_shapes

:[
sequential/fc1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential/fc1/mul_1Mul#sequential/fc1/ones_like_1:output:0sequential/fc1/mul_1/y:output:0*
T0*
_output_shapes

:f
sequential/fc1/LogLog"sequential/fc1/SelectV2_1:output:0*
T0*
_output_shapes

:]
sequential/fc1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?�
sequential/fc1/truedivRealDivsequential/fc1/Log:y:0!sequential/fc1/truediv/y:output:0*
T0*
_output_shapes

:^
sequential/fc1/NegNegsequential/fc1/truediv:z:0*
T0*
_output_shapes

:b
sequential/fc1/RoundRoundsequential/fc1/truediv:z:0*
T0*
_output_shapes

:x
sequential/fc1/add_1AddV2sequential/fc1/Neg:y:0sequential/fc1/Round:y:0*
T0*
_output_shapes

:n
sequential/fc1/StopGradientStopGradientsequential/fc1/add_1:z:0*
T0*
_output_shapes

:�
sequential/fc1/add_2AddV2sequential/fc1/truediv:z:0$sequential/fc1/StopGradient:output:0*
T0*
_output_shapes

:k
&sequential/fc1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
$sequential/fc1/clip_by_value/MinimumMinimumsequential/fc1/add_2:z:0/sequential/fc1/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:c
sequential/fc1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential/fc1/clip_by_valueMaximum(sequential/fc1/clip_by_value/Minimum:z:0'sequential/fc1/clip_by_value/y:output:0*
T0*
_output_shapes

:[
sequential/fc1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/fc1/mul_2Mulsequential/fc1/mul_2/x:output:0 sequential/fc1/clip_by_value:z:0*
T0*
_output_shapes

:�
sequential/fc1/SelectV2_2SelectV2sequential/fc1/Less_1:z:0sequential/fc1/mul_1:z:0sequential/fc1/mul_2:z:0*
T0*
_output_shapes

:Y
sequential/fc1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
sequential/fc1/powPowsequential/fc1/pow/x:output:0"sequential/fc1/SelectV2_2:output:0*
T0*
_output_shapes

:t
sequential/fc1/mul_3Mulsequential/fc1/add:z:0sequential/fc1/pow:z:0*
T0*
_output_shapes

:�
sequential/fc1/ReadVariableOp_1ReadVariableOp&sequential_fc1_readvariableop_resource*
_output_shapes

:*
dtype0m
sequential/fc1/Neg_1Neg'sequential/fc1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:z
sequential/fc1/add_3AddV2sequential/fc1/Neg_1:y:0sequential/fc1/mul_3:z:0*
T0*
_output_shapes

:[
sequential/fc1/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
sequential/fc1/mul_4Mulsequential/fc1/mul_4/x:output:0sequential/fc1/add_3:z:0*
T0*
_output_shapes

:p
sequential/fc1/StopGradient_1StopGradientsequential/fc1/mul_4:z:0*
T0*
_output_shapes

:�
sequential/fc1/ReadVariableOp_2ReadVariableOp&sequential_fc1_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential/fc1/add_4AddV2'sequential/fc1/ReadVariableOp_2:value:0&sequential/fc1/StopGradient_1:output:0*
T0*
_output_shapes

:v
sequential/fc1/MatMulMatMul	fc1_inputsequential/fc1/add_4:z:0*
T0*'
_output_shapes
:����������
sequential/fc1/ReadVariableOp_3ReadVariableOp(sequential_fc1_readvariableop_3_resource*
_output_shapes
:*
dtype0k
sequential/fc1/Sign_1Sign'sequential/fc1/ReadVariableOp_3:value:0*
T0*
_output_shapes
:[
sequential/fc1/Abs_2Abssequential/fc1/Sign_1:y:0*
T0*
_output_shapes
:[
sequential/fc1/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?{
sequential/fc1/sub_1Subsequential/fc1/sub_1/x:output:0sequential/fc1/Abs_2:y:0*
T0*
_output_shapes
:w
sequential/fc1/add_5AddV2sequential/fc1/Sign_1:y:0sequential/fc1/sub_1:z:0*
T0*
_output_shapes
:�
#sequential/fc1/Abs_3/ReadVariableOpReadVariableOp(sequential_fc1_readvariableop_3_resource*
_output_shapes
:*
dtype0m
sequential/fc1/Abs_3Abs+sequential/fc1/Abs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:\
sequential/fc1/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3~
sequential/fc1/Less_2Lesssequential/fc1/Abs_3:y:0 sequential/fc1/Less_2/y:output:0*
T0*
_output_shapes
:`
sequential/fc1/SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential/fc1/SelectV2_3SelectV2sequential/fc1/Less_2:z:0$sequential/fc1/SelectV2_3/t:output:0sequential/fc1/Abs_3:y:0*
T0*
_output_shapes
:d
sequential/fc1/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/fc1/GreaterEqual_1GreaterEqual"sequential/fc1/SelectV2_3:output:0(sequential/fc1/GreaterEqual_1/y:output:0*
T0*
_output_shapes
:z
0sequential/fc1/ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:e
 sequential/fc1/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/fc1/ones_like_2Fill9sequential/fc1/ones_like_2/Shape/shape_as_tensor:output:0)sequential/fc1/ones_like_2/Const:output:0*
T0*
_output_shapes
:[
sequential/fc1/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/fc1/mul_5Mul#sequential/fc1/ones_like_2:output:0sequential/fc1/mul_5/y:output:0*
T0*
_output_shapes
:�
sequential/fc1/SelectV2_4SelectV2!sequential/fc1/GreaterEqual_1:z:0sequential/fc1/mul_5:z:0"sequential/fc1/SelectV2_3:output:0*
T0*
_output_shapes
:\
sequential/fc1/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3~
sequential/fc1/Less_3Lesssequential/fc1/Abs_3:y:0 sequential/fc1/Less_3/y:output:0*
T0*
_output_shapes
:z
0sequential/fc1/ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:e
 sequential/fc1/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/fc1/ones_like_3Fill9sequential/fc1/ones_like_3/Shape/shape_as_tensor:output:0)sequential/fc1/ones_like_3/Const:output:0*
T0*
_output_shapes
:[
sequential/fc1/mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential/fc1/mul_6Mul#sequential/fc1/ones_like_3:output:0sequential/fc1/mul_6/y:output:0*
T0*
_output_shapes
:d
sequential/fc1/Log_1Log"sequential/fc1/SelectV2_4:output:0*
T0*
_output_shapes
:_
sequential/fc1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?�
sequential/fc1/truediv_1RealDivsequential/fc1/Log_1:y:0#sequential/fc1/truediv_1/y:output:0*
T0*
_output_shapes
:^
sequential/fc1/Neg_2Negsequential/fc1/truediv_1:z:0*
T0*
_output_shapes
:b
sequential/fc1/Round_1Roundsequential/fc1/truediv_1:z:0*
T0*
_output_shapes
:x
sequential/fc1/add_6AddV2sequential/fc1/Neg_2:y:0sequential/fc1/Round_1:y:0*
T0*
_output_shapes
:l
sequential/fc1/StopGradient_2StopGradientsequential/fc1/add_6:z:0*
T0*
_output_shapes
:�
sequential/fc1/add_7AddV2sequential/fc1/truediv_1:z:0&sequential/fc1/StopGradient_2:output:0*
T0*
_output_shapes
:m
(sequential/fc1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
&sequential/fc1/clip_by_value_1/MinimumMinimumsequential/fc1/add_7:z:01sequential/fc1/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:e
 sequential/fc1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential/fc1/clip_by_value_1Maximum*sequential/fc1/clip_by_value_1/Minimum:z:0)sequential/fc1/clip_by_value_1/y:output:0*
T0*
_output_shapes
:[
sequential/fc1/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/fc1/mul_7Mulsequential/fc1/mul_7/x:output:0"sequential/fc1/clip_by_value_1:z:0*
T0*
_output_shapes
:�
sequential/fc1/SelectV2_5SelectV2sequential/fc1/Less_3:z:0sequential/fc1/mul_6:z:0sequential/fc1/mul_7:z:0*
T0*
_output_shapes
:[
sequential/fc1/pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
sequential/fc1/pow_1Powsequential/fc1/pow_1/x:output:0"sequential/fc1/SelectV2_5:output:0*
T0*
_output_shapes
:t
sequential/fc1/mul_8Mulsequential/fc1/add_5:z:0sequential/fc1/pow_1:z:0*
T0*
_output_shapes
:�
sequential/fc1/ReadVariableOp_4ReadVariableOp(sequential_fc1_readvariableop_3_resource*
_output_shapes
:*
dtype0i
sequential/fc1/Neg_3Neg'sequential/fc1/ReadVariableOp_4:value:0*
T0*
_output_shapes
:v
sequential/fc1/add_8AddV2sequential/fc1/Neg_3:y:0sequential/fc1/mul_8:z:0*
T0*
_output_shapes
:[
sequential/fc1/mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?{
sequential/fc1/mul_9Mulsequential/fc1/mul_9/x:output:0sequential/fc1/add_8:z:0*
T0*
_output_shapes
:l
sequential/fc1/StopGradient_3StopGradientsequential/fc1/mul_9:z:0*
T0*
_output_shapes
:�
sequential/fc1/ReadVariableOp_5ReadVariableOp(sequential_fc1_readvariableop_3_resource*
_output_shapes
:*
dtype0�
sequential/fc1/add_9AddV2'sequential/fc1/ReadVariableOp_5:value:0&sequential/fc1/StopGradient_3:output:0*
T0*
_output_shapes
:�
sequential/fc1/BiasAddBiasAddsequential/fc1/MatMul:product:0sequential/fc1/add_9:z:0*
T0*'
_output_shapes
:���������X
sequential/relu1/Pow/xConst*
_output_shapes
: *
dtype0*
value	B :X
sequential/relu1/Pow/yConst*
_output_shapes
: *
dtype0*
value	B :~
sequential/relu1/PowPowsequential/relu1/Pow/x:output:0sequential/relu1/Pow/y:output:0*
T0*
_output_shapes
: g
sequential/relu1/CastCastsequential/relu1/Pow:z:0*

DstT0*

SrcT0*
_output_shapes
: Z
sequential/relu1/Pow_1/xConst*
_output_shapes
: *
dtype0*
value	B :Z
sequential/relu1/Pow_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential/relu1/Pow_1Pow!sequential/relu1/Pow_1/x:output:0!sequential/relu1/Pow_1/y:output:0*
T0*
_output_shapes
: k
sequential/relu1/Cast_1Castsequential/relu1/Pow_1:z:0*

DstT0*

SrcT0*
_output_shapes
: [
sequential/relu1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @[
sequential/relu1/Cast_2/xConst*
_output_shapes
: *
dtype0*
value	B :s
sequential/relu1/Cast_2Cast"sequential/relu1/Cast_2/x:output:0*

DstT0*

SrcT0*
_output_shapes
: [
sequential/relu1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Az
sequential/relu1/subSubsequential/relu1/Cast_2:y:0sequential/relu1/sub/y:output:0*
T0*
_output_shapes
: y
sequential/relu1/Pow_2Powsequential/relu1/Const:output:0sequential/relu1/sub:z:0*
T0*
_output_shapes
: w
sequential/relu1/sub_1Subsequential/relu1/Cast_1:y:0sequential/relu1/Pow_2:z:0*
T0*
_output_shapes
: �
sequential/relu1/LessEqual	LessEqualsequential/fc1/BiasAdd:output:0sequential/relu1/sub_1:z:0*
T0*'
_output_shapes
:���������p
sequential/relu1/ReluRelusequential/fc1/BiasAdd:output:0*
T0*'
_output_shapes
:���������}
 sequential/relu1/ones_like/ShapeShapesequential/fc1/BiasAdd:output:0*
T0*
_output_shapes
::��e
 sequential/relu1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/relu1/ones_likeFill)sequential/relu1/ones_like/Shape:output:0)sequential/relu1/ones_like/Const:output:0*
T0*'
_output_shapes
:���������w
sequential/relu1/sub_2Subsequential/relu1/Cast_1:y:0sequential/relu1/Pow_2:z:0*
T0*
_output_shapes
: �
sequential/relu1/mulMul#sequential/relu1/ones_like:output:0sequential/relu1/sub_2:z:0*
T0*'
_output_shapes
:����������
sequential/relu1/SelectV2SelectV2sequential/relu1/LessEqual:z:0#sequential/relu1/Relu:activations:0sequential/relu1/mul:z:0*
T0*'
_output_shapes
:����������
sequential/relu1/mul_1Mulsequential/fc1/BiasAdd:output:0sequential/relu1/Cast:y:0*
T0*'
_output_shapes
:����������
sequential/relu1/truedivRealDivsequential/relu1/mul_1:z:0sequential/relu1/Cast_1:y:0*
T0*'
_output_shapes
:���������k
sequential/relu1/NegNegsequential/relu1/truediv:z:0*
T0*'
_output_shapes
:���������o
sequential/relu1/RoundRoundsequential/relu1/truediv:z:0*
T0*'
_output_shapes
:����������
sequential/relu1/addAddV2sequential/relu1/Neg:y:0sequential/relu1/Round:y:0*
T0*'
_output_shapes
:���������y
sequential/relu1/StopGradientStopGradientsequential/relu1/add:z:0*
T0*'
_output_shapes
:����������
sequential/relu1/add_1AddV2sequential/relu1/truediv:z:0&sequential/relu1/StopGradient:output:0*
T0*'
_output_shapes
:����������
sequential/relu1/truediv_1RealDivsequential/relu1/add_1:z:0sequential/relu1/Cast:y:0*
T0*'
_output_shapes
:���������a
sequential/relu1/truediv_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/relu1/truediv_2RealDiv%sequential/relu1/truediv_2/x:output:0sequential/relu1/Cast:y:0*
T0*
_output_shapes
: ]
sequential/relu1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/relu1/sub_3Sub!sequential/relu1/sub_3/x:output:0sequential/relu1/truediv_2:z:0*
T0*
_output_shapes
: �
&sequential/relu1/clip_by_value/MinimumMinimumsequential/relu1/truediv_1:z:0sequential/relu1/sub_3:z:0*
T0*'
_output_shapes
:���������e
 sequential/relu1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential/relu1/clip_by_valueMaximum*sequential/relu1/clip_by_value/Minimum:z:0)sequential/relu1/clip_by_value/y:output:0*
T0*'
_output_shapes
:����������
sequential/relu1/mul_2Mulsequential/relu1/Cast_1:y:0"sequential/relu1/clip_by_value:z:0*
T0*'
_output_shapes
:���������s
sequential/relu1/Neg_1Neg"sequential/relu1/SelectV2:output:0*
T0*'
_output_shapes
:����������
sequential/relu1/add_2AddV2sequential/relu1/Neg_1:y:0sequential/relu1/mul_2:z:0*
T0*'
_output_shapes
:���������]
sequential/relu1/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/relu1/mul_3Mul!sequential/relu1/mul_3/x:output:0sequential/relu1/add_2:z:0*
T0*'
_output_shapes
:���������}
sequential/relu1/StopGradient_1StopGradientsequential/relu1/mul_3:z:0*
T0*'
_output_shapes
:����������
sequential/relu1/add_3AddV2"sequential/relu1/SelectV2:output:0(sequential/relu1/StopGradient_1:output:0*
T0*'
_output_shapes
:����������
 sequential/output/ReadVariableOpReadVariableOp)sequential_output_readvariableop_resource*
_output_shapes

:*
dtype0q
sequential/output/SignSign(sequential/output/ReadVariableOp:value:0*
T0*
_output_shapes

:a
sequential/output/AbsAbssequential/output/Sign:y:0*
T0*
_output_shapes

:\
sequential/output/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/subSub sequential/output/sub/x:output:0sequential/output/Abs:y:0*
T0*
_output_shapes

:~
sequential/output/addAddV2sequential/output/Sign:y:0sequential/output/sub:z:0*
T0*
_output_shapes

:�
&sequential/output/Abs_1/ReadVariableOpReadVariableOp)sequential_output_readvariableop_resource*
_output_shapes

:*
dtype0w
sequential/output/Abs_1Abs.sequential/output/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:]
sequential/output/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential/output/LessLesssequential/output/Abs_1:y:0!sequential/output/Less/y:output:0*
T0*
_output_shapes

:a
sequential/output/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential/output/SelectV2SelectV2sequential/output/Less:z:0%sequential/output/SelectV2/t:output:0sequential/output/Abs_1:y:0*
T0*
_output_shapes

:e
 sequential/output/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/GreaterEqualGreaterEqual#sequential/output/SelectV2:output:0)sequential/output/GreaterEqual/y:output:0*
T0*
_output_shapes

:�
1sequential/output/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
!sequential/output/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/ones_likeFill:sequential/output/ones_like/Shape/shape_as_tensor:output:0*sequential/output/ones_like/Const:output:0*
T0*
_output_shapes

:\
sequential/output/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/mulMul$sequential/output/ones_like:output:0 sequential/output/mul/y:output:0*
T0*
_output_shapes

:�
sequential/output/SelectV2_1SelectV2"sequential/output/GreaterEqual:z:0sequential/output/mul:z:0#sequential/output/SelectV2:output:0*
T0*
_output_shapes

:_
sequential/output/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential/output/Less_1Lesssequential/output/Abs_1:y:0#sequential/output/Less_1/y:output:0*
T0*
_output_shapes

:�
3sequential/output/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      h
#sequential/output/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/ones_like_1Fill<sequential/output/ones_like_1/Shape/shape_as_tensor:output:0,sequential/output/ones_like_1/Const:output:0*
T0*
_output_shapes

:^
sequential/output/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential/output/mul_1Mul&sequential/output/ones_like_1:output:0"sequential/output/mul_1/y:output:0*
T0*
_output_shapes

:l
sequential/output/LogLog%sequential/output/SelectV2_1:output:0*
T0*
_output_shapes

:`
sequential/output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?�
sequential/output/truedivRealDivsequential/output/Log:y:0$sequential/output/truediv/y:output:0*
T0*
_output_shapes

:d
sequential/output/NegNegsequential/output/truediv:z:0*
T0*
_output_shapes

:h
sequential/output/RoundRoundsequential/output/truediv:z:0*
T0*
_output_shapes

:�
sequential/output/add_1AddV2sequential/output/Neg:y:0sequential/output/Round:y:0*
T0*
_output_shapes

:t
sequential/output/StopGradientStopGradientsequential/output/add_1:z:0*
T0*
_output_shapes

:�
sequential/output/add_2AddV2sequential/output/truediv:z:0'sequential/output/StopGradient:output:0*
T0*
_output_shapes

:n
)sequential/output/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
'sequential/output/clip_by_value/MinimumMinimumsequential/output/add_2:z:02sequential/output/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:f
!sequential/output/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential/output/clip_by_valueMaximum+sequential/output/clip_by_value/Minimum:z:0*sequential/output/clip_by_value/y:output:0*
T0*
_output_shapes

:^
sequential/output/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/mul_2Mul"sequential/output/mul_2/x:output:0#sequential/output/clip_by_value:z:0*
T0*
_output_shapes

:�
sequential/output/SelectV2_2SelectV2sequential/output/Less_1:z:0sequential/output/mul_1:z:0sequential/output/mul_2:z:0*
T0*
_output_shapes

:\
sequential/output/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
sequential/output/powPow sequential/output/pow/x:output:0%sequential/output/SelectV2_2:output:0*
T0*
_output_shapes

:}
sequential/output/mul_3Mulsequential/output/add:z:0sequential/output/pow:z:0*
T0*
_output_shapes

:�
"sequential/output/ReadVariableOp_1ReadVariableOp)sequential_output_readvariableop_resource*
_output_shapes

:*
dtype0s
sequential/output/Neg_1Neg*sequential/output/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
sequential/output/add_3AddV2sequential/output/Neg_1:y:0sequential/output/mul_3:z:0*
T0*
_output_shapes

:^
sequential/output/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/mul_4Mul"sequential/output/mul_4/x:output:0sequential/output/add_3:z:0*
T0*
_output_shapes

:v
 sequential/output/StopGradient_1StopGradientsequential/output/mul_4:z:0*
T0*
_output_shapes

:�
"sequential/output/ReadVariableOp_2ReadVariableOp)sequential_output_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential/output/add_4AddV2*sequential/output/ReadVariableOp_2:value:0)sequential/output/StopGradient_1:output:0*
T0*
_output_shapes

:�
sequential/output/MatMulMatMulsequential/relu1/add_3:z:0sequential/output/add_4:z:0*
T0*'
_output_shapes
:����������
"sequential/output/ReadVariableOp_3ReadVariableOp+sequential_output_readvariableop_3_resource*
_output_shapes
:*
dtype0q
sequential/output/Sign_1Sign*sequential/output/ReadVariableOp_3:value:0*
T0*
_output_shapes
:a
sequential/output/Abs_2Abssequential/output/Sign_1:y:0*
T0*
_output_shapes
:^
sequential/output/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/sub_1Sub"sequential/output/sub_1/x:output:0sequential/output/Abs_2:y:0*
T0*
_output_shapes
:�
sequential/output/add_5AddV2sequential/output/Sign_1:y:0sequential/output/sub_1:z:0*
T0*
_output_shapes
:�
&sequential/output/Abs_3/ReadVariableOpReadVariableOp+sequential_output_readvariableop_3_resource*
_output_shapes
:*
dtype0s
sequential/output/Abs_3Abs.sequential/output/Abs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:_
sequential/output/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential/output/Less_2Lesssequential/output/Abs_3:y:0#sequential/output/Less_2/y:output:0*
T0*
_output_shapes
:c
sequential/output/SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential/output/SelectV2_3SelectV2sequential/output/Less_2:z:0'sequential/output/SelectV2_3/t:output:0sequential/output/Abs_3:y:0*
T0*
_output_shapes
:g
"sequential/output/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
 sequential/output/GreaterEqual_1GreaterEqual%sequential/output/SelectV2_3:output:0+sequential/output/GreaterEqual_1/y:output:0*
T0*
_output_shapes
:}
3sequential/output/ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:h
#sequential/output/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/ones_like_2Fill<sequential/output/ones_like_2/Shape/shape_as_tensor:output:0,sequential/output/ones_like_2/Const:output:0*
T0*
_output_shapes
:^
sequential/output/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/mul_5Mul&sequential/output/ones_like_2:output:0"sequential/output/mul_5/y:output:0*
T0*
_output_shapes
:�
sequential/output/SelectV2_4SelectV2$sequential/output/GreaterEqual_1:z:0sequential/output/mul_5:z:0%sequential/output/SelectV2_3:output:0*
T0*
_output_shapes
:_
sequential/output/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
sequential/output/Less_3Lesssequential/output/Abs_3:y:0#sequential/output/Less_3/y:output:0*
T0*
_output_shapes
:}
3sequential/output/ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:h
#sequential/output/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/ones_like_3Fill<sequential/output/ones_like_3/Shape/shape_as_tensor:output:0,sequential/output/ones_like_3/Const:output:0*
T0*
_output_shapes
:^
sequential/output/mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
sequential/output/mul_6Mul&sequential/output/ones_like_3:output:0"sequential/output/mul_6/y:output:0*
T0*
_output_shapes
:j
sequential/output/Log_1Log%sequential/output/SelectV2_4:output:0*
T0*
_output_shapes
:b
sequential/output/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?�
sequential/output/truediv_1RealDivsequential/output/Log_1:y:0&sequential/output/truediv_1/y:output:0*
T0*
_output_shapes
:d
sequential/output/Neg_2Negsequential/output/truediv_1:z:0*
T0*
_output_shapes
:h
sequential/output/Round_1Roundsequential/output/truediv_1:z:0*
T0*
_output_shapes
:�
sequential/output/add_6AddV2sequential/output/Neg_2:y:0sequential/output/Round_1:y:0*
T0*
_output_shapes
:r
 sequential/output/StopGradient_2StopGradientsequential/output/add_6:z:0*
T0*
_output_shapes
:�
sequential/output/add_7AddV2sequential/output/truediv_1:z:0)sequential/output/StopGradient_2:output:0*
T0*
_output_shapes
:p
+sequential/output/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
)sequential/output/clip_by_value_1/MinimumMinimumsequential/output/add_7:z:04sequential/output/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:h
#sequential/output/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
!sequential/output/clip_by_value_1Maximum-sequential/output/clip_by_value_1/Minimum:z:0,sequential/output/clip_by_value_1/y:output:0*
T0*
_output_shapes
:^
sequential/output/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/mul_7Mul"sequential/output/mul_7/x:output:0%sequential/output/clip_by_value_1:z:0*
T0*
_output_shapes
:�
sequential/output/SelectV2_5SelectV2sequential/output/Less_3:z:0sequential/output/mul_6:z:0sequential/output/mul_7:z:0*
T0*
_output_shapes
:^
sequential/output/pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
sequential/output/pow_1Pow"sequential/output/pow_1/x:output:0%sequential/output/SelectV2_5:output:0*
T0*
_output_shapes
:}
sequential/output/mul_8Mulsequential/output/add_5:z:0sequential/output/pow_1:z:0*
T0*
_output_shapes
:�
"sequential/output/ReadVariableOp_4ReadVariableOp+sequential_output_readvariableop_3_resource*
_output_shapes
:*
dtype0o
sequential/output/Neg_3Neg*sequential/output/ReadVariableOp_4:value:0*
T0*
_output_shapes
:
sequential/output/add_8AddV2sequential/output/Neg_3:y:0sequential/output/mul_8:z:0*
T0*
_output_shapes
:^
sequential/output/mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sequential/output/mul_9Mul"sequential/output/mul_9/x:output:0sequential/output/add_8:z:0*
T0*
_output_shapes
:r
 sequential/output/StopGradient_3StopGradientsequential/output/mul_9:z:0*
T0*
_output_shapes
:�
"sequential/output/ReadVariableOp_5ReadVariableOp+sequential_output_readvariableop_3_resource*
_output_shapes
:*
dtype0�
sequential/output/add_9AddV2*sequential/output/ReadVariableOp_5:value:0)sequential/output/StopGradient_3:output:0*
T0*
_output_shapes
:�
sequential/output/BiasAddBiasAdd"sequential/output/MatMul:product:0sequential/output/add_9:z:0*
T0*'
_output_shapes
:���������{
sequential/softmax/SoftmaxSoftmax"sequential/output/BiasAdd:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$sequential/softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^sequential/fc1/Abs_1/ReadVariableOp$^sequential/fc1/Abs_3/ReadVariableOp^sequential/fc1/ReadVariableOp ^sequential/fc1/ReadVariableOp_1 ^sequential/fc1/ReadVariableOp_2 ^sequential/fc1/ReadVariableOp_3 ^sequential/fc1/ReadVariableOp_4 ^sequential/fc1/ReadVariableOp_5'^sequential/output/Abs_1/ReadVariableOp'^sequential/output/Abs_3/ReadVariableOp!^sequential/output/ReadVariableOp#^sequential/output/ReadVariableOp_1#^sequential/output/ReadVariableOp_2#^sequential/output/ReadVariableOp_3#^sequential/output/ReadVariableOp_4#^sequential/output/ReadVariableOp_5*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2J
#sequential/fc1/Abs_1/ReadVariableOp#sequential/fc1/Abs_1/ReadVariableOp2J
#sequential/fc1/Abs_3/ReadVariableOp#sequential/fc1/Abs_3/ReadVariableOp2>
sequential/fc1/ReadVariableOpsequential/fc1/ReadVariableOp2B
sequential/fc1/ReadVariableOp_1sequential/fc1/ReadVariableOp_12B
sequential/fc1/ReadVariableOp_2sequential/fc1/ReadVariableOp_22B
sequential/fc1/ReadVariableOp_3sequential/fc1/ReadVariableOp_32B
sequential/fc1/ReadVariableOp_4sequential/fc1/ReadVariableOp_42B
sequential/fc1/ReadVariableOp_5sequential/fc1/ReadVariableOp_52P
&sequential/output/Abs_1/ReadVariableOp&sequential/output/Abs_1/ReadVariableOp2P
&sequential/output/Abs_3/ReadVariableOp&sequential/output/Abs_3/ReadVariableOp2D
 sequential/output/ReadVariableOp sequential/output/ReadVariableOp2H
"sequential/output/ReadVariableOp_1"sequential/output/ReadVariableOp_12H
"sequential/output/ReadVariableOp_2"sequential/output/ReadVariableOp_22H
"sequential/output/ReadVariableOp_3"sequential/output/ReadVariableOp_32H
"sequential/output/ReadVariableOp_4"sequential/output/ReadVariableOp_42H
"sequential/output/ReadVariableOp_5"sequential/output/ReadVariableOp_5:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
�\
�
?__inference_fc1_layer_call_and_return_conditional_losses_127888

inputs)
readvariableop_resource:'
readvariableop_3_resource:
identity��Abs_1/ReadVariableOp�Abs_3/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�)fc1/kernel/Regularizer/Abs/ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0M
SignSignReadVariableOp:value:0*
T0*
_output_shapes

:=
AbsAbsSign:y:0*
T0*
_output_shapes

:J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
subSubsub/x:output:0Abs:y:0*
T0*
_output_shapes

:H
addAddV2Sign:y:0sub:z:0*
T0*
_output_shapes

:l
Abs_1/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0S
Abs_1AbsAbs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:K
Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
LessLess	Abs_1:y:0Less/y:output:0*
T0*
_output_shapes

:O

SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3g
SelectV2SelectV2Less:z:0SelectV2/t:output:0	Abs_1:y:0*
T0*
_output_shapes

:S
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?q
GreaterEqualGreaterEqualSelectV2:output:0GreaterEqual/y:output:0*
T0*
_output_shapes

:p
ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
	ones_likeFill(ones_like/Shape/shape_as_tensor:output:0ones_like/Const:output:0*
T0*
_output_shapes

:J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?W
mulMulones_like:output:0mul/y:output:0*
T0*
_output_shapes

:m

SelectV2_1SelectV2GreaterEqual:z:0mul:z:0SelectV2:output:0*
T0*
_output_shapes

:M
Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3U
Less_1Less	Abs_1:y:0Less_1/y:output:0*
T0*
_output_shapes

:r
!ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ones_like_1Fill*ones_like_1/Shape/shape_as_tensor:output:0ones_like_1/Const:output:0*
T0*
_output_shapes

:L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �]
mul_1Mulones_like_1:output:0mul_1/y:output:0*
T0*
_output_shapes

:H
LogLogSelectV2_1:output:0*
T0*
_output_shapes

:N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?X
truedivRealDivLog:y:0truediv/y:output:0*
T0*
_output_shapes

:@
NegNegtruediv:z:0*
T0*
_output_shapes

:D
RoundRoundtruediv:z:0*
T0*
_output_shapes

:K
add_1AddV2Neg:y:0	Round:y:0*
T0*
_output_shapes

:P
StopGradientStopGradient	add_1:z:0*
T0*
_output_shapes

:[
add_2AddV2truediv:z:0StopGradient:output:0*
T0*
_output_shapes

:\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bv
clip_by_value/MinimumMinimum	add_2:z:0 clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �v
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*
_output_shapes

:L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
mul_2Mulmul_2/x:output:0clip_by_value:z:0*
T0*
_output_shapes

:a

SelectV2_2SelectV2
Less_1:z:0	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes

:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @X
powPowpow/x:output:0SelectV2_2:output:0*
T0*
_output_shapes

:G
mul_3Muladd:z:0pow:z:0*
T0*
_output_shapes

:h
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0O
Neg_1NegReadVariableOp_1:value:0*
T0*
_output_shapes

:M
add_3AddV2	Neg_1:y:0	mul_3:z:0*
T0*
_output_shapes

:L
mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?R
mul_4Mulmul_4/x:output:0	add_3:z:0*
T0*
_output_shapes

:R
StopGradient_1StopGradient	mul_4:z:0*
T0*
_output_shapes

:h
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes

:*
dtype0j
add_4AddV2ReadVariableOp_2:value:0StopGradient_1:output:0*
T0*
_output_shapes

:U
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

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
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
:���������: : 2,
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
:���������
 
_user_specified_nameinputs
�

�
__inference_loss_fn_0_129224D
2fc1_kernel_regularizer_abs_readvariableop_resource:
identity��)fc1/kernel/Regularizer/Abs/ReadVariableOp�
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp2fc1_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
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
�
�
+__inference_sequential_layer_call_fn_128314

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_128150o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
F__inference_sequential_layer_call_and_return_conditional_losses_128891

inputs-
fc1_readvariableop_resource:+
fc1_readvariableop_3_resource:0
output_readvariableop_resource:.
 output_readvariableop_3_resource:
identity��fc1/Abs_1/ReadVariableOp�fc1/Abs_3/ReadVariableOp�fc1/ReadVariableOp�fc1/ReadVariableOp_1�fc1/ReadVariableOp_2�fc1/ReadVariableOp_3�fc1/ReadVariableOp_4�fc1/ReadVariableOp_5�)fc1/kernel/Regularizer/Abs/ReadVariableOp�output/Abs_1/ReadVariableOp�output/Abs_3/ReadVariableOp�output/ReadVariableOp�output/ReadVariableOp_1�output/ReadVariableOp_2�output/ReadVariableOp_3�output/ReadVariableOp_4�output/ReadVariableOp_5�,output/kernel/Regularizer/Abs/ReadVariableOpn
fc1/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0U
fc1/SignSignfc1/ReadVariableOp:value:0*
T0*
_output_shapes

:E
fc1/AbsAbsfc1/Sign:y:0*
T0*
_output_shapes

:N
	fc1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?X
fc1/subSubfc1/sub/x:output:0fc1/Abs:y:0*
T0*
_output_shapes

:T
fc1/addAddV2fc1/Sign:y:0fc1/sub:z:0*
T0*
_output_shapes

:t
fc1/Abs_1/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0[
	fc1/Abs_1Abs fc1/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:O

fc1/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3]
fc1/LessLessfc1/Abs_1:y:0fc1/Less/y:output:0*
T0*
_output_shapes

:S
fc1/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3w
fc1/SelectV2SelectV2fc1/Less:z:0fc1/SelectV2/t:output:0fc1/Abs_1:y:0*
T0*
_output_shapes

:W
fc1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?}
fc1/GreaterEqualGreaterEqualfc1/SelectV2:output:0fc1/GreaterEqual/y:output:0*
T0*
_output_shapes

:t
#fc1/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      X
fc1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_likeFill,fc1/ones_like/Shape/shape_as_tensor:output:0fc1/ones_like/Const:output:0*
T0*
_output_shapes

:N
	fc1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
fc1/mulMulfc1/ones_like:output:0fc1/mul/y:output:0*
T0*
_output_shapes

:}
fc1/SelectV2_1SelectV2fc1/GreaterEqual:z:0fc1/mul:z:0fc1/SelectV2:output:0*
T0*
_output_shapes

:Q
fc1/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3a

fc1/Less_1Lessfc1/Abs_1:y:0fc1/Less_1/y:output:0*
T0*
_output_shapes

:v
%fc1/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      Z
fc1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fc1/ones_like_1Fill.fc1/ones_like_1/Shape/shape_as_tensor:output:0fc1/ones_like_1/Const:output:0*
T0*
_output_shapes

:P
fc1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �i
	fc1/mul_1Mulfc1/ones_like_1:output:0fc1/mul_1/y:output:0*
T0*
_output_shapes

:P
fc1/LogLogfc1/SelectV2_1:output:0*
T0*
_output_shapes

:R
fc1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?d
fc1/truedivRealDivfc1/Log:y:0fc1/truediv/y:output:0*
T0*
_output_shapes

:H
fc1/NegNegfc1/truediv:z:0*
T0*
_output_shapes

:L
	fc1/RoundRoundfc1/truediv:z:0*
T0*
_output_shapes

:W
	fc1/add_1AddV2fc1/Neg:y:0fc1/Round:y:0*
T0*
_output_shapes

:X
fc1/StopGradientStopGradientfc1/add_1:z:0*
T0*
_output_shapes

:g
	fc1/add_2AddV2fc1/truediv:z:0fc1/StopGradient:output:0*
T0*
_output_shapes

:`
fc1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
fc1/clip_by_value/MinimumMinimumfc1/add_2:z:0$fc1/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:X
fc1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
fc1/clip_by_valueMaximumfc1/clip_by_value/Minimum:z:0fc1/clip_by_value/y:output:0*
T0*
_output_shapes

:P
fc1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
	fc1/mul_2Mulfc1/mul_2/x:output:0fc1/clip_by_value:z:0*
T0*
_output_shapes

:q
fc1/SelectV2_2SelectV2fc1/Less_1:z:0fc1/mul_1:z:0fc1/mul_2:z:0*
T0*
_output_shapes

:N
	fc1/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
fc1/powPowfc1/pow/x:output:0fc1/SelectV2_2:output:0*
T0*
_output_shapes

:S
	fc1/mul_3Mulfc1/add:z:0fc1/pow:z:0*
T0*
_output_shapes

:p
fc1/ReadVariableOp_1ReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0W
	fc1/Neg_1Negfc1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:Y
	fc1/add_3AddV2fc1/Neg_1:y:0fc1/mul_3:z:0*
T0*
_output_shapes

:P
fc1/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
	fc1/mul_4Mulfc1/mul_4/x:output:0fc1/add_3:z:0*
T0*
_output_shapes

:Z
fc1/StopGradient_1StopGradientfc1/mul_4:z:0*
T0*
_output_shapes

:p
fc1/ReadVariableOp_2ReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0v
	fc1/add_4AddV2fc1/ReadVariableOp_2:value:0fc1/StopGradient_1:output:0*
T0*
_output_shapes

:]

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
:���������g
relu1/ones_like/ShapeShapefc1/BiasAdd:output:0*
T0*
_output_shapes
::��Z
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

:*
dtype0[
output/SignSignoutput/ReadVariableOp:value:0*
T0*
_output_shapes

:K

output/AbsAbsoutput/Sign:y:0*
T0*
_output_shapes

:Q
output/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a

output/subSuboutput/sub/x:output:0output/Abs:y:0*
T0*
_output_shapes

:]

output/addAddV2output/Sign:y:0output/sub:z:0*
T0*
_output_shapes

:z
output/Abs_1/ReadVariableOpReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0a
output/Abs_1Abs#output/Abs_1/ReadVariableOp:value:0*
T0*
_output_shapes

:R
output/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/LessLessoutput/Abs_1:y:0output/Less/y:output:0*
T0*
_output_shapes

:V
output/SelectV2/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
output/SelectV2SelectV2output/Less:z:0output/SelectV2/t:output:0output/Abs_1:y:0*
T0*
_output_shapes

:Z
output/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/GreaterEqualGreaterEqualoutput/SelectV2:output:0output/GreaterEqual/y:output:0*
T0*
_output_shapes

:w
&output/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      [
output/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_likeFill/output/ones_like/Shape/shape_as_tensor:output:0output/ones_like/Const:output:0*
T0*
_output_shapes

:Q
output/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l

output/mulMuloutput/ones_like:output:0output/mul/y:output:0*
T0*
_output_shapes

:�
output/SelectV2_1SelectV2output/GreaterEqual:z:0output/mul:z:0output/SelectV2:output:0*
T0*
_output_shapes

:T
output/Less_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3j
output/Less_1Lessoutput/Abs_1:y:0output/Less_1/y:output:0*
T0*
_output_shapes

:y
(output/ones_like_1/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      ]
output/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_1Fill1output/ones_like_1/Shape/shape_as_tensor:output:0!output/ones_like_1/Const:output:0*
T0*
_output_shapes

:S
output/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �r
output/mul_1Muloutput/ones_like_1:output:0output/mul_1/y:output:0*
T0*
_output_shapes

:V

output/LogLogoutput/SelectV2_1:output:0*
T0*
_output_shapes

:U
output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?m
output/truedivRealDivoutput/Log:y:0output/truediv/y:output:0*
T0*
_output_shapes

:N

output/NegNegoutput/truediv:z:0*
T0*
_output_shapes

:R
output/RoundRoundoutput/truediv:z:0*
T0*
_output_shapes

:`
output/add_1AddV2output/Neg:y:0output/Round:y:0*
T0*
_output_shapes

:^
output/StopGradientStopGradientoutput/add_1:z:0*
T0*
_output_shapes

:p
output/add_2AddV2output/truediv:z:0output/StopGradient:output:0*
T0*
_output_shapes

:c
output/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
output/clip_by_value/MinimumMinimumoutput/add_2:z:0'output/clip_by_value/Minimum/y:output:0*
T0*
_output_shapes

:[
output/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
output/clip_by_valueMaximum output/clip_by_value/Minimum:z:0output/clip_by_value/y:output:0*
T0*
_output_shapes

:S
output/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?o
output/mul_2Muloutput/mul_2/x:output:0output/clip_by_value:z:0*
T0*
_output_shapes

:}
output/SelectV2_2SelectV2output/Less_1:z:0output/mul_1:z:0output/mul_2:z:0*
T0*
_output_shapes

:Q
output/pow/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @m

output/powPowoutput/pow/x:output:0output/SelectV2_2:output:0*
T0*
_output_shapes

:\
output/mul_3Muloutput/add:z:0output/pow:z:0*
T0*
_output_shapes

:v
output/ReadVariableOp_1ReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0]
output/Neg_1Negoutput/ReadVariableOp_1:value:0*
T0*
_output_shapes

:b
output/add_3AddV2output/Neg_1:y:0output/mul_3:z:0*
T0*
_output_shapes

:S
output/mul_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
output/mul_4Muloutput/mul_4/x:output:0output/add_3:z:0*
T0*
_output_shapes

:`
output/StopGradient_1StopGradientoutput/mul_4:z:0*
T0*
_output_shapes

:v
output/ReadVariableOp_2ReadVariableOpoutput_readvariableop_resource*
_output_shapes

:*
dtype0
output/add_4AddV2output/ReadVariableOp_2:value:0output/StopGradient_1:output:0*
T0*
_output_shapes

:l
output/MatMulMatMulrelu1/add_3:z:0output/add_4:z:0*
T0*'
_output_shapes
:���������t
output/ReadVariableOp_3ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0[
output/Sign_1Signoutput/ReadVariableOp_3:value:0*
T0*
_output_shapes
:K
output/Abs_2Absoutput/Sign_1:y:0*
T0*
_output_shapes
:S
output/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
output/sub_1Suboutput/sub_1/x:output:0output/Abs_2:y:0*
T0*
_output_shapes
:_
output/add_5AddV2output/Sign_1:y:0output/sub_1:z:0*
T0*
_output_shapes
:x
output/Abs_3/ReadVariableOpReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0]
output/Abs_3Abs#output/Abs_3/ReadVariableOp:value:0*
T0*
_output_shapes
:T
output/Less_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/Less_2Lessoutput/Abs_3:y:0output/Less_2/y:output:0*
T0*
_output_shapes
:X
output/SelectV2_3/tConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
output/SelectV2_3SelectV2output/Less_2:z:0output/SelectV2_3/t:output:0output/Abs_3:y:0*
T0*
_output_shapes
:\
output/GreaterEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/GreaterEqual_1GreaterEqualoutput/SelectV2_3:output:0 output/GreaterEqual_1/y:output:0*
T0*
_output_shapes
:r
(output/ones_like_2/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:]
output/ones_like_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_2Fill1output/ones_like_2/Shape/shape_as_tensor:output:0!output/ones_like_2/Const:output:0*
T0*
_output_shapes
:S
output/mul_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?n
output/mul_5Muloutput/ones_like_2:output:0output/mul_5/y:output:0*
T0*
_output_shapes
:�
output/SelectV2_4SelectV2output/GreaterEqual_1:z:0output/mul_5:z:0output/SelectV2_3:output:0*
T0*
_output_shapes
:T
output/Less_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3f
output/Less_3Lessoutput/Abs_3:y:0output/Less_3/y:output:0*
T0*
_output_shapes
:r
(output/ones_like_3/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:]
output/ones_like_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
output/ones_like_3Fill1output/ones_like_3/Shape/shape_as_tensor:output:0!output/ones_like_3/Const:output:0*
T0*
_output_shapes
:S
output/mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   �n
output/mul_6Muloutput/ones_like_3:output:0output/mul_6/y:output:0*
T0*
_output_shapes
:T
output/Log_1Logoutput/SelectV2_4:output:0*
T0*
_output_shapes
:W
output/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *r1?o
output/truediv_1RealDivoutput/Log_1:y:0output/truediv_1/y:output:0*
T0*
_output_shapes
:N
output/Neg_2Negoutput/truediv_1:z:0*
T0*
_output_shapes
:R
output/Round_1Roundoutput/truediv_1:z:0*
T0*
_output_shapes
:`
output/add_6AddV2output/Neg_2:y:0output/Round_1:y:0*
T0*
_output_shapes
:\
output/StopGradient_2StopGradientoutput/add_6:z:0*
T0*
_output_shapes
:p
output/add_7AddV2output/truediv_1:z:0output/StopGradient_2:output:0*
T0*
_output_shapes
:e
 output/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
output/clip_by_value_1/MinimumMinimumoutput/add_7:z:0)output/clip_by_value_1/Minimum/y:output:0*
T0*
_output_shapes
:]
output/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ��
output/clip_by_value_1Maximum"output/clip_by_value_1/Minimum:z:0!output/clip_by_value_1/y:output:0*
T0*
_output_shapes
:S
output/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?m
output/mul_7Muloutput/mul_7/x:output:0output/clip_by_value_1:z:0*
T0*
_output_shapes
:y
output/SelectV2_5SelectV2output/Less_3:z:0output/mul_6:z:0output/mul_7:z:0*
T0*
_output_shapes
:S
output/pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
output/pow_1Powoutput/pow_1/x:output:0output/SelectV2_5:output:0*
T0*
_output_shapes
:\
output/mul_8Muloutput/add_5:z:0output/pow_1:z:0*
T0*
_output_shapes
:t
output/ReadVariableOp_4ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0Y
output/Neg_3Negoutput/ReadVariableOp_4:value:0*
T0*
_output_shapes
:^
output/add_8AddV2output/Neg_3:y:0output/mul_8:z:0*
T0*
_output_shapes
:S
output/mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
output/mul_9Muloutput/mul_9/x:output:0output/add_8:z:0*
T0*
_output_shapes
:\
output/StopGradient_3StopGradientoutput/mul_9:z:0*
T0*
_output_shapes
:t
output/ReadVariableOp_5ReadVariableOp output_readvariableop_3_resource*
_output_shapes
:*
dtype0{
output/add_9AddV2output/ReadVariableOp_5:value:0output/StopGradient_3:output:0*
T0*
_output_shapes
:v
output/BiasAddBiasAddoutput/MatMul:product:0output/add_9:z:0*
T0*'
_output_shapes
:���������e
softmax/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:����������
)fc1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfc1_readvariableop_resource*
_output_shapes

:*
dtype0}
fc1/kernel/Regularizer/AbsAbs1fc1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:m
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

:*
dtype0�
output/kernel/Regularizer/AbsAbs4output/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:p
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
:����������
NoOpNoOp^fc1/Abs_1/ReadVariableOp^fc1/Abs_3/ReadVariableOp^fc1/ReadVariableOp^fc1/ReadVariableOp_1^fc1/ReadVariableOp_2^fc1/ReadVariableOp_3^fc1/ReadVariableOp_4^fc1/ReadVariableOp_5*^fc1/kernel/Regularizer/Abs/ReadVariableOp^output/Abs_1/ReadVariableOp^output/Abs_3/ReadVariableOp^output/ReadVariableOp^output/ReadVariableOp_1^output/ReadVariableOp_2^output/ReadVariableOp_3^output/ReadVariableOp_4^output/ReadVariableOp_5-^output/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
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
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_128289
	fc1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	fc1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_127764o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	fc1_input
�
�
'__inference_output_layer_call_fn_129083

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_128065o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
�
�
+__inference_sequential_layer_call_fn_128327

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_128191o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
__inference__traced_save_129366
file_prefix3
!read_disablecopyonread_fc1_kernel:/
!read_1_disablecopyonread_fc1_bias:8
&read_2_disablecopyonread_output_kernel:2
$read_3_disablecopyonread_output_bias:,
"read_4_disablecopyonread_iteration:	 0
&read_5_disablecopyonread_learning_rate: <
*read_6_disablecopyonread_adam_m_fc1_kernel:<
*read_7_disablecopyonread_adam_v_fc1_kernel:6
(read_8_disablecopyonread_adam_m_fc1_bias:6
(read_9_disablecopyonread_adam_v_fc1_bias:@
.read_10_disablecopyonread_adam_m_output_kernel:@
.read_11_disablecopyonread_adam_v_output_kernel::
,read_12_disablecopyonread_adam_m_output_bias::
,read_13_disablecopyonread_adam_v_output_bias:+
!read_14_disablecopyonread_total_1: +
!read_15_disablecopyonread_count_1: )
read_16_disablecopyonread_total: )
read_17_disablecopyonread_count: 
savev2_const
identity_37��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: s
Read/DisableCopyOnReadDisableCopyOnRead!read_disablecopyonread_fc1_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp!read_disablecopyonread_fc1_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:u
Read_1/DisableCopyOnReadDisableCopyOnRead!read_1_disablecopyonread_fc1_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp!read_1_disablecopyonread_fc1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:z
Read_2/DisableCopyOnReadDisableCopyOnRead&read_2_disablecopyonread_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp&read_2_disablecopyonread_output_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:x
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_output_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_output_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_4/DisableCopyOnReadDisableCopyOnRead"read_4_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp"read_4_disablecopyonread_iteration^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_learning_rate^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_6/DisableCopyOnReadDisableCopyOnRead*read_6_disablecopyonread_adam_m_fc1_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp*read_6_disablecopyonread_adam_m_fc1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:~
Read_7/DisableCopyOnReadDisableCopyOnRead*read_7_disablecopyonread_adam_v_fc1_kernel"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp*read_7_disablecopyonread_adam_v_fc1_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

:|
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_adam_m_fc1_bias"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_adam_m_fc1_bias^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_9/DisableCopyOnReadDisableCopyOnRead(read_9_disablecopyonread_adam_v_fc1_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp(read_9_disablecopyonread_adam_v_fc1_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead.read_10_disablecopyonread_adam_m_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp.read_10_disablecopyonread_adam_m_output_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_11/DisableCopyOnReadDisableCopyOnRead.read_11_disablecopyonread_adam_v_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp.read_11_disablecopyonread_adam_v_output_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_12/DisableCopyOnReadDisableCopyOnRead,read_12_disablecopyonread_adam_m_output_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp,read_12_disablecopyonread_adam_m_output_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_13/DisableCopyOnReadDisableCopyOnRead,read_13_disablecopyonread_adam_v_output_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp,read_13_disablecopyonread_adam_v_output_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_14/DisableCopyOnReadDisableCopyOnRead!read_14_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp!read_14_disablecopyonread_total_1^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_15/DisableCopyOnReadDisableCopyOnRead!read_15_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp!read_15_disablecopyonread_count_1^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_16/DisableCopyOnReadDisableCopyOnReadread_16_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOpread_16_disablecopyonread_total^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_17/DisableCopyOnReadDisableCopyOnReadread_17_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOpread_17_disablecopyonread_count^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_36Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_37IdentityIdentity_36:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2(
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
Read_17/ReadVariableOpRead_17/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
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
_user_specified_namefile_prefix:

_output_shapes
: "�
L
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
serving_default_fc1_input:0���������;
softmax0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
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
+__inference_sequential_layer_call_fn_128161
+__inference_sequential_layer_call_fn_128202
+__inference_sequential_layer_call_fn_128314
+__inference_sequential_layer_call_fn_128327�
���
FullArgSpec)
args!�
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
annotations� *
 z9trace_0z:trace_1z;trace_2z<trace_3
�
=trace_0
>trace_1
?trace_2
@trace_32�
F__inference_sequential_layer_call_and_return_conditional_losses_128091
F__inference_sequential_layer_call_and_return_conditional_losses_128119
F__inference_sequential_layer_call_and_return_conditional_losses_128609
F__inference_sequential_layer_call_and_return_conditional_losses_128891�
���
FullArgSpec)
args!�
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
annotations� *
 z=trace_0z>trace_1z?trace_2z@trace_3
�B�
!__inference__wrapped_model_127764	fc1_input"�
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
A
_variables
B_iterations
C_learning_rate
D_index_dict
E
_momentums
F_velocities
G_update_step_xla"
experimentalOptimizer
 "
trackable_list_wrapper
,
Hserving_default"
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
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ntrace_02�
$__inference_fc1_layer_call_fn_128900�
���
FullArgSpec
args�

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
annotations� *
 zNtrace_0
�
Otrace_02�
?__inference_fc1_layer_call_and_return_conditional_losses_129020�
���
FullArgSpec
args�

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
annotations� *
 zOtrace_0
"
_generic_user_object
"
_generic_user_object
.
0
1"
trackable_list_wrapper
:2
fc1/kernel
:2fc1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Utrace_02�
&__inference_relu1_layer_call_fn_129025�
���
FullArgSpec
args�

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
annotations� *
 zUtrace_0
�
Vtrace_02�
A__inference_relu1_layer_call_and_return_conditional_losses_129074�
���
FullArgSpec
args�

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
annotations� *
 zVtrace_0
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
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
\trace_02�
'__inference_output_layer_call_fn_129083�
���
FullArgSpec
args�

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
annotations� *
 z\trace_0
�
]trace_02�
B__inference_output_layer_call_and_return_conditional_losses_129203�
���
FullArgSpec
args�

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
annotations� *
 z]trace_0
"
_generic_user_object
"
_generic_user_object
.
'0
(1"
trackable_list_wrapper
:2output/kernel
:2output/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
ctrace_02�
(__inference_softmax_layer_call_fn_129208�
���
FullArgSpec
args�

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
annotations� *
 zctrace_0
�
dtrace_02�
C__inference_softmax_layer_call_and_return_conditional_losses_129213�
���
FullArgSpec
args�

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
annotations� *
 zdtrace_0
�
etrace_02�
__inference_loss_fn_0_129224�
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
annotations� *� zetrace_0
�
ftrace_02�
__inference_loss_fn_1_129235�
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
annotations� *� zftrace_0
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_sequential_layer_call_fn_128161	fc1_input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_128202	fc1_input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_128314inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_128327inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_128091	fc1_input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_128119	fc1_input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_128609inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_128891inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
_
B0
i1
j2
k3
l4
m5
n6
o7
p8"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
<
i0
k1
m2
o3"
trackable_list_wrapper
<
j0
l1
n2
p3"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_128289	fc1_input"�
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
$__inference_fc1_layer_call_fn_128900inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
?__inference_fc1_layer_call_and_return_conditional_losses_129020inputs"�
���
FullArgSpec
args�

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
annotations� *
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
&__inference_relu1_layer_call_fn_129025inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
A__inference_relu1_layer_call_and_return_conditional_losses_129074inputs"�
���
FullArgSpec
args�

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
annotations� *
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
'__inference_output_layer_call_fn_129083inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
B__inference_output_layer_call_and_return_conditional_losses_129203inputs"�
���
FullArgSpec
args�

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
annotations� *
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
(__inference_softmax_layer_call_fn_129208inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
C__inference_softmax_layer_call_and_return_conditional_losses_129213inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
__inference_loss_fn_0_129224"�
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
__inference_loss_fn_1_129235"�
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
q	variables
r	keras_api
	stotal
	tcount"
_tf_keras_metric
^
u	variables
v	keras_api
	wtotal
	xcount
y
_fn_kwargs"
_tf_keras_metric
!:2Adam/m/fc1/kernel
!:2Adam/v/fc1/kernel
:2Adam/m/fc1/bias
:2Adam/v/fc1/bias
$:"2Adam/m/output/kernel
$:"2Adam/v/output/kernel
:2Adam/m/output/bias
:2Adam/v/output/bias
.
s0
t1"
trackable_list_wrapper
-
q	variables"
_generic_user_object
:  (2total
:  (2count
.
w0
x1"
trackable_list_wrapper
-
u	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
!__inference__wrapped_model_127764m*+2�/
(�%
#� 
	fc1_input���������
� "1�.
,
softmax!�
softmax����������
?__inference_fc1_layer_call_and_return_conditional_losses_129020c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
$__inference_fc1_layer_call_fn_128900X/�,
%�"
 �
inputs���������
� "!�
unknown���������D
__inference_loss_fn_0_129224$�

� 
� "�
unknown D
__inference_loss_fn_1_129235$*�

� 
� "�
unknown �
B__inference_output_layer_call_and_return_conditional_losses_129203c*+/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
'__inference_output_layer_call_fn_129083X*+/�,
%�"
 �
inputs���������
� "!�
unknown����������
A__inference_relu1_layer_call_and_return_conditional_losses_129074_/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� ~
&__inference_relu1_layer_call_fn_129025T/�,
%�"
 �
inputs���������
� "!�
unknown����������
F__inference_sequential_layer_call_and_return_conditional_losses_128091p*+:�7
0�-
#� 
	fc1_input���������
p

 
� ",�)
"�
tensor_0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_128119p*+:�7
0�-
#� 
	fc1_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_128609m*+7�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_128891m*+7�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
+__inference_sequential_layer_call_fn_128161e*+:�7
0�-
#� 
	fc1_input���������
p

 
� "!�
unknown����������
+__inference_sequential_layer_call_fn_128202e*+:�7
0�-
#� 
	fc1_input���������
p 

 
� "!�
unknown����������
+__inference_sequential_layer_call_fn_128314b*+7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
+__inference_sequential_layer_call_fn_128327b*+7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
$__inference_signature_wrapper_128289z*+?�<
� 
5�2
0
	fc1_input#� 
	fc1_input���������"1�.
,
softmax!�
softmax����������
C__inference_softmax_layer_call_and_return_conditional_losses_129213_/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
(__inference_softmax_layer_call_fn_129208T/�,
%�"
 �
inputs���������
� "!�
unknown���������