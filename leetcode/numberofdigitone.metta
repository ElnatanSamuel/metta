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
