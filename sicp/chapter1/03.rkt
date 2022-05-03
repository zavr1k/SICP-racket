#lang sicp

(#%require rackunit)

 (define (solution a b c)
   (cond ((and (>= b a)(>= c a))(+ (* b b)(* c c)))
          ((and (>= a b)(>= c b))(+ (* a a)(* c c)))
          ((and (>= a c)(>= b c))(+ (* a a)(* b b)))))

(check-equal? (solution 1 2 3) 13) 
(check-equal? (solution 4 2 3) 25) 
(check-equal? (solution 0 0 0) 0) 
(check-equal? (solution 1 0 1) 2) 
(check-equal? (solution 2 3 2) 13)
