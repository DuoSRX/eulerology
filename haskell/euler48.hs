-- euler 48
-- http://projecteuler.net/index.php?section=problems&id=48
-- answer: 9110846700


-- taken from http://hackage.haskell.org/packages/archive/digits/0.1/doc/html/src/Data-Digits.html#digits
digitsRev i = case i of
        0 -> []
        _ -> lastDigit : digitsRev rest
    where (rest, lastDigit) = quotRem i 10

unDigits = foldl (\ a b -> a * 10 + b) 0

euler48 = unDigits . reverse . take 10 $ digitsRev $ sum [x^x | x <- [1..1000]]
