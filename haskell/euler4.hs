-- euler 4
-- http://projecteuler.net/index.php?section=problems&id=4
-- answer: 906609

euler4 :: Integer
euler4 = maximum $ filter pal [x*y | x <- [999,998..100], y <- [999,998..100]]

pal :: Integer -> Bool
pal n = show n == reverse(show n)
