// The Fibonacci sequence is defined by the recurrence relation
F_n = F_{n - 1} + F_{n - 2}$, where $F_1 = 1$ and $F_2 = 1$
Hence the first 12 terms will be:

F_1 = 1
F_2 &amp;= 1
F_3 &amp;= 2
F_4 &amp;= 3
F_5 &amp;= 5
F_6 &amp;= 8
F_7 &amp;= 13
F_8 &amp;= 21
F_9 &amp;= 34
F_10 &amp;= 55
F_11 &amp;= 89
F_12 &amp;= 144

The 12th term, F_{12}, is the first term to contain three digits
What is the index of the first term in the Fibonacci sequence to contain $1000$ digits? //

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

