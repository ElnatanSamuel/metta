(= (factorial $x) (
    if (<= $x 0) 1
  (* $x (factorial (- $x 1)))))

!(factorial 5)

(= (digit $n)
    (if (> $n 10)
        (+ (factorial(% $n 10)) (digit (/ (- $n (% $n 10)) 10)))
        (factorial $n)
    )
)

!(digit 145)

(= (range $start $end)
   (if (> $start $end)
       ()
       (:: $start (range (+ $start 1) $end))))

(= (digitfactorial ()) 0)

(= (digitfactorial (:: $x $xs))
    (
        if (== (digit $x) $x)
            (+ $x (digitfactorial $xs))
            (digitfactorial $xs)           
    )
)

!(digitfactorial (range 140 146))