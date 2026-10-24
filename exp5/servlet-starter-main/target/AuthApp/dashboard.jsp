<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("name") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Dashboard - Aayan</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f6fb;
            min-height: 100vh;
        }

        header {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            padding: 25px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h2 {
            font-size: 24px;
        }

        .btn-logout {
            background: white;
            color: #667eea;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
        }

        .btn-logout:hover {
            background: #eee;
        }

        .dashboard-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 75vh;
            padding: 20px;
        }

        .welcome-card {
            background: white;
            padding: 50px;
            border-radius: 15px;
            text-align: center;
            width: 550px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .welcome-card h2 {
            color: #667eea;
            margin-bottom: 20px;
        }

        .welcome-card h3 {
            color: #333;
            margin-bottom: 15px;
        }

        .welcome-card p {
            color: #666;
        }
    </style>
</head>

<body>

    <header>

        <h2>
            Welcome, <%= session.getAttribute("name") %>!
        </h2>

        <a href="logout" class="btn-logout">
            Logout
        </a>

    </header>

    <main class="dashboard-container">

        <div class="welcome-card">

            <h2>Your Workspace</h2>

            <h3>
                You have successfully logged in.
            </h3>

            <p>
                Welcome, <%= session.getAttribute("name") %>!
            </p>

        </div>

    </main>

</body>
</html>