#lang sicp

(#%require rackunit)

;     1
;    1 1
;   1 2 1
;  1 3 3 1
; 1 4 6 4 1

(define (pascal-triangle row col)
  (cond ((= col 1) 1)
        ((= row col) 1)
        (else (+ (pascal-triangle (- row 1) col)
                (pascal-triangle (- row 1) (- col 1)))))
  )

(check-equal? (pascal-triangle 1 1) 1)
(check-equal? (pascal-triangle 3 2) 2)
(check-equal? (pascal-triangle 4 3) 3)
(check-equal? (pascal-triangle 5 2) 4)
(check-equal? (pascal-triangle 5 3) 6)

