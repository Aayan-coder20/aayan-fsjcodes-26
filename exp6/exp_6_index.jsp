<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>RCOE Form</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #f1f5f8;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .form-container {
            background: white;
            padding: 35px;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        }

        h2 {
            text-align: center;
            color: #00796b;
            margin-bottom: 25px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 100%;
            background: #00796b;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background: #005b50;
        }
    </style>
</head>

<body>

    <div class="form-container">

        <h2>Welcome to RCOE</h2>

        <form action="exp6_welcome.jsp" method="get">

            <label for="myname">Enter Your Name:</label>

            <input type="text"
                   name="myname"
                   id="myname"
                   placeholder="Enter Your Name"
                   required>

            <label for="myemail">Enter Your Email:</label>

            <input type="email"
                   name="myemail"
                   id="myemail"
                   placeholder="Enter Your Email"
                   required>

            <button type="submit">Submit</button>

        </form>

    </div>

</body>
</html>