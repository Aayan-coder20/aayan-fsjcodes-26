<!DOCTYPE html>
<html>
<head>
    <title>Servlet Experiment</title>
</head>
<body>

<h2>GenericServlet - Welcome Message</h2>

<form action="bye" method="get">

    Enter Your Name:
    <input type="text" name="name" required>

    <br><br>

    <input type="submit" value="Welcome">

</form>

<hr>

<h2>HttpServlet - Addition</h2>

<form action="add" method="get">

    
    <input type="number" name="num1" id = "num1" placeholder = "Enter num1">

    <br><br>


    <input type="number" name="num2" id = "num2" placeholder = "Enter num2">
    <button type="submit">Add</button>

    <br><br>

    <input type="submit" value="Add">

</form>

</body>
</html>