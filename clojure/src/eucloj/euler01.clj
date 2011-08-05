(ns eucloj.euler01)

(defn euler-1 []
  (reduce +
    (filter
      (fn [x]
        (or
          (= 0 (mod x 3))
          (= 0 (mod x 5))))
      (range 1 1000))))

