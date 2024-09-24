// The series, 1^1 + 2^2 + 3^3 + ... + 10^{10} = 10405071317
Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^{1000}


(= (power $x $y) 
    (
        if (<= $y 0) 1
        (* $x (power $x (- $y 1)))
    )
)

(= (selfpower $n) 

    (if (<= $n 0) 0
        (+ (power $n $n) (selfpower (- $n 1)))
    )
)

!(selfpower 10)
