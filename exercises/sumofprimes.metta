// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
Find the sum of all the primes below two million //

(= (range $start $end)
   (if (> $start $end)
       ()
       (:: $start (range (+ $start 1) $end))))

(= (remove-multiples $p ()) ())
(= (remove-multiples $p (:: $x $xs))
   (if (== (% $x $p) 0)
       (remove-multiples $p $xs)
       (:: $x (remove-multiples $p $xs))))
(= (sieve ()) ())
(= (sieve (:: $p $xs))
   (:: $p (sieve (remove-multiples $p $xs))))
(= (prime-numbers-below $n)
   (sieve (range 2 (- $n 1))))
(= (sum ()) 0)

(= (sum (:: $x $xs))
    (+ $x (sum $xs))
)

!(sum (prime-numbers-below 10))
