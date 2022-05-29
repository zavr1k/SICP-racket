#lang sicp

(#%require rackunit)

; reqursive process
(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) 
       (f (- n 2))
       (f (- n 3)))))

; iterative process
(define (f-iter n)
    (define (sub-iter a b c count)
        (if (= count 3)
            (+ a b c)
            (sub-iter (+ a b c) a b (- count 1))))

    (if (< n 3)
        n
        (sub-iter 2 1 0 n))
  )


(check-equal? (f 1) 1) 
(check-equal? (f 5) 11) 

(check-equal? (f-iter 1) 1)
(check-equal? (f-iter 5) 11)

