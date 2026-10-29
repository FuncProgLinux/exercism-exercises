(import (rnrs))

(define (egg-count number)
  (length (filter (lambda (c)
                    (char=? c #\1))
                  (string->list (number->string number 2)))))
