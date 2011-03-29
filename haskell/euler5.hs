-- euler 5
-- http://projecteuler.net/index.php?section=problems&id=5
-- answer: 232792560

euler5 :: Integer
euler5 = foldl1 lcm [1..20]
