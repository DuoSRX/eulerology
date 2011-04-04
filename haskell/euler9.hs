-- euler 9
-- http://projecteuler.net/index.php?section=problems&id=9
-- answer: 31875000

-- we know the longest side is at most 499
-- and we also know the shortest is at most 292 because 1000 / sqrt 2 + 2

euler9 = product . head $ [[x,y,z] | x <- [1..292], y <- [1..499], let z = 1000 - y - x, x^2 + y^2 == z^2]
