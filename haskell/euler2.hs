-- euler 2
-- http://projecteuler.net/index.php?section=problems&id=2
-- answer: 4613732

euler2 :: Integer
euler2 = sum(takeWhile (< 4000000) (filter even (fibs)))

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
