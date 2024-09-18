// FACTORIAL DIGIT SUM //

(= (factorial $x) (
    if (<= $x 0) 1
  (* $x (factorial (- $x 1)))))

(= (digit $n)
    (if (> $n 10)
        (+ (% $n 10) (digit (/ (- $n (% $n 10)) 10)))
        $n
    )
)
! (digit (factorial 10))