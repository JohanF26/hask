> module Hw12S19
>     where

> prod op [] = []
> prod op (x:y) = (op x):(prod op y)

> prod2 (*) 0 = []
> prod2 (*) a = ((*) a a):(prod (*) a-1)

(A) The type is Num and the function takes in two Nums and returns another Num.
(B) The type is Num and the function takes in two Nums and returns one Num (it's
implicitly curried).
(D) The type is a polymorphic Equality operation and it takes in two elements of
the same type and returns a Bool.
(E) The function takes a function and a list as arguments, then returns another list of a different type.
The function it takes in receives the same type as the list and returns the same type as the list of the outer function.
(F) 
