-- euler 48
-- http://projecteuler.net/index.php?section=problems&id=48
-- answer: 9110846700

-- way simpler than the privous answer
euler48 = reverse . take 10 . reverse . show $ sum [x^x | x <- [1..1000]]

