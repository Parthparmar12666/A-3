<?php
$a = '1'; 
$b = &$a; 
$c = "2$b"; 

echo $a;
echo $b;
echo $c;
?>