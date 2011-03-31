// euler 1
// http://projecteuler.net/index.php?section=problems&id=1
// answer: 233168

def euler1 = {
  (1 until 1000).filter(x => x % 3 == 0 || x % 5 == 0).sum
}
