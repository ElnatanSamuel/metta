(=(mainfibonacci $n)
    (if (<= $n 1)
        $n
        (+ (mainfibonacci (- $n 1)) (mainfibonacci (- $n 2)) )       
    )
)
(= (fibonacciseries 1) 1)
(= (fibonacciseries 0) 1)
(= (fibonacciseries ()) ())

(=(fibonacciseries (:: $x $xs))
    (if (<= $x 0) $x
        (:: (mainfibonacci $x) (fibonacciseries $xs))       
    )
)

(= (range $start $end)
   (if (> $start $end)
       ()
       (:: $start (range (+ $start 1) $end))))
(= (even ()) ())
(= (even (:: $x $xs)) 
    (
        if (== (% $x 2) 0)
        (:: $x (even $xs))
        (even $xs)
        
    )
)



!(even (fibonacciseries (range 2 10)))
