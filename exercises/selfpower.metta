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