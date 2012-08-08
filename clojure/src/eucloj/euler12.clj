(ns eucloj.euler12)

(defn triangle [n]
  (reduce + (range 1 (inc n))))

(defn factor? [n by]
  (zero? (rem n by)))

(defn nb-factors [n]
  (* 2 (count (filter #(factor? n %)
                      (range 1 (Math/sqrt n))))))

(defn euler-12 []
  (some #(if (< 501 (nb-factors %)) %)
        (map triangle (range))))
 