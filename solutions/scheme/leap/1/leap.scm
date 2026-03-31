(import (rnrs))

(define (leap-year? year)
  "Return if YEAR is leap"
  (or
   (= (modulo year 400) 0)
   (and
    (= (modulo year 4) 0)
    (not (= (modulo year 100) 0)))))

