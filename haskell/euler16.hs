-- euler 16
-- http://projecteuler.net/index.php?section=problems&id=16
-- answer: 1366

euler16 = sum $ digits (2^1000)

digits :: Integer -> [Integer]
digits i = case i of
        0 -> []
        _ -> lastDigit : digits rest
    where (rest, lastDigit) = quotRem i 10
