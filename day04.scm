(module day04
  (include "utils.scm")
  )

(define (contains arr val equality-func)
  (if (null? arr)
    #f
    (if (equality-func (car arr) val)
      #t
      (contains (cdr arr) val equality-func))
    )
  )

(define (exists-in-list arr equality-func)
  (if (null? arr)
    1
    (if (contains (cdr arr) (car arr) equality-func)
      0
      (exists-in-list (cdr arr) equality-func)
      )
    )
  )

(define (count-valid arr count equality-func)
  (if (null? arr)
    count
    (+ (+ count (exists-in-list (string-split (car arr) " ") equality-func)) (count-valid (cdr arr) 0 equality-func))
    )
  )
(define (is-anagram-rec a b)
  (if (null? a)
    #t
    (let ((new-b (delete-first (car a) b)))
      (if (equal? (length b) (length new-b))
        #f
        (is-anagram-rec (cdr a) new-b))
      )
    )
  )
(define (is-anagram a b)
  (if (equal? (string-length a) (string-length b))
    (is-anagram-rec (string->list a) (string->list b))
    #f
    )
  )
(define (day4 arr)
  (display (count-valid arr 0 equal?))
  (display " <- part 1\n")
  (display (count-valid arr 0 is-anagram))
  (display " <- part 2\n")
  )
(day4 (string-split (read-string (open-input-file "day04in.txt")) "\n"))