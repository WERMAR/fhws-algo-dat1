#lang racket
;Exercise 7
(define (nat-wurzel x exercise1)
  (define (sum-ungerade runVar x sum)
    (
     if (> runVar x) sum
        (if (not(= (modulo runVar 2) 0)) (sum-ungerade (+ runVar 1 ) x (+ sum runVar)) (sum-ungerade (+ runVar 1) x sum))
    ))
  (define (sum-count runVar x sum)
    (
     if (> runVar x) sum
        (if (not (= (modulo runVar 2) 0)) (sum-count (+ runVar 1) x (+ sum 1)) (sum-count (+ runVar 1) x sum))))
  (if (= exercise1 1) (sum-ungerade 1 x 0) (sum-count 1 x 0)))

;(nat-wurzel 7 1)
;(nat-wurzel 7 2)

;(nat-wurzel 650 1)
;(nat-wurzel 650 2)

;Exercise 8
(define (CountDigits n)                       ; 1
  (if [< n 10]                     ; 2
      1                                       ; 3
      (+ 1 (CountDigits [/ n 10])))) ; 4

(define (zahl-umdrehen x)
  (define (zahl-int a )
   (define lastDigit (remainder a 10))
   (define nextDigits (quotient a 10))
   (define returnedData (if (= nextDigits 0) lastDigit (zahl-int nextDigits)))
    (if (= lastDigit returnedData) returnedData (+ (* lastDigit (expt 10 (CountDigits nextDigits))) returnedData))
    )
  (
   zahl-int x
  ))
; nicht vollständig funktionsfähig aufgrund des Problems wenn zwei gleiche Zahlen aufeinander folgen am Anfang
;(zahl-umdrehen 123)
(zahl-umdrehen 4497821)
;(zahl-umdrehen 597050)
;(zahl-umdrehen 343442)

;Exercise 9
(define (aufsteigendes-produkt? a b c d)
  (define (check-sum a b c d)
    (= (+ a b c) d)
  )
  (define (check-reihenfolge a b c)
    (define (inner-check num prevNum)
      (= (+ prevNum 1) num)
      )
    (if (inner-check b a)
        (if (inner-check c b) (check-sum a b c d) #f) #f))
  (check-reihenfolge a b c)
  )
(aufsteigendes-produkt? 1 2 3 6)
(aufsteigendes-produkt? 2 1 3 6)
(aufsteigendes-produkt? 2 3 5 11)

;Exercise 10
(define (f1 a b)
  (and a (not b))
)
(define (f2 a b c)
  (or a c)
)
(define (f3 a b c d)
  (and (xor (not a) b) (and b (or (not d) (not c) (not a))))
)


;(f1 #t #t)
;(f1 #f #t)
;(f1 #t #f)
;(f1 #f #f)

;(f2 #t #t #t)
;(f2 #f #t #t)
;(f2 #t #f #t)
;(f2 #f #f #t)
;(f2 #t #t #f)
;(f2 #f #t #f)
;(f2 #t #f #f)
;(f2 #f #f #f)


;(f3 #t #t #t #t)
;(f3 #f #t #t #t)
;(f3 #t #f #t #t)
;(f3 #f #f #t #t)
;(f3 #t #t #f #t)
;(f3 #f #t #f #t)
;(f3 #t #f #f #t)
;(f3 #f #f #f #t)
;(f3 #t #t #t #f)
;(f3 #f #t #t #f)
;(f3 #t #f #t #f)
;(f3 #f #f #t #f)
;(f3 #t #t #f #f)
;(f3 #f #t #f #f)
;(f3 #t #f #f #f)
;(f3 #f #f #f #f)
