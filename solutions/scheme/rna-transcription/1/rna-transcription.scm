(import (rnrs))

(define (dna->rna dna)
  (string-map
   (lambda (char)
     (cond
      ((char=? char #\G) #\C)
      ((char=? char #\C) #\G)
      ((char=? char #\T) #\A)
      ((char=? char #\A) #\U)
      (else char)))
   dna))
