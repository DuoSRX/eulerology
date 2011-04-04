-- euler 22
-- http://projecteuler.net/index.php?section=problems&id=22
-- answer: 871198282

import Control.Monad
import Data.Char
import Data.List

main = do
  contents <- getContents
  print $ listScore $ indexList $ sort $ split ',' contents

split delim s
  | [] <- rest = [token]
  | otherwise = token : split delim (tail rest)
  where (token,rest) = span (/=delim) s

-- terribly ugly but works for now
charRank '"' = 0
charRank c = (length $ takeWhile (/=c) ['A'..'Z']) + 1

wordScore w = sum $ map (charRank) w

-- map the list into [(idx, "word") ...]
indexList l = zip [1..(length l)] l

listScore l = sum [(fst x) * (wordScore(snd x)) | x <- l]
