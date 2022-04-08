<?php

function number($bus_stops)
{
    return array_reduce(
        $bus_stops,
        fn ($carry, $item) => $carry += $item[0] - $item[1],
        0
    );
}

echo number([[10, 0], [3, 5], [5, 8]] + '\n');
// echo number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]]);
