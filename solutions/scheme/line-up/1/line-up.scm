(import (rnrs))

(define (format-message name number)
  (let* ((last-numbers (modulo number 100))
         (last-number (modulo number 10))
         (suffix (cond
                  ((= last-numbers 11) "th")
                  ((= last-numbers 12) "th")
                  ((= last-numbers 13) "th")
                  ((= last-number 1) "st")
                  ((= last-number 2) "nd")
                  ((= last-number 3) "rd")
                  (else "th"))))
    (format #f
          "~a, you are the ~a customer we serve today. Thank you!"
          name
          (string-append (number->string number) suffix))))
