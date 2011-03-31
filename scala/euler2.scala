// euler 2
// http://projecteuler.net/index.php?section=problems&id=2
// answer: 4613732

def euler2 = fibs.takeWhile(_ < 4000000).filter(n => n%2 == 0).sum

//taken from http://en.literateprograms.org/Fibonacci_numbers_(Scala)
lazy val fibs: Stream[Int] =
  0 #:: 1 #:: fibs.zip(fibs.tail).map(n => n._1 + n._2)
