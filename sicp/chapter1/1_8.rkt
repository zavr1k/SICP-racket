#lang sicp

(#%require rackunit)

(define (cube-root x)
  (define (improve guess) (/ (+ (/ x (* guess guess) ) (* 2 guess)) 3))
  (define (good-enough? guess prev)
    (< (abs (- guess prev)) 0.001))
  
  (define (square-iter guess prev)
    (if (good-enough? guess prev)
        guess
        (square-iter (improve guess) guess)))
  
  (square-iter 1.0 10.0))


(check-equal? (round (* 1000 (cube-root 8.0))) 2000.0)
(check-equal? (round (* 1000 (cube-root 1000.0))) 10000.0)
(check-equal? (round (* 1000 (cube-root 1000000000.0))) 1000000.0)
(check-equal? (round (* 1000 (cube-root 0.008))) 200.0)
