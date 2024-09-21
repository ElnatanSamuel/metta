// HELPER FUNCTIONS //

(= (getfirst (:: $x $xs)) $x)
(= (getrest (:: $x $xs)) $xs)
(= (length ()) 0)
(= (length (:: $x $xs))
    (+ 1 (length $xs))
)

(= (remove-last $list) 
    (
    if (== (length $list) 1) ()
    (:: (getfirst $list) (remove-last (getrest $list)))
    )

)

(= (sort ()) ())
(= (sort (:: $x $xs))
(place $x (sort $xs)))
            
(= (place $val ()) (:: $val ())) 
(= (place $val (:: $x $xs))
            (if (> $val $x)
                (:: $x (place $val $xs))
                (:: $val (:: $x $xs))))

(= (iseven $x) (
    if (== (% $x 2) 0) True
    False
) )

(= (sum ()) 0)
(= (sum (:: $x $xs))
    (+ $x (sum $xs))
)

(= (mergelists () ()) ())
(= (mergelists $list1 $list2)
    (
        if (<= (length $list2) 0) $list1
        (:: (getfirst $list2) (mergelists $list1 (getrest $list2)))

))

// HELPER FUNCTIONS //



(= (removetwo $list)
    (
       if (iseven (length $list))
            (
                if (== (length $list) 2) $list
                (removetwo (getrest (remove-last $list)))
            )
            (
                if (== (length $list) 1) $list
                (removetwo (getrest (remove-last $list)))
            )
    )
)

!(removetwo (:: 1 (:: 2 (:: 3 (:: 4 ())))))

(= (median $list) 
    (
        if (== (length $list) 1) (getfirst $list)
        (/ (sum $list) 2)       
    )
)

!(median (removetwo (:: 1 (:: 2 (:: 3 (:: 4 ()))))))

(= (final-part $list1 $list2) 
    (median (removetwo(sort (mergelists $list1 $list2))))
) 

!(final-part (:: 1 (:: 2 (:: 3 (:: 4 ())))) (:: 5 (:: 6 (:: 7 (:: 8 ())))))