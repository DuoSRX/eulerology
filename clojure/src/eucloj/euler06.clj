(ns eucloj.euler06)

(defn square [x] (* x x))

(def euler-06
  (let [square-sum (square (reduce + (range 1 101)))
        sum-squares (reduce + (map square (range 1 101)))]
  (- square-sum sum-squares)))
