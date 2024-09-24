// n! means n X (n - 1) X ... X 3 X 2 X 1.</p>
For example, 10! = 10 X 9 X ... X 3 X 2 X 1 = 3628800, and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27
Find the sum of the digits in the number 100!. //


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
