<?php

function nbYear($p0, $percent, $aug, $p) {
    $year = 0;
    while ($p0 < $p):
        $year++;
        $p0 = intval($p0*(1+$percent/100)+$aug);
    endwhile;
    return $year;
}

echo nbYear(1500000, 2.5, 10000, 2000000);