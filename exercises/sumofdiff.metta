(= (square $x) (* $x $x))

(= (squaresum $x) (
    if (<= $x 0) 0
    (+ (square $x) (squaresum (- $x 1)))))

(= (sumall $x) (
    if (<= $x 0) 0
    (+ $x (sumall (- $x 1)))))

(= (diffsquaresum $x) 
    (if (<= $x 0) 0
        (- (square (sumall $x)) (squaresum $x))
    )
)

!(diffsquaresum 10)