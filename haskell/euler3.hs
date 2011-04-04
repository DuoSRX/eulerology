-- euler 3
-- http://projecteuler.net/index.php?section=problems&id=3
-- answer: 6857

euler3 :: Integer
euler3 = maximum $ primeFactors $ 600851475143

-- pretty convoluted O_o

primes = 2 : 3 : filter isPrime [5,7..]
  where
    isPrime n   = all (notDivs n) 
                    $ takeWhile (\p-> p*p <= n) (tail primes)
    notDivs n p = n `mod` p /= 0

isPrime n = n > 1 && n == head (primeFactors n)

primeFactors 1 = []
primeFactors n = go n primes
   where
   go n ps@(p:pt)
      | p*p > n        = [n]
      | n `rem` p == 0 = p : go (n `quot` p) ps
      | otherwise      = go n pt
