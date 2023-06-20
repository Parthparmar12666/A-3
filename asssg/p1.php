<?php
$Physics = readline("Enter Physics marks");
$Chemistry = readline("Enter Physics marks");
$Biology = readline("Enter Physics marks");
$Mathematics = readline("enter Mathematics marks");
$Computer = readline("Enter Computer marks");
$percentage = 0;

if($percentage>90)
{
    print("A grade");

}
elseif($percentage>=80 && $percentage<90)
{
    print("B grade");
}
elseif($percentage>=70 && $percentage<80)
{
    print("C grade");
}
$percentage =  ($Physics + $Chemistry + $Biology + $Mathematics + $Computer);
$total = ($percentage * 100) / 500;
echo "percentage = $percentage";
echo "Total = $total";

$choice = readline("Enter Number \n");
switch($choice)
{
    case 1:
        print "Monday";
        break;
    case 2:
        print "tuesday";
        break;
    case 3:
        print "wednesday"; 
        break;
    case 4:
        print "Thrushday"; 
        break; 
    case 5:
        print "Friday";
        break;
    case 6:
        print "Saturday"; 
        break;
    case 7:
        print "Sunday"; 
        break;           


}

?>
