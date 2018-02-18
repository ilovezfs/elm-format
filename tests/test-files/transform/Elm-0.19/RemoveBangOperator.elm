batch model a b = model ! [ a, b ]
batch_withComments model a b = model {- A -} ! {- B -} [ a, b ]

none model = model ! []
none_withComments model = model {- A -} ! {- B -} [ {- C -} ]

inBinaryExpression model x a b = x + model ! [ a ] << [ b ]
followingHighPrecedenceOperators f g = f >> g ! []
followingFunctionApplication f x = f x ! []
