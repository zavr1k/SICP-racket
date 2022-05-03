#lang sicp

(#%require rackunit)

(define (a-plus-abs-b a b)
  (cond ((>= b 0) (+ a b))
        (else (- a b))))

(check-equal? (a-plus-abs-b 1 2) 3)
(check-equal? (a-plus-abs-b 1 0) 1)
(check-equal? (a-plus-abs-b 1 -2) 3)

