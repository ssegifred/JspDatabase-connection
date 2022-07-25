
<html>
    <head>
        <title>Registration form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
         <form action="/database/Data.jsp" method="post">
             <table align="center" border = 2>
            <tr ><th colspan="2">Enter your details to register in the database of the company</th></tr>
            <tr><td>FirstName:</td><td><input type="text" name="fname"></td></tr>
            <tr><td>LastName:</td><td><input type="text" name="lname"></td></tr>
            <tr><td>Address:</td><td><input type="text" name="address"></td></tr>
            <tr><td>Gender:
                </td><td>
                    <input type="radio" name="gender" value="Male">Male 
                    <input type="radio" name="gender" value="Female">Female
                </td></tr>
            <tr><td align="center"><input type="submit" value="Save"></td></tr>
          </table>
              </form>

    </body>
</html>
