-- euler 30
-- http://projecteuler.net/index.php?section=problems&id=30
-- answer: 443839
-- the numbers are 4150,4151,54748,92727,93084,194979

import Data.Char

-- answer is obviously than (9^5)x4 as 236196 >> 9999
euler30 :: Int
euler30 = sum $ filter (\x -> x == toFifthSum x) [2..236195]
    where toFifthSum = sum . map ((^5) . digitToInt) . show

