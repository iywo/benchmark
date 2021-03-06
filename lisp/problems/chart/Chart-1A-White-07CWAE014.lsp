;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAE014
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (< m 1000)
      (is-divisible-by m 4)
    ))))
  )
)

(def-directive p2
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (< m 1000)
      (is-divisible-by m 6)
    ))))
  )
)

(def-directive p3
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (< m 1000)
      (|| (is-divisible-by m 4)
        (is-divisible-by m 6)
      )
    ))))
  )
)

(def-directive p4
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (< m 1000)
      (is-divisible-by m 4)
      (! (is-divisible-by m 6))
    ))))
  )
)

(def-answer p1 (PLam n (= n 225)))

(def-answer p2 (PLam n (= n 150)))

(def-answer p3 (PLam n (= n 300)))

(def-answer p4 (PLam n (= n 150)))

