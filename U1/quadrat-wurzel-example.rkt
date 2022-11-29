#lang racket
;Example sqrt impl
(define (quadrat a) (* a a))

(define (mittelwert a b) (/ (+ b a) 2)) 

(define (gut-genug? schaetzwert x)
  (< (abs (- (quadrat schaetzwert) x)) 0.00001))

(define (verbessern schaetzwert x)
  (mittelwert schaetzwert (/ x schaetzwert))
)

(define (wurzel-it schaetzwert x)
  (if (gut-genug? schaetzwert x)
      schaetzwert
      (wurzel-it (verbessern schaetzwert x) x))
)


(define (wurzel x)
  (wurzel-it 1.0 x))