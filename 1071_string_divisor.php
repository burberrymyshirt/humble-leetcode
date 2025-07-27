<?php

class Solution
{

  /**
   * @param String $str1
   * @param String $str2
   * @return String
   */
  function gcdOfStrings(string $str1, string $str2): string
  {
    if ($str1 . $str2 !== $str2 . $str1) {
      return '';
    }
    $gcd = call_user_func(function (int $a, int $b) {
      while ($b !== 0) {
        $r = $a % $b;
        $a = $b;
        $b = $r;
      }
      return $a;
    }, strlen($str1), strlen($str2));
    return substr($str1, 0, $gcd);
  }
}
