(define (cube-root x) 
    (define (square x) (* x x))
    (define (cube x) (* x x x))
    (define (improve-guess x guess)
        (/ (+ (/ x (square guess)) (* 2 guess)) 3))
    (define (good-enough? x guess) 
        (= (improve-guess x guess) guess)) 
    (define (iter x guess)
        (if (good-enough? x guess) 
            guess
            (iter x (improve-guess x guess))
        ))
    (iter x 1.0)
)

(print (cube-root 2))
(print (cube-root 27))
(print (cube-root -150))