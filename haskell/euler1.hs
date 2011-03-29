-- euler 1
-- http://projecteuler.net/index.php?section=problems&id=1
-- answer: 233168

euler1 :: Integer
euler1 = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]
