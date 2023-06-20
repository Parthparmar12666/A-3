<?php

$x=50;
$y=10;
$z=30;


$res = ($x > $y)? (($x > $z)? $x : $z) : (($y > $z)? $y : $z);

echo "$res";
?>