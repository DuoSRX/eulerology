(ns eucloj.euler02)

(defn euler-2 []
  (->> fib-seq 
       (filter even?)
       (take-while #(< % 4000000))
       (reduce +)))

(def fib-seq
  (lazy-cat [1 2] (map + (rest fib-seq) fib-seq)))
