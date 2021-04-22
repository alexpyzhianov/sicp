(define (sum-o-sq a b)
    (+ (* a a) (* b b))
)

(define (solve a b c)
    (cond
        ((and (>= (+ a b) (+ a c)) (>= (+ a b) (+ b c))) (sum-o-sq a b))
        ((and (>= (+ a c) (+ a b)) (>= (+ a c) (+ b c))) (sum-o-sq a c))
        (else (sum-o-sq b c))
    )
)
