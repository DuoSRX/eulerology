(ns eucloj.euler04)

(defn palindrome?
  [n]
  (let [num (str n)]
    (= (seq num) (reverse num))))

(defn euler-04 []
  (reduce max
    (for [x (range 999 100 -1)
          y (range 999 100 -1)
          :let [z (* x y)]
          :when (palindrome? z)]
    z)))
