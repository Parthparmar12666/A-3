<?php
for($i = 59; $i <= 4812; $i++) {
  $sum = 0;
  $Ar = $i;
  while($Ar != 0) {
$rem = $Ar % 10;
$thrice = $rem * $rem * $rem;
$sum += $thrice;
$Ar = $Ar / 10;
  }
  if ($sum == $i) {
    echo "$i\n";
  }
}
?>