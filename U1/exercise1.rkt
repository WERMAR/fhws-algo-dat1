#lang racket
;Exercise 1
(define (x)
  (- (/ (+ 9 6) (* (- 3 1) 5)) (* (- (/ 7 8) 2) 4)))

;Exercise 2
(define (g u v w)
  (+ (/ (- v (* 7 u)) (- u w)) (/ (+ u v) (- (* w 6) v ))))

;Exercise 3
(define (my-max x y)
  (cond ((> x y) x)
        ((<= x y) y)
  ))

;Exercise 4
(define (groesser-zehn? x)
  (cond ((> x 10) "Groesser 10" )
        (else "Kleiner 10")))


;Exercise 5
(define (groesserp? x y z)
  (cond ((> (+ x y) z) "x+y sind größer wie z")
        (else "z ist größer wie x+y")))
(groesserp? 4 5 6)
(groesserp? 2 12 10)
(groesserp? 3 3 6)

;Exercise 6
(define (squared-max x y z)
  (cond (( and (> (expt x 2) (expt y 2)) (> (expt x 2) (expt z 2))) "X am größten")
        (( and (> (expt x 2) (expt y 2)) (> (expt z 2) (expt x 2))) "Z am größten")
        (( and (> (expt y 2) (expt x 2)) (> (expt y 2) (expt z 2))) "Y am größten")
        (( and (> (expt y 2) (expt x 2)) (> (expt z 2) (expt y 2))) "Z am größten")
        (( and (> (expt z 2) (expt x 2)) (> (expt z 2) (expt y 2))) "Z am größten")
        (( and (> (expt z 2) (expt x 2)) (> (expt y 2) (expt z 2))) "Y am größten")
        (( and (> (expt z 2) (expt y 2)) (> (expt x 2) (expt y 2))) "X am größten")
        (( and (> (expt z 2) (expt y 2)) (> (expt y 2) (expt x 2))) "Y am größten")))

        
        
        