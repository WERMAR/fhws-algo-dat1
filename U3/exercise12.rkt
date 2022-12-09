#lang racket

(define (count-perm x)
  (if (< x 1)
      1
      (* (count-perm (- x 1)) x)
      )
  )

(count-perm 5)