(import (rnrs))

(define (acronym test)
  "Returns a string with the acronym of TEST."
  (let* ((delimiters (char-set #\space #\- #\_))
         (words (string-split test delimiters))
         (trim-words (filter (lambda (str)
                               (not (string-null? str))) words))
         (first-letters (map (lambda (str)
                               (string-ref str 0)) trim-words)))
    (string-upcase (list->string first-letters))))
