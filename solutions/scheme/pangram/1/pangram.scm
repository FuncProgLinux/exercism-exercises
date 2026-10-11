(import (rnrs))

(define (pangram? phrase)
  "Return #t if PHRASE is a pangram, otherwise, return #f."
  (define %alphabet "abcdefghijklmnopqrstuvwxyz")
  (cond
   ((string-ci=? phrase %alphabet))
   ((string-every (lambda (char)
                    (string-index (string-downcase phrase) char))
                  %alphabet) #t)
   ((string-null? phrase) #f)
   (else #f)))
