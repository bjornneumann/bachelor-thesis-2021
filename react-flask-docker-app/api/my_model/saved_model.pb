??
?&?&
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Greater
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
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
0
Sigmoid
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
executor_typestring ?
?
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
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
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?$?*'
shared_nameembedding_3/embeddings
?
*embedding_3/embeddings/Read/ReadVariableOpReadVariableOpembedding_3/embeddings* 
_output_shapes
:
?$?*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
?
string_lookup_3_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_9040*
value_dtype0	
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
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
?
Adam/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?$?*.
shared_nameAdam/embedding_3/embeddings/m
?
1Adam/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_3/embeddings/m* 
_output_shapes
:
?$?*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?$?*.
shared_nameAdam/embedding_3/embeddings/v
?
1Adam/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_3/embeddings/v* 
_output_shapes
:
?$?*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_23961

NoOpNoOp^PartitionedCall
?
Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2string_lookup_3_index_table*
Tkeys0*
Tvalues0	*.
_class$
" loc:@string_lookup_3_index_table*
_output_shapes

::
?-
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*?,
value?,B?, B?,
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
=

state_variables
_index_lookup_layer
	keras_api
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
 

1
2
3

0
1
2
 
?
	variables
layer_metrics
metrics

 layers
trainable_variables
!layer_regularization_losses
"non_trainable_variables
regularization_losses
 
 
0
#state_variables

$_table
%	keras_api
 
b

embeddings
&	variables
'trainable_variables
(regularization_losses
)	keras_api
R
*	variables
+trainable_variables
,regularization_losses
-	keras_api
R
.	variables
/trainable_variables
0regularization_losses
1	keras_api
R
2	variables
3trainable_variables
4regularization_losses
5	keras_api
h

kernel
bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
v
:iter

;beta_1

<beta_2
	=decay
>learning_ratemxmymzv{v|v}

0
1
2

0
1
2
 
?
	variables
?layer_metrics
@metrics

Alayers
trainable_variables
Blayer_regularization_losses
Cnon_trainable_variables
regularization_losses
 
 
 
?
	variables
Dlayer_metrics
Emetrics

Flayers
trainable_variables
Glayer_regularization_losses
Hnon_trainable_variables
regularization_losses
RP
VARIABLE_VALUEembedding_3/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_3/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_3/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 

I0
J1

0
1
2
 
 
 
LJ
tableAlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table
 

0

0
 
?
&	variables
Klayer_metrics
Lmetrics

Mlayers
'trainable_variables
Nlayer_regularization_losses
Onon_trainable_variables
(regularization_losses
 
 
 
?
*	variables
Player_metrics
Qmetrics

Rlayers
+trainable_variables
Slayer_regularization_losses
Tnon_trainable_variables
,regularization_losses
 
 
 
?
.	variables
Ulayer_metrics
Vmetrics

Wlayers
/trainable_variables
Xlayer_regularization_losses
Ynon_trainable_variables
0regularization_losses
 
 
 
?
2	variables
Zlayer_metrics
[metrics

\layers
3trainable_variables
]layer_regularization_losses
^non_trainable_variables
4regularization_losses

0
1

0
1
 
?
6	variables
_layer_metrics
`metrics

alayers
7trainable_variables
blayer_regularization_losses
cnon_trainable_variables
8regularization_losses
][
VARIABLE_VALUE	Adam/iter>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEAdam/beta_1@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEAdam/beta_2@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE
Adam/decay?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/learning_rateGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

d0
e1
#
0
1
2
3
4
 
 
 
 
 
 
 
4
	ftotal
	gcount
h	variables
i	keras_api
D
	jtotal
	kcount
l
_fn_kwargs
m	variables
n	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ototal
	pcount
q	variables
r	keras_api
D
	stotal
	tcount
u
_fn_kwargs
v	variables
w	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

f0
g1

h	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

j0
k1

m	variables
fd
VARIABLE_VALUEtotal_2Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_2Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

o0
p1

q	variables
fd
VARIABLE_VALUEtotal_3Ilayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_3Ilayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

s0
t1

v	variables
??
VARIABLE_VALUEAdam/embedding_3/embeddings/mWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_3/kernel/mWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_3/bias/mWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_3/embeddings/vWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_3/kernel/vWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_3/bias/vWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
*serving_default_text_vectorization_3_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall*serving_default_text_vectorization_3_inputstring_lookup_3_index_tableConstembedding_3/embeddingsdense_3/kerneldense_3/bias*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_23363
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_3/embeddings/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpJstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2Lstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2:1Adam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOp1Adam/embedding_3/embeddings/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp1Adam/embedding_3/embeddings/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst_1*%
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_24057
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_3/embeddingsdense_3/kerneldense_3/biasstring_lookup_3_index_table	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3Adam/embedding_3/embeddings/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/embedding_3/embeddings/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*#
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_24136??
?
?
%text_vectorization_3_cond_false_22932)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_22764

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_22740

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
$text_vectorization_3_cond_true_23200E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_23007

inputs	&
"embedding_3_embedding_lookup_22991*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?embedding_3/embedding_lookup^
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
Castx
embedding_3/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_3/Cast?
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_22991embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/22991*-
_output_shapes
:???????????*
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/22991*-
_output_shapes
:???????????2'
%embedding_3/embedding_lookup/Identity?
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2)
'embedding_3/embedding_lookup/Identity_1?
dropout_6/IdentityIdentity0embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????2
dropout_6/Identity?
1global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_3/Mean/reduction_indices?
global_average_pooling1d_3/MeanMeandropout_6/Identity:output:0:global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling1d_3/Mean?
dropout_7/IdentityIdentity(global_average_pooling1d_3/Mean:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/Identity?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldropout_7/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_3/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_23885

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_activation_1_layer_call_and_return_conditional_losses_23797

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_7_layer_call_fn_23890

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_227592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
.
__inference__initializer_23924
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?f
?
!__inference__traced_restore_24136
file_prefix+
'assignvariableop_embedding_3_embeddings%
!assignvariableop_1_dense_3_kernel#
assignvariableop_2_dense_3_bias]
Ystring_lookup_3_index_table_table_restore_lookuptableimportv2_string_lookup_3_index_table 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate
assignvariableop_8_total
assignvariableop_9_count
assignvariableop_10_total_1
assignvariableop_11_count_1
assignvariableop_12_total_2
assignvariableop_13_count_2
assignvariableop_14_total_3
assignvariableop_15_count_35
1assignvariableop_16_adam_embedding_3_embeddings_m-
)assignvariableop_17_adam_dense_3_kernel_m+
'assignvariableop_18_adam_dense_3_bias_m5
1assignvariableop_19_adam_embedding_3_embeddings_v-
)assignvariableop_20_adam_dense_3_kernel_v+
'assignvariableop_21_adam_dense_3_bias_v
identity_23??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?=string_lookup_3_index_table_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-valuesB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp'assignvariableop_embedding_3_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_3_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_3_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2LookupTableImportV2Ystring_lookup_3_index_table_table_restore_lookuptableimportv2_string_lookup_3_index_tableRestoreV2:tensors:3RestoreV2:tensors:4*	
Tin0*

Tout0	*.
_class$
" loc:@string_lookup_3_index_table*
_output_shapes
 2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2k

Identity_3IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7l

Identity_8IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8l

Identity_9IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_3Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_3Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp1assignvariableop_16_adam_embedding_3_embeddings_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_3_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_3_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp1assignvariableop_19_adam_embedding_3_embeddings_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_3_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_3_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_219
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp>^string_lookup_3_index_table_table_restore/LookupTableImportV2"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_22?
Identity_23IdentityIdentity_22:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9>^string_lookup_3_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2
Identity_23"#
identity_23Identity_23:output:0*q
_input_shapes`
^: :::::::::::::::::::::::2$
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
AssignVariableOp_9AssignVariableOp_92~
=string_lookup_3_index_table_table_restore/LookupTableImportV2=string_lookup_3_index_table_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_class$
" loc:@string_lookup_3_index_table
?
?
#__inference_signature_wrapper_23363
text_vectorization_3_input
unknown
	unknown_0	
	unknown_1
	unknown_2
	unknown_3
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_226602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?
H
,__inference_activation_1_layer_call_fn_23802

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_230422
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_6_layer_call_fn_23841

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_227172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:???????????????????22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_23831

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*5
_output_shapes#
!:???????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:???????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:???????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*5
_output_shapes#
!:???????????????????2
dropout/Mul_1s
IdentityIdentitydropout/Mul_1:z:0*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
$text_vectorization_3_cond_true_22931E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
,__inference_sequential_4_layer_call_fn_23781

inputs	
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_229862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
2sequential_5_text_vectorization_3_cond_false_226216
2sequential_5_text_vectorization_3_cond_placeholder~
zsequential_5_text_vectorization_3_cond_strided_slice_sequential_5_text_vectorization_3_raggedtotensor_raggedtensortotensor	3
/sequential_5_text_vectorization_3_cond_identity	?
:sequential_5/text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_5/text_vectorization_3/cond/strided_slice/stack?
<sequential_5/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2>
<sequential_5/text_vectorization_3/cond/strided_slice/stack_1?
<sequential_5/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_5/text_vectorization_3/cond/strided_slice/stack_2?
4sequential_5/text_vectorization_3/cond/strided_sliceStridedSlicezsequential_5_text_vectorization_3_cond_strided_slice_sequential_5_text_vectorization_3_raggedtotensor_raggedtensortotensorCsequential_5/text_vectorization_3/cond/strided_slice/stack:output:0Esequential_5/text_vectorization_3/cond/strided_slice/stack_1:output:0Esequential_5/text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask26
4sequential_5/text_vectorization_3/cond/strided_slice?
/sequential_5/text_vectorization_3/cond/IdentityIdentity=sequential_5/text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????21
/sequential_5/text_vectorization_3/cond/Identity"k
/sequential_5_text_vectorization_3_cond_identity8sequential_5/text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
%text_vectorization_3_cond_false_23449)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_23692

inputs&
"embedding_3_embedding_lookup_23676*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?embedding_3/embedding_lookup~
embedding_3/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
embedding_3/Cast?
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_23676embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/23676*5
_output_shapes#
!:???????????????????*
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/23676*5
_output_shapes#
!:???????????????????2'
%embedding_3/embedding_lookup/Identity?
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2)
'embedding_3/embedding_lookup/Identity_1?
dropout_6/IdentityIdentity0embedding_3/embedding_lookup/Identity_1:output:0*
T0*5
_output_shapes#
!:???????????????????2
dropout_6/Identity?
1global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_3/Mean/reduction_indices?
global_average_pooling1d_3/MeanMeandropout_6/Identity:output:0:global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling1d_3/Mean?
dropout_7/IdentityIdentity(global_average_pooling1d_3/Mean:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/Identity?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldropout_7/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_3/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_4_layer_call_fn_22846
embedding_3_input
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_228372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:??????????????????
+
_user_specified_nameembedding_3_input
?,
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_22986

inputs	&
"embedding_3_embedding_lookup_22956*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?embedding_3/embedding_lookup^
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
Castx
embedding_3/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_3/Cast?
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_22956embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/22956*-
_output_shapes
:???????????*
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/22956*-
_output_shapes
:???????????2'
%embedding_3/embedding_lookup/Identity?
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2)
'embedding_3/embedding_lookup/Identity_1w
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/dropout/Const?
dropout_6/dropout/MulMul0embedding_3/embedding_lookup/Identity_1:output:0 dropout_6/dropout/Const:output:0*
T0*-
_output_shapes
:???????????2
dropout_6/dropout/Mul?
dropout_6/dropout/ShapeShape0embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform?
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_6/dropout/GreaterEqual/y?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????2 
dropout_6/dropout/GreaterEqual?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????2
dropout_6/dropout/Cast?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*-
_output_shapes
:???????????2
dropout_6/dropout/Mul_1?
1global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_3/Mean/reduction_indices?
global_average_pooling1d_3/MeanMeandropout_6/dropout/Mul_1:z:0:global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling1d_3/Meanw
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/dropout/Const?
dropout_7/dropout/MulMul(global_average_pooling1d_3/Mean:output:0 dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/dropout/Mul?
dropout_7/dropout/ShapeShape(global_average_pooling1d_3/Mean:output:0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_7/dropout/random_uniform/RandomUniform?
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_7/dropout/GreaterEqual/y?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_7/dropout/GreaterEqual?
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_7/dropout/Cast?
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_7/dropout/Mul_1?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldropout_7/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_3/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_23749

inputs	&
"embedding_3_embedding_lookup_23719*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?embedding_3/embedding_lookup^
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
Castx
embedding_3/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_3/Cast?
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_23719embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/23719*-
_output_shapes
:???????????*
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/23719*-
_output_shapes
:???????????2'
%embedding_3/embedding_lookup/Identity?
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2)
'embedding_3/embedding_lookup/Identity_1w
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/dropout/Const?
dropout_6/dropout/MulMul0embedding_3/embedding_lookup/Identity_1:output:0 dropout_6/dropout/Const:output:0*
T0*-
_output_shapes
:???????????2
dropout_6/dropout/Mul?
dropout_6/dropout/ShapeShape0embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform?
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_6/dropout/GreaterEqual/y?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????2 
dropout_6/dropout/GreaterEqual?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????2
dropout_6/dropout/Cast?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*-
_output_shapes
:???????????2
dropout_6/dropout/Mul_1?
1global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_3/Mean/reduction_indices?
global_average_pooling1d_3/MeanMeandropout_6/dropout/Mul_1:z:0:global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling1d_3/Meanw
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/dropout/Const?
dropout_7/dropout/MulMul(global_average_pooling1d_3/Mean:output:0 dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/dropout/Mul?
dropout_7/dropout/ShapeShape(global_average_pooling1d_3/Mean:output:0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_7/dropout/random_uniform/RandomUniform?
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_7/dropout/GreaterEqual/y?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_7/dropout/GreaterEqual?
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_7/dropout/Cast?
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_7/dropout/Mul_1?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldropout_7/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_3/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
q
+__inference_embedding_3_layer_call_fn_23819

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_226932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
V
:__inference_global_average_pooling1d_3_layer_call_fn_23857

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_227402
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?

?
F__inference_embedding_3_layer_call_and_return_conditional_losses_23812

inputs
embedding_lookup_23806
identity??embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_23806Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/23806*5
_output_shapes#
!:???????????????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/23806*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_22759

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_4_layer_call_fn_22872
embedding_3_input
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_228632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:??????????????????
+
_user_specified_nameembedding_3_input
?9
?

__inference__traced_save_24057
file_prefix5
1savev2_embedding_3_embeddings_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableopU
Qsavev2_string_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2W
Ssavev2_string_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2_1	(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop<
8savev2_adam_embedding_3_embeddings_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop<
8savev2_adam_embedding_3_embeddings_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
savev2_const_1

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-valuesB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_3_embeddings_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableopQsavev2_string_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2Ssavev2_string_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2_1$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop8savev2_adam_embedding_3_embeddings_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop8savev2_adam_embedding_3_embeddings_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *'
dtypes
2		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes
}: :
?$?:	?:::: : : : : : : : : : : : : :
?$?:	?::
?$?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?$?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
::

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
?$?:%!

_output_shapes
:	?: 

_output_shapes
::&"
 
_output_shapes
:
?$?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?,
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_23672

inputs&
"embedding_3_embedding_lookup_23642*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?embedding_3/embedding_lookup~
embedding_3/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
embedding_3/Cast?
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_23642embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/23642*5
_output_shapes#
!:???????????????????*
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/23642*5
_output_shapes#
!:???????????????????2'
%embedding_3/embedding_lookup/Identity?
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2)
'embedding_3/embedding_lookup/Identity_1w
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/dropout/Const?
dropout_6/dropout/MulMul0embedding_3/embedding_lookup/Identity_1:output:0 dropout_6/dropout/Const:output:0*
T0*5
_output_shapes#
!:???????????????????2
dropout_6/dropout/Mul?
dropout_6/dropout/ShapeShape0embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform?
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_6/dropout/GreaterEqual/y?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:???????????????????2 
dropout_6/dropout/GreaterEqual?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:???????????????????2
dropout_6/dropout/Cast?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*5
_output_shapes#
!:???????????????????2
dropout_6/dropout/Mul_1?
1global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_3/Mean/reduction_indices?
global_average_pooling1d_3/MeanMeandropout_6/dropout/Mul_1:z:0:global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling1d_3/Meanw
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/dropout/Const?
dropout_7/dropout/MulMul(global_average_pooling1d_3/Mean:output:0 dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/dropout/Mul?
dropout_7/dropout/ShapeShape(global_average_pooling1d_3/Mean:output:0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_7/dropout/random_uniform/RandomUniform?
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_7/dropout/GreaterEqual/y?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_7/dropout/GreaterEqual?
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_7/dropout/Cast?
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_7/dropout/Mul_1?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldropout_7/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_3/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
$text_vectorization_3_cond_true_23303E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
*
__inference_<lambda>_23961
identityS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
%text_vectorization_3_cond_false_23561)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
٣
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_23600

inputsu
qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handlev
rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value	3
/sequential_4_embedding_3_embedding_lookup_235837
3sequential_4_dense_3_matmul_readvariableop_resource8
4sequential_4_dense_3_biasadd_readvariableop_resource
identity??+sequential_4/dense_3/BiasAdd/ReadVariableOp?*sequential_4/dense_3/MatMul/ReadVariableOp?)sequential_4/embedding_3/embedding_lookup?dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*
pattern<br />*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
)text_vectorization_3/StaticRegexReplace_1StaticRegexReplace0text_vectorization_3/StaticRegexReplace:output:0*'
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite 2+
)text_vectorization_3/StaticRegexReplace_1?
text_vectorization_3/SqueezeSqueeze2text_vectorization_3/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentitymtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slice{
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub}
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_23561*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_235602
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_3/cond/Identity?
sequential_4/CastCast+text_vectorization_3/cond/Identity:output:0*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
sequential_4/Cast?
sequential_4/embedding_3/CastCastsequential_4/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
sequential_4/embedding_3/Cast?
)sequential_4/embedding_3/embedding_lookupResourceGather/sequential_4_embedding_3_embedding_lookup_23583!sequential_4/embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@sequential_4/embedding_3/embedding_lookup/23583*-
_output_shapes
:???????????*
dtype02+
)sequential_4/embedding_3/embedding_lookup?
2sequential_4/embedding_3/embedding_lookup/IdentityIdentity2sequential_4/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@sequential_4/embedding_3/embedding_lookup/23583*-
_output_shapes
:???????????24
2sequential_4/embedding_3/embedding_lookup/Identity?
4sequential_4/embedding_3/embedding_lookup/Identity_1Identity;sequential_4/embedding_3/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????26
4sequential_4/embedding_3/embedding_lookup/Identity_1?
sequential_4/dropout_6/IdentityIdentity=sequential_4/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????2!
sequential_4/dropout_6/Identity?
>sequential_4/global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_4/global_average_pooling1d_3/Mean/reduction_indices?
,sequential_4/global_average_pooling1d_3/MeanMean(sequential_4/dropout_6/Identity:output:0Gsequential_4/global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_4/global_average_pooling1d_3/Mean?
sequential_4/dropout_7/IdentityIdentity5sequential_4/global_average_pooling1d_3/Mean:output:0*
T0*(
_output_shapes
:??????????2!
sequential_4/dropout_7/Identity?
*sequential_4/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*sequential_4/dense_3/MatMul/ReadVariableOp?
sequential_4/dense_3/MatMulMatMul(sequential_4/dropout_7/Identity:output:02sequential_4/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_4/dense_3/MatMul?
+sequential_4/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_4/dense_3/BiasAdd/ReadVariableOp?
sequential_4/dense_3/BiasAddBiasAdd%sequential_4/dense_3/MatMul:product:03sequential_4/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_4/dense_3/BiasAdd?
activation_1/SigmoidSigmoid%sequential_4/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_1/Sigmoid?
IdentityIdentityactivation_1/Sigmoid:y:0,^sequential_4/dense_3/BiasAdd/ReadVariableOp+^sequential_4/dense_3/MatMul/ReadVariableOp*^sequential_4/embedding_3/embedding_lookupe^text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::2Z
+sequential_4/dense_3/BiasAdd/ReadVariableOp+sequential_4/dense_3/BiasAdd/ReadVariableOp2X
*sequential_4/dense_3/MatMul/ReadVariableOp*sequential_4/dense_3/MatMul/ReadVariableOp2V
)sequential_4/embedding_3/embedding_lookup)sequential_4/embedding_3/embedding_lookup2?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
V
:__inference_global_average_pooling1d_3_layer_call_fn_23868

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_226762
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_23863

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_23880

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_22819
embedding_3_input
embedding_3_22807
dense_3_22813
dense_3_22815
identity??dense_3/StatefulPartitionedCall?#embedding_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputembedding_3_22807*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_226932%
#embedding_3/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_227222
dropout_6/PartitionedCall?
*global_average_pooling1d_3/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_227402,
*global_average_pooling1d_3/PartitionedCall?
dropout_7/PartitionedCallPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_227642
dropout_7/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_3_22813dense_3_22815*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_227872!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall:c _
0
_output_shapes
:??????????????????
+
_user_specified_nameembedding_3_input
?
,
__inference__destroyer_23929
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
$text_vectorization_3_cond_true_23560E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
??
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_23333

inputsu
qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handlev
rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value	
sequential_4_23324
sequential_4_23326
sequential_4_23328
identity??$sequential_4/StatefulPartitionedCall?dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*
pattern<br />*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
)text_vectorization_3/StaticRegexReplace_1StaticRegexReplace0text_vectorization_3/StaticRegexReplace:output:0*'
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite 2+
)text_vectorization_3/StaticRegexReplace_1?
text_vectorization_3/SqueezeSqueeze2text_vectorization_3/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentitymtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slice{
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub}
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_23304*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_233032
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_3/cond/Identity?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_3/cond/Identity:output:0sequential_4_23324sequential_4_23326sequential_4_23328*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_230072&
$sequential_4/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_230422
activation_1/PartitionedCall?
IdentityIdentity%activation_1/PartitionedCall:output:0%^sequential_4/StatefulPartitionedCalle^text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
??
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_23502

inputsu
qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handlev
rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value	3
/sequential_4_embedding_3_embedding_lookup_234717
3sequential_4_dense_3_matmul_readvariableop_resource8
4sequential_4_dense_3_biasadd_readvariableop_resource
identity??+sequential_4/dense_3/BiasAdd/ReadVariableOp?*sequential_4/dense_3/MatMul/ReadVariableOp?)sequential_4/embedding_3/embedding_lookup?dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*
pattern<br />*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
)text_vectorization_3/StaticRegexReplace_1StaticRegexReplace0text_vectorization_3/StaticRegexReplace:output:0*'
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite 2+
)text_vectorization_3/StaticRegexReplace_1?
text_vectorization_3/SqueezeSqueeze2text_vectorization_3/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentitymtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slice{
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub}
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_23449*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_234482
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_3/cond/Identity?
sequential_4/CastCast+text_vectorization_3/cond/Identity:output:0*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
sequential_4/Cast?
sequential_4/embedding_3/CastCastsequential_4/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
sequential_4/embedding_3/Cast?
)sequential_4/embedding_3/embedding_lookupResourceGather/sequential_4_embedding_3_embedding_lookup_23471!sequential_4/embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@sequential_4/embedding_3/embedding_lookup/23471*-
_output_shapes
:???????????*
dtype02+
)sequential_4/embedding_3/embedding_lookup?
2sequential_4/embedding_3/embedding_lookup/IdentityIdentity2sequential_4/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@sequential_4/embedding_3/embedding_lookup/23471*-
_output_shapes
:???????????24
2sequential_4/embedding_3/embedding_lookup/Identity?
4sequential_4/embedding_3/embedding_lookup/Identity_1Identity;sequential_4/embedding_3/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????26
4sequential_4/embedding_3/embedding_lookup/Identity_1?
$sequential_4/dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$sequential_4/dropout_6/dropout/Const?
"sequential_4/dropout_6/dropout/MulMul=sequential_4/embedding_3/embedding_lookup/Identity_1:output:0-sequential_4/dropout_6/dropout/Const:output:0*
T0*-
_output_shapes
:???????????2$
"sequential_4/dropout_6/dropout/Mul?
$sequential_4/dropout_6/dropout/ShapeShape=sequential_4/embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2&
$sequential_4/dropout_6/dropout/Shape?
;sequential_4/dropout_6/dropout/random_uniform/RandomUniformRandomUniform-sequential_4/dropout_6/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype02=
;sequential_4/dropout_6/dropout/random_uniform/RandomUniform?
-sequential_4/dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-sequential_4/dropout_6/dropout/GreaterEqual/y?
+sequential_4/dropout_6/dropout/GreaterEqualGreaterEqualDsequential_4/dropout_6/dropout/random_uniform/RandomUniform:output:06sequential_4/dropout_6/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:???????????2-
+sequential_4/dropout_6/dropout/GreaterEqual?
#sequential_4/dropout_6/dropout/CastCast/sequential_4/dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:???????????2%
#sequential_4/dropout_6/dropout/Cast?
$sequential_4/dropout_6/dropout/Mul_1Mul&sequential_4/dropout_6/dropout/Mul:z:0'sequential_4/dropout_6/dropout/Cast:y:0*
T0*-
_output_shapes
:???????????2&
$sequential_4/dropout_6/dropout/Mul_1?
>sequential_4/global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_4/global_average_pooling1d_3/Mean/reduction_indices?
,sequential_4/global_average_pooling1d_3/MeanMean(sequential_4/dropout_6/dropout/Mul_1:z:0Gsequential_4/global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_4/global_average_pooling1d_3/Mean?
$sequential_4/dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$sequential_4/dropout_7/dropout/Const?
"sequential_4/dropout_7/dropout/MulMul5sequential_4/global_average_pooling1d_3/Mean:output:0-sequential_4/dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2$
"sequential_4/dropout_7/dropout/Mul?
$sequential_4/dropout_7/dropout/ShapeShape5sequential_4/global_average_pooling1d_3/Mean:output:0*
T0*
_output_shapes
:2&
$sequential_4/dropout_7/dropout/Shape?
;sequential_4/dropout_7/dropout/random_uniform/RandomUniformRandomUniform-sequential_4/dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02=
;sequential_4/dropout_7/dropout/random_uniform/RandomUniform?
-sequential_4/dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-sequential_4/dropout_7/dropout/GreaterEqual/y?
+sequential_4/dropout_7/dropout/GreaterEqualGreaterEqualDsequential_4/dropout_7/dropout/random_uniform/RandomUniform:output:06sequential_4/dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+sequential_4/dropout_7/dropout/GreaterEqual?
#sequential_4/dropout_7/dropout/CastCast/sequential_4/dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#sequential_4/dropout_7/dropout/Cast?
$sequential_4/dropout_7/dropout/Mul_1Mul&sequential_4/dropout_7/dropout/Mul:z:0'sequential_4/dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$sequential_4/dropout_7/dropout/Mul_1?
*sequential_4/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*sequential_4/dense_3/MatMul/ReadVariableOp?
sequential_4/dense_3/MatMulMatMul(sequential_4/dropout_7/dropout/Mul_1:z:02sequential_4/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_4/dense_3/MatMul?
+sequential_4/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_4/dense_3/BiasAdd/ReadVariableOp?
sequential_4/dense_3/BiasAddBiasAdd%sequential_4/dense_3/MatMul:product:03sequential_4/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_4/dense_3/BiasAdd?
activation_1/SigmoidSigmoid%sequential_4/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_1/Sigmoid?
IdentityIdentityactivation_1/Sigmoid:y:0,^sequential_4/dense_3/BiasAdd/ReadVariableOp+^sequential_4/dense_3/MatMul/ReadVariableOp*^sequential_4/embedding_3/embedding_lookupe^text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::2Z
+sequential_4/dense_3/BiasAdd/ReadVariableOp+sequential_4/dense_3/BiasAdd/ReadVariableOp2X
*sequential_4/dense_3/MatMul/ReadVariableOp*sequential_4/dense_3/MatMul/ReadVariableOp2V
)sequential_4/embedding_3/embedding_lookup)sequential_4/embedding_3/embedding_lookup2?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
q
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_22676

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_23836

inputs

identity_1h
IdentityIdentityinputs*
T0*5
_output_shapes#
!:???????????????????2

Identityw

Identity_1IdentityIdentity:output:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1"!

identity_1Identity_1:output:0*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_5_layer_call_fn_23346
text_vectorization_3_input
unknown
	unknown_0	
	unknown_1
	unknown_2
	unknown_3
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_233332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?
?
%text_vectorization_3_cond_false_23201)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
%text_vectorization_3_cond_false_23110)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?

?
F__inference_embedding_3_layer_call_and_return_conditional_losses_22693

inputs
embedding_lookup_22687
identity??embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_22687Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/22687*5
_output_shapes#
!:???????????????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/22687*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
|
'__inference_dense_3_layer_call_fn_23914

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_227872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_4_layer_call_fn_23703

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_228372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
??
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_23139
text_vectorization_3_inputu
qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handlev
rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value	
sequential_4_23130
sequential_4_23132
sequential_4_23134
identity??$sequential_4/StatefulPartitionedCall?dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowertext_vectorization_3_input*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*
pattern<br />*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
)text_vectorization_3/StaticRegexReplace_1StaticRegexReplace0text_vectorization_3/StaticRegexReplace:output:0*'
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite 2+
)text_vectorization_3/StaticRegexReplace_1?
text_vectorization_3/SqueezeSqueeze2text_vectorization_3/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentitymtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slice{
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub}
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_23110*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_231092
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_3/cond/Identity?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_3/cond/Identity:output:0sequential_4_23130sequential_4_23132sequential_4_23134*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_230072&
$sequential_4/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_230422
activation_1/PartitionedCall?
IdentityIdentity%activation_1/PartitionedCall:output:0%^sequential_4/StatefulPartitionedCalle^text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?
?
$text_vectorization_3_cond_true_23448E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
,__inference_sequential_5_layer_call_fn_23630

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2
	unknown_3
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_233332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
c
G__inference_activation_1_layer_call_and_return_conditional_losses_23042

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_22837

inputs
embedding_3_22825
dense_3_22831
dense_3_22833
identity??dense_3/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?#embedding_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_3_22825*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_226932%
#embedding_3/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_227172#
!dropout_6/StatefulPartitionedCall?
*global_average_pooling1d_3/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_227402,
*global_average_pooling1d_3/PartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_227592#
!dropout_7/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_3_22831dense_3_22833*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_227872!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_22804
embedding_3_input
embedding_3_22702
dense_3_22798
dense_3_22800
identity??dense_3/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?#embedding_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputembedding_3_22702*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_226932%
#embedding_3/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_227172#
!dropout_6/StatefulPartitionedCall?
*global_average_pooling1d_3/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_227402,
*global_average_pooling1d_3/PartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_227592#
!dropout_7/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_3_22798dense_3_22800*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_227872!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall:c _
0
_output_shapes
:??????????????????
+
_user_specified_nameembedding_3_input
?	
?
B__inference_dense_3_layer_call_and_return_conditional_losses_23905

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_23051
text_vectorization_3_inputu
qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handlev
rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value	
sequential_4_23030
sequential_4_23032
sequential_4_23034
identity??$sequential_4/StatefulPartitionedCall?dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowertext_vectorization_3_input*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*
pattern<br />*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
)text_vectorization_3/StaticRegexReplace_1StaticRegexReplace0text_vectorization_3/StaticRegexReplace:output:0*'
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite 2+
)text_vectorization_3/StaticRegexReplace_1?
text_vectorization_3/SqueezeSqueeze2text_vectorization_3/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentitymtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slice{
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub}
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_22932*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_229312
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_3/cond/Identity?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_3/cond/Identity:output:0sequential_4_23030sequential_4_23032sequential_4_23034*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_229862&
$sequential_4/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_230422
activation_1/PartitionedCall?
IdentityIdentity%activation_1/PartitionedCall:output:0%^sequential_4/StatefulPartitionedCalle^text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?
E
)__inference_dropout_6_layer_call_fn_23846

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_227222
PartitionedCallz
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?
G__inference_sequential_5_layer_call_and_return_conditional_losses_23230

inputsu
qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handlev
rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value	
sequential_4_23221
sequential_4_23223
sequential_4_23225
identity??$sequential_4/StatefulPartitionedCall?dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*
pattern<br />*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
)text_vectorization_3/StaticRegexReplace_1StaticRegexReplace0text_vectorization_3/StaticRegexReplace:output:0*'
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite 2+
)text_vectorization_3/StaticRegexReplace_1?
text_vectorization_3/SqueezeSqueeze2text_vectorization_3/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2qtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0rtext_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentitymtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slice{
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub}
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_23201*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_232002
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_3/cond/Identity?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_3/cond/Identity:output:0sequential_4_23221sequential_4_23223sequential_4_23225*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_229862&
$sequential_4/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_230422
activation_1/PartitionedCall?
IdentityIdentity%activation_1/PartitionedCall:output:0%^sequential_4/StatefulPartitionedCalle^text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2?
dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2dtext_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
__inference_restore_fn_23956
restored_tensors_0
restored_tensors_1	N
Jstring_lookup_3_index_table_table_restore_lookuptableimportv2_table_handle
identity??=string_lookup_3_index_table_table_restore/LookupTableImportV2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2LookupTableImportV2Jstring_lookup_3_index_table_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Const?
IdentityIdentityConst:output:0>^string_lookup_3_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:::2~
=string_lookup_3_index_table_table_restore/LookupTableImportV2=string_lookup_3_index_table_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_22722

inputs

identity_1h
IdentityIdentityinputs*
T0*5
_output_shapes#
!:???????????????????2

Identityw

Identity_1IdentityIdentity:output:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1"!

identity_1Identity_1:output:0*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
$text_vectorization_3_cond_true_23109E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
E
)__inference_dropout_7_layer_call_fn_23895

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_227642
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1sequential_5_text_vectorization_3_cond_true_22620_
[sequential_5_text_vectorization_3_cond_pad_paddings_1_sequential_5_text_vectorization_3_subt
psequential_5_text_vectorization_3_cond_pad_sequential_5_text_vectorization_3_raggedtotensor_raggedtensortotensor	3
/sequential_5_text_vectorization_3_cond_identity	?
7sequential_5/text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_5/text_vectorization_3/cond/Pad/paddings/1/0?
5sequential_5/text_vectorization_3/cond/Pad/paddings/1Pack@sequential_5/text_vectorization_3/cond/Pad/paddings/1/0:output:0[sequential_5_text_vectorization_3_cond_pad_paddings_1_sequential_5_text_vectorization_3_sub*
N*
T0*
_output_shapes
:27
5sequential_5/text_vectorization_3/cond/Pad/paddings/1?
7sequential_5/text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_5/text_vectorization_3/cond/Pad/paddings/0_1?
3sequential_5/text_vectorization_3/cond/Pad/paddingsPack@sequential_5/text_vectorization_3/cond/Pad/paddings/0_1:output:0>sequential_5/text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:25
3sequential_5/text_vectorization_3/cond/Pad/paddings?
*sequential_5/text_vectorization_3/cond/PadPadpsequential_5_text_vectorization_3_cond_pad_sequential_5_text_vectorization_3_raggedtotensor_raggedtensortotensor<sequential_5/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2,
*sequential_5/text_vectorization_3/cond/Pad?
/sequential_5/text_vectorization_3/cond/IdentityIdentity3sequential_5/text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????21
/sequential_5/text_vectorization_3/cond/Identity"k
/sequential_5_text_vectorization_3_cond_identity8sequential_5/text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?	
?
B__inference_dense_3_layer_call_and_return_conditional_losses_22787

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_save_fn_23948
checkpoint_key[
Wstring_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	??Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2?
Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Wstring_lookup_3_index_table_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::2L
Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1?
IdentityIdentityadd:z:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const?

Identity_1IdentityConst:output:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_1?

Identity_2IdentityQstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2:keys:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
:2

Identity_2?

Identity_3Identity	add_1:z:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1?

Identity_4IdentityConst_1:output:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_4?

Identity_5IdentitySstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2:values:0K^string_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2*
T0	*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*
_input_shapes
: :2?
Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2Jstring_lookup_3_index_table_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
,__inference_sequential_5_layer_call_fn_23615

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2
	unknown_3
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_232302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_22717

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*5
_output_shapes#
!:???????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:???????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:???????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*5
_output_shapes#
!:???????????????????2
dropout/Mul_1s
IdentityIdentitydropout/Mul_1:z:0*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_4_layer_call_fn_23792

inputs	
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_230072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_23770

inputs	&
"embedding_3_embedding_lookup_23754*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?embedding_3/embedding_lookup^
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
Castx
embedding_3/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_3/Cast?
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_23754embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/23754*-
_output_shapes
:???????????*
dtype02
embedding_3/embedding_lookup?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/23754*-
_output_shapes
:???????????2'
%embedding_3/embedding_lookup/Identity?
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2)
'embedding_3/embedding_lookup/Identity_1?
dropout_6/IdentityIdentity0embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????2
dropout_6/Identity?
1global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_3/Mean/reduction_indices?
global_average_pooling1d_3/MeanMeandropout_6/Identity:output:0:global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling1d_3/Mean?
dropout_7/IdentityIdentity(global_average_pooling1d_3/Mean:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/Identity?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldropout_7/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_3/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_22660
text_vectorization_3_input?
~sequential_5_text_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handle?
sequential_5_text_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value	@
<sequential_5_sequential_4_embedding_3_embedding_lookup_22643D
@sequential_5_sequential_4_dense_3_matmul_readvariableop_resourceE
Asequential_5_sequential_4_dense_3_biasadd_readvariableop_resource
identity??8sequential_5/sequential_4/dense_3/BiasAdd/ReadVariableOp?7sequential_5/sequential_4/dense_3/MatMul/ReadVariableOp?6sequential_5/sequential_4/embedding_3/embedding_lookup?qsequential_5/text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
-sequential_5/text_vectorization_3/StringLowerStringLowertext_vectorization_3_input*'
_output_shapes
:?????????2/
-sequential_5/text_vectorization_3/StringLower?
4sequential_5/text_vectorization_3/StaticRegexReplaceStaticRegexReplace6sequential_5/text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*
pattern<br />*
rewrite 26
4sequential_5/text_vectorization_3/StaticRegexReplace?
6sequential_5/text_vectorization_3/StaticRegexReplace_1StaticRegexReplace=sequential_5/text_vectorization_3/StaticRegexReplace:output:0*'
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite 28
6sequential_5/text_vectorization_3/StaticRegexReplace_1?
)sequential_5/text_vectorization_3/SqueezeSqueeze?sequential_5/text_vectorization_3/StaticRegexReplace_1:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2+
)sequential_5/text_vectorization_3/Squeeze?
3sequential_5/text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 25
3sequential_5/text_vectorization_3/StringSplit/Const?
;sequential_5/text_vectorization_3/StringSplit/StringSplitV2StringSplitV22sequential_5/text_vectorization_3/Squeeze:output:0<sequential_5/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2=
;sequential_5/text_vectorization_3/StringSplit/StringSplitV2?
Asequential_5/text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2C
Asequential_5/text_vectorization_3/StringSplit/strided_slice/stack?
Csequential_5/text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2E
Csequential_5/text_vectorization_3/StringSplit/strided_slice/stack_1?
Csequential_5/text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2E
Csequential_5/text_vectorization_3/StringSplit/strided_slice/stack_2?
;sequential_5/text_vectorization_3/StringSplit/strided_sliceStridedSliceEsequential_5/text_vectorization_3/StringSplit/StringSplitV2:indices:0Jsequential_5/text_vectorization_3/StringSplit/strided_slice/stack:output:0Lsequential_5/text_vectorization_3/StringSplit/strided_slice/stack_1:output:0Lsequential_5/text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2=
;sequential_5/text_vectorization_3/StringSplit/strided_slice?
Csequential_5/text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_5/text_vectorization_3/StringSplit/strided_slice_1/stack?
Esequential_5/text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_5/text_vectorization_3/StringSplit/strided_slice_1/stack_1?
Esequential_5/text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_5/text_vectorization_3/StringSplit/strided_slice_1/stack_2?
=sequential_5/text_vectorization_3/StringSplit/strided_slice_1StridedSliceCsequential_5/text_vectorization_3/StringSplit/StringSplitV2:shape:0Lsequential_5/text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Nsequential_5/text_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Nsequential_5/text_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2?
=sequential_5/text_vectorization_3/StringSplit/strided_slice_1?
dsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastDsequential_5/text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2f
dsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
fsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastFsequential_5/text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2h
fsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
nsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapehsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2p
nsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
nsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2p
nsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
msequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdwsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0wsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2o
msequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
rsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2t
rsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatervsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0{sequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2r
psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
msequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasttsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2o
msequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2r
psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
lsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxhsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ysequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2n
lsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
nsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2p
nsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
lsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2usequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0wsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2n
lsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
lsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulqsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2n
lsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumjsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2r
psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumjsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0tsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2r
psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2r
psequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
qsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounthsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ysequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2s
qsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
ksequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2m
ksequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
fsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumxsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0tsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2h
fsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
osequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2q
osequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
ksequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2m
ksequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
fsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2xsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0lsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0tsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2h
fsequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
qsequential_5/text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2LookupTableFindV2~sequential_5_text_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_table_handleDsequential_5/text_vectorization_3/StringSplit/StringSplitV2:values:0sequential_5_text_vectorization_3_string_lookup_3_string_lookup_3_index_table_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2s
qsequential_5/text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2?
Csequential_5/text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 2E
Csequential_5/text_vectorization_3/string_lookup_3/assert_equal/NoOp?
:sequential_5/text_vectorization_3/string_lookup_3/IdentityIdentityzsequential_5/text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2<
:sequential_5/text_vectorization_3/string_lookup_3/Identity?
<sequential_5/text_vectorization_3/string_lookup_3/Identity_1Identityosequential_5/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????2>
<sequential_5/text_vectorization_3/string_lookup_3/Identity_1?
>sequential_5/text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 2@
>sequential_5/text_vectorization_3/RaggedToTensor/default_value?
6sequential_5/text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????28
6sequential_5/text_vectorization_3/RaggedToTensor/Const?
Esequential_5/text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor?sequential_5/text_vectorization_3/RaggedToTensor/Const:output:0Csequential_5/text_vectorization_3/string_lookup_3/Identity:output:0Gsequential_5/text_vectorization_3/RaggedToTensor/default_value:output:0Esequential_5/text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2G
Esequential_5/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
'sequential_5/text_vectorization_3/ShapeShapeNsequential_5/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2)
'sequential_5/text_vectorization_3/Shape?
5sequential_5/text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_5/text_vectorization_3/strided_slice/stack?
7sequential_5/text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_5/text_vectorization_3/strided_slice/stack_1?
7sequential_5/text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_5/text_vectorization_3/strided_slice/stack_2?
/sequential_5/text_vectorization_3/strided_sliceStridedSlice0sequential_5/text_vectorization_3/Shape:output:0>sequential_5/text_vectorization_3/strided_slice/stack:output:0@sequential_5/text_vectorization_3/strided_slice/stack_1:output:0@sequential_5/text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_5/text_vectorization_3/strided_slice?
'sequential_5/text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_5/text_vectorization_3/sub/x?
%sequential_5/text_vectorization_3/subSub0sequential_5/text_vectorization_3/sub/x:output:08sequential_5/text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2'
%sequential_5/text_vectorization_3/sub?
(sequential_5/text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_5/text_vectorization_3/Less/y?
&sequential_5/text_vectorization_3/LessLess8sequential_5/text_vectorization_3/strided_slice:output:01sequential_5/text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2(
&sequential_5/text_vectorization_3/Less?
&sequential_5/text_vectorization_3/condStatelessIf*sequential_5/text_vectorization_3/Less:z:0)sequential_5/text_vectorization_3/sub:z:0Nsequential_5/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *E
else_branch6R4
2sequential_5_text_vectorization_3_cond_false_22621*/
output_shapes
:??????????????????*D
then_branch5R3
1sequential_5_text_vectorization_3_cond_true_226202(
&sequential_5/text_vectorization_3/cond?
/sequential_5/text_vectorization_3/cond/IdentityIdentity/sequential_5/text_vectorization_3/cond:output:0*
T0	*(
_output_shapes
:??????????21
/sequential_5/text_vectorization_3/cond/Identity?
sequential_5/sequential_4/CastCast8sequential_5/text_vectorization_3/cond/Identity:output:0*

DstT0*

SrcT0	*(
_output_shapes
:??????????2 
sequential_5/sequential_4/Cast?
*sequential_5/sequential_4/embedding_3/CastCast"sequential_5/sequential_4/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2,
*sequential_5/sequential_4/embedding_3/Cast?
6sequential_5/sequential_4/embedding_3/embedding_lookupResourceGather<sequential_5_sequential_4_embedding_3_embedding_lookup_22643.sequential_5/sequential_4/embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*O
_classE
CAloc:@sequential_5/sequential_4/embedding_3/embedding_lookup/22643*-
_output_shapes
:???????????*
dtype028
6sequential_5/sequential_4/embedding_3/embedding_lookup?
?sequential_5/sequential_4/embedding_3/embedding_lookup/IdentityIdentity?sequential_5/sequential_4/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*O
_classE
CAloc:@sequential_5/sequential_4/embedding_3/embedding_lookup/22643*-
_output_shapes
:???????????2A
?sequential_5/sequential_4/embedding_3/embedding_lookup/Identity?
Asequential_5/sequential_4/embedding_3/embedding_lookup/Identity_1IdentityHsequential_5/sequential_4/embedding_3/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????2C
Asequential_5/sequential_4/embedding_3/embedding_lookup/Identity_1?
,sequential_5/sequential_4/dropout_6/IdentityIdentityJsequential_5/sequential_4/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????2.
,sequential_5/sequential_4/dropout_6/Identity?
Ksequential_5/sequential_4/global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2M
Ksequential_5/sequential_4/global_average_pooling1d_3/Mean/reduction_indices?
9sequential_5/sequential_4/global_average_pooling1d_3/MeanMean5sequential_5/sequential_4/dropout_6/Identity:output:0Tsequential_5/sequential_4/global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2;
9sequential_5/sequential_4/global_average_pooling1d_3/Mean?
,sequential_5/sequential_4/dropout_7/IdentityIdentityBsequential_5/sequential_4/global_average_pooling1d_3/Mean:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_5/sequential_4/dropout_7/Identity?
7sequential_5/sequential_4/dense_3/MatMul/ReadVariableOpReadVariableOp@sequential_5_sequential_4_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype029
7sequential_5/sequential_4/dense_3/MatMul/ReadVariableOp?
(sequential_5/sequential_4/dense_3/MatMulMatMul5sequential_5/sequential_4/dropout_7/Identity:output:0?sequential_5/sequential_4/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(sequential_5/sequential_4/dense_3/MatMul?
8sequential_5/sequential_4/dense_3/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_sequential_4_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_5/sequential_4/dense_3/BiasAdd/ReadVariableOp?
)sequential_5/sequential_4/dense_3/BiasAddBiasAdd2sequential_5/sequential_4/dense_3/MatMul:product:0@sequential_5/sequential_4/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2+
)sequential_5/sequential_4/dense_3/BiasAdd?
!sequential_5/activation_1/SigmoidSigmoid2sequential_5/sequential_4/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!sequential_5/activation_1/Sigmoid?
IdentityIdentity%sequential_5/activation_1/Sigmoid:y:09^sequential_5/sequential_4/dense_3/BiasAdd/ReadVariableOp8^sequential_5/sequential_4/dense_3/MatMul/ReadVariableOp7^sequential_5/sequential_4/embedding_3/embedding_lookupr^sequential_5/text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::2t
8sequential_5/sequential_4/dense_3/BiasAdd/ReadVariableOp8sequential_5/sequential_4/dense_3/BiasAdd/ReadVariableOp2r
7sequential_5/sequential_4/dense_3/MatMul/ReadVariableOp7sequential_5/sequential_4/dense_3/MatMul/ReadVariableOp2p
6sequential_5/sequential_4/embedding_3/embedding_lookup6sequential_5/sequential_4/embedding_3/embedding_lookup2?
qsequential_5/text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2qsequential_5/text_vectorization_3/string_lookup_3/string_lookup_3_index_table_lookup_table_find/LookupTableFindV2:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?
?
,__inference_sequential_5_layer_call_fn_23243
text_vectorization_3_input
unknown
	unknown_0	
	unknown_1
	unknown_2
	unknown_3
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_232302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????:: :::22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?
K
__inference__creator_23919
identity??string_lookup_3_index_table?
string_lookup_3_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_9040*
value_dtype0	2
string_lookup_3_index_table?
IdentityIdentity*string_lookup_3_index_table:table_handle:0^string_lookup_3_index_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 2:
string_lookup_3_index_tablestring_lookup_3_index_table
?
q
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_23852

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
%text_vectorization_3_cond_false_23304)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
,__inference_sequential_4_layer_call_fn_23714

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_228632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_22863

inputs
embedding_3_22851
dense_3_22857
dense_3_22859
identity??dense_3/StatefulPartitionedCall?#embedding_3/StatefulPartitionedCall?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_3_22851*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_226932%
#embedding_3/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_227222
dropout_6/PartitionedCall?
*global_average_pooling1d_3/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_227402,
*global_average_pooling1d_3/PartitionedCall?
dropout_7/PartitionedCallPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_227642
dropout_7/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_3_22857dense_3_22859*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_227872!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
a
text_vectorization_3_inputC
,serving_default_text_vectorization_3_input:0?????????@
activation_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?-
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
*~&call_and_return_all_conditional_losses
_default_save_signature
?__call__"?+
_tf_keras_sequential?+{"class_name": "Sequential", "name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "text_vectorization_3_input"}}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization_3", "trainable": true, "dtype": "string", "max_tokens": 4719, "standardize": "custom_standardization", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 250, "pad_to_max_tokens": true}}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_3_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 4720, "output_dim": 512, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "text_vectorization_3_input"}}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization_3", "trainable": true, "dtype": "string", "max_tokens": 4719, "standardize": "custom_standardization", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 250, "pad_to_max_tokens": true}}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_3_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 4720, "output_dim": 512, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": false, "label_smoothing": 0}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.001, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
?

state_variables
_index_lookup_layer
	keras_api"?
_tf_keras_layer?{"class_name": "TextVectorization", "name": "text_vectorization_3", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "text_vectorization_3", "trainable": true, "dtype": "string", "max_tokens": 4719, "standardize": "custom_standardization", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 250, "pad_to_max_tokens": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?"
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"? 
_tf_keras_sequential? {"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_3_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 4720, "output_dim": 512, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_3_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 4720, "output_dim": 512, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": true, "label_smoothing": 0}}, "metrics": [[{"class_name": "BinaryAccuracy", "config": {"name": "binary_accuracy", "dtype": "float32", "threshold": 0.0}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}
"
	optimizer
5
1
2
3"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
layer_metrics
metrics

 layers
trainable_variables
!layer_regularization_losses
"non_trainable_variables
regularization_losses
?__call__
_default_save_signature
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
?
#state_variables

$_table
%	keras_api"?
_tf_keras_layer?{"class_name": "StringLookup", "name": "string_lookup_3", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "string_lookup_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "string", "invert": false, "max_tokens": 4719, "num_oov_indices": 1, "oov_token": "[UNK]", "mask_token": "", "encoding": "utf-8"}}
"
_generic_user_object
?

embeddings
&	variables
'trainable_variables
(regularization_losses
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 4720, "output_dim": 512, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling1D", "name": "global_average_pooling1d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling1d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

kernel
bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?
:iter

;beta_1

<beta_2
	=decay
>learning_ratemxmymzv{v|v}"
	optimizer
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
?layer_metrics
@metrics

Alayers
trainable_variables
Blayer_regularization_losses
Cnon_trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
Dlayer_metrics
Emetrics

Flayers
trainable_variables
Glayer_regularization_losses
Hnon_trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(
?$?2embedding_3/embeddings
!:	?2dense_3/kernel
:2dense_3/bias
 "
trackable_dict_wrapper
.
I0
J1"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
&	variables
Klayer_metrics
Lmetrics

Mlayers
'trainable_variables
Nlayer_regularization_losses
Onon_trainable_variables
(regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
*	variables
Player_metrics
Qmetrics

Rlayers
+trainable_variables
Slayer_regularization_losses
Tnon_trainable_variables
,regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
.	variables
Ulayer_metrics
Vmetrics

Wlayers
/trainable_variables
Xlayer_regularization_losses
Ynon_trainable_variables
0regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
2	variables
Zlayer_metrics
[metrics

\layers
3trainable_variables
]layer_regularization_losses
^non_trainable_variables
4regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
6	variables
_layer_metrics
`metrics

alayers
7trainable_variables
blayer_regularization_losses
cnon_trainable_variables
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
.
d0
e1"
trackable_list_wrapper
C
0
1
2
3
4"
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
?
	ftotal
	gcount
h	variables
i	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	jtotal
	kcount
l
_fn_kwargs
m	variables
n	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
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
?
	ototal
	pcount
q	variables
r	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	stotal
	tcount
u
_fn_kwargs
v	variables
w	keras_api"?
_tf_keras_metric?{"class_name": "BinaryAccuracy", "name": "binary_accuracy", "dtype": "float32", "config": {"name": "binary_accuracy", "dtype": "float32", "threshold": 0.0}}
:  (2total
:  (2count
.
f0
g1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
j0
k1"
trackable_list_wrapper
-
m	variables"
_generic_user_object
:  (2total
:  (2count
.
o0
p1"
trackable_list_wrapper
-
q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
s0
t1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
/:-
?$?2Adam/embedding_3/embeddings/m
&:$	?2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
/:-
?$?2Adam/embedding_3/embeddings/v
&:$	?2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
?2?
G__inference_sequential_5_layer_call_and_return_conditional_losses_23502
G__inference_sequential_5_layer_call_and_return_conditional_losses_23139
G__inference_sequential_5_layer_call_and_return_conditional_losses_23600
G__inference_sequential_5_layer_call_and_return_conditional_losses_23051?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
 __inference__wrapped_model_22660?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *9?6
4?1
text_vectorization_3_input?????????
?2?
,__inference_sequential_5_layer_call_fn_23243
,__inference_sequential_5_layer_call_fn_23615
,__inference_sequential_5_layer_call_fn_23346
,__inference_sequential_5_layer_call_fn_23630?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
__inference_save_fn_23948checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_23956restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?2?
G__inference_sequential_4_layer_call_and_return_conditional_losses_23692
G__inference_sequential_4_layer_call_and_return_conditional_losses_22804
G__inference_sequential_4_layer_call_and_return_conditional_losses_23770
G__inference_sequential_4_layer_call_and_return_conditional_losses_23672
G__inference_sequential_4_layer_call_and_return_conditional_losses_23749
G__inference_sequential_4_layer_call_and_return_conditional_losses_22819?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_sequential_4_layer_call_fn_23781
,__inference_sequential_4_layer_call_fn_23703
,__inference_sequential_4_layer_call_fn_23792
,__inference_sequential_4_layer_call_fn_23714
,__inference_sequential_4_layer_call_fn_22846
,__inference_sequential_4_layer_call_fn_22872?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_activation_1_layer_call_and_return_conditional_losses_23797?
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
,__inference_activation_1_layer_call_fn_23802?
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
?B?
#__inference_signature_wrapper_23363text_vectorization_3_input"?
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
?2?
F__inference_embedding_3_layer_call_and_return_conditional_losses_23812?
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
+__inference_embedding_3_layer_call_fn_23819?
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
?2?
D__inference_dropout_6_layer_call_and_return_conditional_losses_23831
D__inference_dropout_6_layer_call_and_return_conditional_losses_23836?
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
)__inference_dropout_6_layer_call_fn_23846
)__inference_dropout_6_layer_call_fn_23841?
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
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_23863
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_23852?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
:__inference_global_average_pooling1d_3_layer_call_fn_23868
:__inference_global_average_pooling1d_3_layer_call_fn_23857?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dropout_7_layer_call_and_return_conditional_losses_23880
D__inference_dropout_7_layer_call_and_return_conditional_losses_23885?
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
)__inference_dropout_7_layer_call_fn_23890
)__inference_dropout_7_layer_call_fn_23895?
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
?2?
B__inference_dense_3_layer_call_and_return_conditional_losses_23905?
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
'__inference_dense_3_layer_call_fn_23914?
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
__inference__creator_23919?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_23924?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_23929?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const6
__inference__creator_23919?

? 
? "? 8
__inference__destroyer_23929?

? 
? "? :
__inference__initializer_23924?

? 
? "? ?
 __inference__wrapped_model_22660?$?C?@
9?6
4?1
text_vectorization_3_input?????????
? ";?8
6
activation_1&?#
activation_1??????????
G__inference_activation_1_layer_call_and_return_conditional_losses_23797X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
,__inference_activation_1_layer_call_fn_23802K/?,
%?"
 ?
inputs?????????
? "???????????
B__inference_dense_3_layer_call_and_return_conditional_losses_23905]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? {
'__inference_dense_3_layer_call_fn_23914P0?-
&?#
!?
inputs??????????
? "???????????
D__inference_dropout_6_layer_call_and_return_conditional_losses_23831xA?>
7?4
.?+
inputs???????????????????
p
? "3?0
)?&
0???????????????????
? ?
D__inference_dropout_6_layer_call_and_return_conditional_losses_23836xA?>
7?4
.?+
inputs???????????????????
p 
? "3?0
)?&
0???????????????????
? ?
)__inference_dropout_6_layer_call_fn_23841kA?>
7?4
.?+
inputs???????????????????
p
? "&?#????????????????????
)__inference_dropout_6_layer_call_fn_23846kA?>
7?4
.?+
inputs???????????????????
p 
? "&?#????????????????????
D__inference_dropout_7_layer_call_and_return_conditional_losses_23880^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
D__inference_dropout_7_layer_call_and_return_conditional_losses_23885^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ~
)__inference_dropout_7_layer_call_fn_23890Q4?1
*?'
!?
inputs??????????
p
? "???????????~
)__inference_dropout_7_layer_call_fn_23895Q4?1
*?'
!?
inputs??????????
p 
? "????????????
F__inference_embedding_3_layer_call_and_return_conditional_losses_23812r8?5
.?+
)?&
inputs??????????????????
? "3?0
)?&
0???????????????????
? ?
+__inference_embedding_3_layer_call_fn_23819e8?5
.?+
)?&
inputs??????????????????
? "&?#????????????????????
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_23852kA?>
7?4
.?+
inputs???????????????????

 
? "&?#
?
0??????????
? ?
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_23863{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
:__inference_global_average_pooling1d_3_layer_call_fn_23857^A?>
7?4
.?+
inputs???????????????????

 
? "????????????
:__inference_global_average_pooling1d_3_layer_call_fn_23868nI?F
??<
6?3
inputs'???????????????????????????

 
? "!???????????????????y
__inference_restore_fn_23956Y$K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_23948?$&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
G__inference_sequential_4_layer_call_and_return_conditional_losses_22804yK?H
A?>
4?1
embedding_3_input??????????????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_22819yK?H
A?>
4?1
embedding_3_input??????????????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_23672n@?=
6?3
)?&
inputs??????????????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_23692n@?=
6?3
)?&
inputs??????????????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_23749f8?5
.?+
!?
inputs??????????	
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_23770f8?5
.?+
!?
inputs??????????	
p 

 
? "%?"
?
0?????????
? ?
,__inference_sequential_4_layer_call_fn_22846lK?H
A?>
4?1
embedding_3_input??????????????????
p

 
? "???????????
,__inference_sequential_4_layer_call_fn_22872lK?H
A?>
4?1
embedding_3_input??????????????????
p 

 
? "???????????
,__inference_sequential_4_layer_call_fn_23703a@?=
6?3
)?&
inputs??????????????????
p

 
? "???????????
,__inference_sequential_4_layer_call_fn_23714a@?=
6?3
)?&
inputs??????????????????
p 

 
? "???????????
,__inference_sequential_4_layer_call_fn_23781Y8?5
.?+
!?
inputs??????????	
p

 
? "???????????
,__inference_sequential_4_layer_call_fn_23792Y8?5
.?+
!?
inputs??????????	
p 

 
? "???????????
G__inference_sequential_5_layer_call_and_return_conditional_losses_23051|$?K?H
A?>
4?1
text_vectorization_3_input?????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_5_layer_call_and_return_conditional_losses_23139|$?K?H
A?>
4?1
text_vectorization_3_input?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_5_layer_call_and_return_conditional_losses_23502h$?7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_5_layer_call_and_return_conditional_losses_23600h$?7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
,__inference_sequential_5_layer_call_fn_23243o$?K?H
A?>
4?1
text_vectorization_3_input?????????
p

 
? "???????????
,__inference_sequential_5_layer_call_fn_23346o$?K?H
A?>
4?1
text_vectorization_3_input?????????
p 

 
? "???????????
,__inference_sequential_5_layer_call_fn_23615[$?7?4
-?*
 ?
inputs?????????
p

 
? "???????????
,__inference_sequential_5_layer_call_fn_23630[$?7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
#__inference_signature_wrapper_23363?$?a?^
? 
W?T
R
text_vectorization_3_input4?1
text_vectorization_3_input?????????";?8
6
activation_1&?#
activation_1?????????