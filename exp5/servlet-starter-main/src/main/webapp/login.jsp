<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login Page - Aayan</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            width: 400px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
        }

        input:focus {
            outline: none;
            border-color: #667eea;
        }

        .actions-group {
            text-align: center;
        }

        button {
            background: #667eea;
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        button:hover {
            background: #4c63d2;
        }

        .btn-back {
            display: block;
            margin-top: 20px;
            color: #667eea;
            text-decoration: none;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>

    <div class="login-container">

        <h2>Login Page</h2>

        <form action="login" method="post">

            <% if (request.getParameter("error") != null) { %>

                <p class="error">Incorrect Credentials</p>

            <% } %>

            <div class="form-group">

                <label for="email">Enter Email:</label>

                <input type="email"
                       name="email"
                       id="email"
                       placeholder="example@domain.com"
                       required>

            </div>

            <div class="form-group">

                <label for="pass">Enter Password:</label>

                <input type="password"
                       name="pass"
                       id="pass"
                       placeholder="********"
                       required>

            </div>

            <div class="actions-group">

                <button type="submit">Login</button>

                <a href="index.jsp" class="btn-back">Go Back</a>

            </div>

        </form>

    </div>

</body>
</html>