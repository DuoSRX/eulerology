-- euler 24
-- http://projecteuler.net/index.php?section=problems&id=24
-- answer: 2783915460

import Data.List

-- very basic brute force solution ...
euler24 :: [Int]
euler24 = sort(permutations [0..9]) !! 999999
