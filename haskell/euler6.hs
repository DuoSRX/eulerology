-- euler 6
-- http://projecteuler.net/index.php?section=problems&id=6
-- answer: 25164150

euler6 :: Integer
euler6 = b - a
  where a = sum [x * x | x <- [1..100]]
        b = (sum [1..100]) ^ 2

-- another possibility without list comprehension
-- not bad either
euler6' :: Integer
euler6' = b - a
  where a = sum $ map (^2) [1..100]
        b = (sum [1..100]) ^ 2
