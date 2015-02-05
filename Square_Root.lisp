;;;; Agustin Cabra Feb-2015, Implementing finding square roots, using Heron's of
;;;; Alexandria algorithm base on initial guess and improving, seen on the
;;;; MIT OCW (Structured Interpretation of Computer Programs)
(define (avg x y) (/ (+ x y) 2))
(define (abs x) (if (< x 0) (- x) x))
(define (square x) (* x x))

(define (sqrt x) 
    (define (improve guess) (avg guess (/ x guess)))
    (define (good? guess) (< (abs (- (square guess) x)) 0.00000001))
    (define (try guess) (if (good? guess) guess (try (improve guess))))
    (try 1))

