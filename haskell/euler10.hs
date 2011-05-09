-- euler 10
-- http://projecteuler.net/index.php?section=problems&id=10
-- answer: 142913828922

-- this works but it is pretty slow when interpreted
euler10 :: Integer
euler10 = sum $ takeWhile (< 2000000) primes

primes = 2 : 3 : filter isPrime [5,7..]
  where
    isPrime n   = all (notDivs n) 
                    $ takeWhile (\p-> p*p <= n) (tail primes)
    notDivs n p = n `mod` p /= 0

main = print $ show euler10