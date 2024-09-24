// 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145
Find the sum of all numbers which are equal to the sum of the factorial of their digits
Note: As 1! = 1 and 2! = 2 are not sums they are not included //


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
