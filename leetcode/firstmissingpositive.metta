(= (exists-in $n ()) False)
(= (exists-in $n (:: $x $xs))
   (if (== $n $x)
       True
       (exists-in $n $xs)))



(= (firstmissingpos $n $list) (
    if (exists-in $n $list)
     (firstmissingpos (+ $n 1) $list)
    $n
    
))


!(firstmissingpos 1 (:: -1 (:: 2 (:: 3 ()))))