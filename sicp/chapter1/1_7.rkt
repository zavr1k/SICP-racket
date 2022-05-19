#lang sicp

(#%require rackunit)

(define (square-root x)
  (define (average x y) (/ (+ x y) 2))
  (define (improve guess) (average guess (/ x guess)))

  (define (good-enough? guess prev)
    (< (abs (- guess prev)) 0.001))
  
  (define (square-iter guess prev)
    (if (good-enough? guess prev)
        guess
        (square-iter (improve guess) guess)))
  
  (square-iter 1.0 10.0))


(check-equal? (round (* 1000 (square-root 100.0))) 10000.0)
(check-equal? (round (* 1000 (square-root 4.0))) 2000.0)
(check-equal? (round (* 1000 (square-root 1000000.0))) 1000000.0)
(check-equal? (round (* 1000 (square-root 0.04))) 200.0)
