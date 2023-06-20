<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tables in html</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    
    <div class="container">
        
<table>
    <tr>
        <td><h4>Step 1:Your details</h4></td>
</tr>
    
        <tr>
            <td><label for="Name">Name</label></td>
            <td><input type="text" placeholder="first and last name" require></td>
        </tr>
        <tr>
            <td><label for="email">email</label></td>
            <td><input type="text" placeholder="example@domain.com"></td>
        </tr>
        <tr>
            <td><label for="phone">phone</label></td>
            <td><input type="text" placeholder="Eg. +44750000000"></td>
        </tr>
        <tr>
            <td><h4> Step 2: Delivery address</h4></td>
       </tr> 
        <tr>

            <td><label for="address">address</label></td>
            <td><textarea name="address" id=""  rows="5"></textarea></td>
        </tr>
        <tr>
            <td><label for="post code">post code</label></td>
            <td><input type="text" placeholder="       "></td>
        </tr>
        <tr>
            <td><label for="country">country</label></td>
            <td><input type="text" placeholder="       "></td>
        </tr>
        <tr>
            <td><h4> Step 3: Card Details</h4></td>
       </tr> 
        <tr>
            <td><label for="card type">card type</label></td>
            <td><input type="radio" name="visa">visa
            <input type="radio" name="AmEX">AmEX
            <input type="radio" name="Mastercard">Mastarcard

        </td>
        <tr>
            <td><label for="card number">card number</label></td>
            <td><input type="text" placeholder="      "></td>
         </tr>
         <tr>
            <td><label for="security code">security code</label></td>
            <td><input type="text" placeholder=" "></td>
         </tr>
         <tr>
            <td><label for="Name on card">Name on card<label></td>
            <td><input type="text" placeholder="exact name on the card"></td>
         </tr>
    </table>
    <button type="submit">Buy it</button>

</div>
</body>
</html>