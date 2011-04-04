-- euler 29
-- http://projecteuler.net/index.php?section=problems&id=29
-- answer: 9183

import Data.list

-- pretty straightforward
euler29 = length $ nub [x^y | x <- [2..100], y <- [2..100]]
