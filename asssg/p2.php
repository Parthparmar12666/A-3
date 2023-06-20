<?php

for($year =1901;$year<=2016;$year ++){
if($year % 4==0 && $year % 100 !==0 || $year % 400==0)
{
    echo "This is leap year : $year \n";

}
else
{
    echo "not a leap year : $year \n";
}
}


?>