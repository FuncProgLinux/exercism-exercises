(import (rnrs))

(define (len n)
  (+ 1 (floor (/ (log n) (log 10)))))

(define (number->digits n)
  (map (lambda (char) (- (char->integer char) 48))
       (string->list (number->string (abs n)))))

(define (armstrong-number? n)
  (define numbers
    (number->digits n))
  (cond
   ((< n 0) #f)
   ((= n (apply + (map
                   (lambda (x) (expt x
                                     (string-length (number->string n)))) numbers))))
   (else #f)))
