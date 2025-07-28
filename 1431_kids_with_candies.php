<?php

    /**
     * @param int[] $candies
     * @param int $extraCandies
     * @return bool[]
     */
    function kidsWithCandies($candies, $extraCandies) {
        $return = [];
        $clone = (new ArrayObject($candies))->getArrayCopy();
        sort($clone, SORT_NUMERIC);
        $highest = array_pop($clone);
        foreach ($candies as $i=>$c) {
            if ($c+$extraCandies < $highest) {
                $return[$i]=false;
                continue;
            }
            $return[$i] = true;
        }
        
        return $return;
    }

$r =kidsWithCandies([2,3,5,1,3], 3);
print_r(
$r
);
