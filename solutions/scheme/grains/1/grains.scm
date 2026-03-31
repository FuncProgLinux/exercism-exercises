(import (rnrs))

(define (square n)
  (cond
   ((or (< n 1) (> n 64))
    (throw 'error))
   (else
    (expt 2 (- n 1)))))

(define total
  (let ((total-grains (expt 2 64)))
    (- total-grains 1)))

