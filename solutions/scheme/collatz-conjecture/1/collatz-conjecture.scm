(import (rnrs))

(define (collatz n)
  (let loop ((current-number n)
             (steps 0))
    (cond
     ((= 1 current-number)
      steps)
     ((= (modulo current-number 2) 0)
      (loop
       (/ current-number 2)
       (+ steps 1)))
     (else
      (loop
       (+ 1 (* 3 current-number))
       (+ steps 1))))))
