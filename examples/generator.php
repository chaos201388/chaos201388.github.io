<?php

function numberGenerator(int $start, int $end, int $step = 1)
{
    for ($number = $start; $number <= $end; $number += $step) {
        yield $number;
    }
}

foreach (numberGenerator(0, 10, 2) as $number) {
    print sprintf("%d\n", $number);
}
