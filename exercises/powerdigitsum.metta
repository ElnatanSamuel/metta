// 2^{15} = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26
What is the sum of the digits of the number 2^{1000}? //


(= (digit $n)
    (if (> $n 10)
        (+ (% $n 10) (digit (/ (- $n (% $n 10)) 10)))
        $n
    )
)

(= (power $x $y) 
    (if (<= $y 0) 1
        (* $x (power $x (- $y 1)))
    )
)

!(digit (power 2 15))
