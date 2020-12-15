(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

The behavior of this function is such that it tests whether or not b is
positive so that it knows whether or not to add or subtract b to/from a. 
This will essentially produce the mathematical operation of always 
increasing a by the absolute value of b. The function takes two inputs 
(b and a) it then determines based on the value of b what operation it will 
be employing on a (+/-) b. 
