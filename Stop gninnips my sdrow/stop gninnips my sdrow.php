<?php
function spinWords(string $str): string {

    $words = function($word){
        return strlen($word) > 4 ? strrev($word) : $word;
    };
    return implode(' ', array_map($words, explode(' ', $str)));
    // TODO Have fun :)
  }

echo spinWords("This is another test");