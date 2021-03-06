;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E064
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x)
      (is-integer y)
      (= 0 (+ (+ (* (* 2 x) y) (* -2 x)) (* -5 y)))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-integer x)
      (is-integer y)
      (= 60 (- (^ x 2) (^ y 2)))
      (< 0 x)
      (< 0 y)
    ))
  )
)

(def-answer p1 (PLam answer (|| (= answer (list-of 3 6)) (= answer (list-of 5 2)) (= answer (list-of 2 -4)) (= answer (list-of 0 0)))))

(def-answer p2 (PLam answer (|| (= answer (list-of 16 14)) (= answer (list-of 8 2)))))

