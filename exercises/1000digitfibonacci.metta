(= (digit $n)
    (if (> $n 10)
        (:: (% $n 10) (digit (/ (- $n (% $n 10)) 10)))
        (:: $n ())
    )
)
(= (length ()) 0)

(= (length (:: $x $xs))
    (+ 1 (length $xs))
)

(=(mainfibonacci $n)
    (if (<= $n 1)
        $n
        (+ (mainfibonacci (- $n 1)) (mainfibonacci (- $n 2)) )       
    )
)

(= (fibonacciindex $x) 
    (
        if (== (length (digit (mainfibonacci $x))) 4)
            $x
            (fibonacciindex (+ $x 1))
    )
)

!(fibonacciindex 2)