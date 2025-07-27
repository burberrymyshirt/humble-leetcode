<?php

class Solution
{

    /**
     * @param String $word1
     * @param String $word2
     * @return String
     */
    function mergeAlternately($word1, $word2)
    {
        $return = [];
        $length = max(strlen($word1), strlen($word2));
        for ($i = 0; $i < $length; $i++) {
            if (!is_null($v = $word1[$i] ?? null)) {
                $return[] = $v;
            }
            if (!is_null($v = $word2[$i] ?? null)) {
                $return[] = $v;
            }
        }
        return implode('', $return);
    }
}
