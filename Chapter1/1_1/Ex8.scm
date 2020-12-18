(define (square y) 
  (y * y))

(define (good-enough? guess x)
(=(improve guess x) guess))


(define (average x y)
(/ (+ x y) 2))


(define (cubert-iter guess x) 
  (if (good-enough? guess x)
      guess
      (cubert-iter (improve guess x) x)))

(define (improve guess x) 
  (/ (+ (/ x (* guess guess)) (* 2 guess))
     3))

(define (cubert x) 
  (cubert-iter 1.0 x))

