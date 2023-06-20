<?php

$x = readline("enter number");
echo ("$x  \n");

$x = $x % 2 == 0 ? 1 : 0;

if ($x) {
    echo "Even number.\n";
} else {
    echo "Odd number.\n";
}

?>