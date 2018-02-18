module Main exposing (..)


batch model a b =
    ( model
    , Cmd.batch [ a, b ]
    )


batch_withComments model a b =
    ( model {- A -}
    , Cmd.batch {- B -} [ a, b ]
    )


none model =
    ( model
    , Cmd.none
    )


none_withComments model =
    ( model {- A -}
    , {- B -} Cmd.none {- C -}
    )


inBinaryExpression model x a b =
    x
        + ( model
          , Cmd.batch [ a ]
          )
        << [ b ]


followingHighPrecedenceOperators f g =
    ( f >> g
    , Cmd.none
    )


followingFunctionApplication f x =
    ( f x
    , Cmd.none
    )
