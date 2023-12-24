(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ordered? s) (if (null? (cdr s))
    #t
    (if (> (car s) (cadr s))
        #f
        (ordered? (cdr s))
        )
    ))

(define (square x) (* x x))

(define (pow base exp) (if (or (= base 1) (= exp 0))
    1
    (if (even? exp)
        (pow (square base) (/ exp 2))
        (* base (pow (square base) (/ (- exp 1) 2)))
        )
    ))
