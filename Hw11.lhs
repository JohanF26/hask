> module Hw11
>     where

Define factorial. Let Haskell infer the type of factorial

> factorial n = if n == 0 then 1 else n * factorial (n-1)

when writing factorial 5 I get 120. The infered type is
fact :: (Num t, Eq t) => t -> t

> fact1 :: Int -> Int
> fact1 n = if n == 0 then 1 else n * fact1 (n - 1)
> fact2 :: Integer -> Integer
> fact2 n = if n == 0 then 1 else n * fact2 (n - 1)

4. All three instructions print the same number but their types are not necessarily
the same. Since we specified the values fact1 and fact2 take in, if we were to
try to compare fact1 10 == fact2 10 would result in an error since we are trying
to compare an Int with an Integer. Int is the integers defined by our machine,
Integer on the other hand is an arbitrary precission type provided by Haskell.

5. When writing factorial -2 we get a stack overflow because since it needs the
number to be 0 to stop, but it never calls factorial 0 since -2 just keeps 
decreasing and factorial recurses infinitely.

> factP :: Integer -> Integer
> factP 0 = 1
> factP n = n * factP(n -1)

> factG x
>     | x < 0     = error "neg x"
>     | x == 0    = 1
>     | otherwise = x*factG(x-1)

7. There is only one definition of factG. When I type factG(-2) it throws an error because -2 < 0.

> factG2 :: Integer -> Integer
> factG2 n
>     | n < 0     = error "neg n"
>     | n == 0    = 1
>     | otherwise = n * factG2 (n - 1)
> factE :: Integer -> Integer
> factE n
>     | n < 0     = error "neg n"
>     | n == 0    = 1
>     | otherwise = n * factE n - 1

8. The function "factorial" recurses infinitely until it causes a stack overflow because -2 just keeps decreasing and there is no guard for negative numbers. factG 5.1 throws an error for negative numbers, I suspect it is because of the binary representation of Doubles and the way negative integers are represented. factG2 says there is no instance for fractional integer which is the correct error.

When calling factG2 5 it returns 120 but when calling factE 5 it causes a stack overflow. This is because since there is no parenthesis it keeps calling factE n and it never gets decremented.
