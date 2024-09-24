// Given an integer n, count the total number of digit 1 appearing in all non-negative integers less than or equal to n.

 

Example 1:

Input: n = 13
Output: 6
Example 2:

Input: n = 0
Output: 0

//


(= (digit $n)
    (if (>= $n 10)
        (:: (% $n 10) (digit (/ (- $n (% $n 10)) 10)))
        (:: $n ())
    )
)

(= (ones ()) 0)

(= (ones (:: $x $xs)) 
(
    if (== $x 1)
    (+ 1 (ones $xs))
    (ones $xs)
))

(= (onesdigits $n)
    (
        if (<= $n 0) 0
        (+ (ones (digit $n)) (onesdigits (- $n 1))))
)

!(onesdigits 13)
