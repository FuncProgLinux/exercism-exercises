(import (rnrs))

(define (distance x y)
  (+ (expt x 2) (expt y 2)))

(define (score x y)
  (let ((dart-distance (distance x y)))
    (cond
    ((<= dart-distance 1) 10)
    ((<= dart-distance 25) 5)
    ((<= dart-distance 100) 1)
    (else
     0))))
