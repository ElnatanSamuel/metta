// MULTIPLES OF 3 or 5 //

(= (summultiple $x)
    (if (<= $x 0) 0
        (if (or (== (% $x 3) 0) (== (% $x 5) 0))
            (+ $x (summultiple (- $x 1)))
            (summultiple (- $x 1)))))

!(summultiple 10)