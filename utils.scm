(define (value-at arr pos destination-pos)
  (if (null? arr)
    -1
    (if (eq? pos destination-pos)
      (car arr)
      (value-at (cdr arr) (+ pos 1) destination-pos)
      )
    )
  )