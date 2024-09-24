// The sum of the squares of the first ten natural numbers is,
1^2 + 2^2 + ... + 10^2 = 385.
The square of the sum of the first ten natural numbers is
(1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640
Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum //

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
