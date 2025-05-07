(define (ascending? s) 'YOUR-CODE-HERE
    (or (null? s)
        (null? (cdr s))
        (and (<= (car s) (car (cdr s)))
        (ascending? (cdr s)))
    )
)

(define (my-filter pred s) 'YOUR-CODE-HERE
    (cond
    ((null? s) '())
    ((pred (car s))
        (cons (car s) (my-filter pred (cdr s))))
    (else
    (my-filter pred (cdr s)))
    )

)

(define (interleave lst1 lst2) 'YOUR-CODE-HERE
    (cond
    ((null? lst1) lst2)
    ((null? lst2) lst1)
    (else
        (cons (car lst1)
        (cons (car lst2)
        (interleave (cdr lst1) (cdr lst2)))
        )
    )
    )
)

(define (no-repeats s)
  (define (member? x lst)
    (cond
      ((null? lst) #f)
      ((equal? x (car lst)) #t)
      (else (member? x (cdr lst))))
    )

  (define (helper lst seen)
    (cond
      ((null? lst) '())
      ((member? (car lst) seen)
       (helper (cdr lst) seen))
      (else
       (cons (car lst) (helper (cdr lst) (cons (car lst) seen))))))

  (helper s '()))