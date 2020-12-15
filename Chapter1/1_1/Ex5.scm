(define (p) (p))

(define (test x y)
(if (= x 0) 0 y))

(test 0 (p))

For applicative order evaluation (test 0 (p)) will evaluate as a recursive loop. 
Because AOE evaluates the operators and operands first, it will first attempt to 
evaluate (p) which will call the function that calls itself thus producing the result (p)
and further calling itself indefinitely. For normal order evaluation, a simplification will
first occur. Something like 
             (test 0 (p))
             (if (= 0 0) 0 (p))
             0
this is because normal order evaluation simply plugs in the values into the function and then 
evaluates without first carrying out the operations nested within the operands. 

