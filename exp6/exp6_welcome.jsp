<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.TimeZone" %>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>

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

        .container {
            background: white;
            padding: 40px;
            width: 450px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        }

        h1 {
            color: #00796b;
            margin-bottom: 20px;
        }

        h2 {
            color: #333;
        }

        p {
            color: #555;
            font-size: 16px;
        }

        .email {
            color: #00796b;
            font-style: italic;
        }

        .date {
            font-weight: bold;
            margin-top: 20px;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Welcome to RCOE</h1>

    <%
        String name = request.getParameter("myname");
        String email = request.getParameter("myemail");

        TimeZone ist = TimeZone.getTimeZone("Asia/Kolkata");

        Calendar calendar = Calendar.getInstance(ist);
        int hour = calendar.get(Calendar.HOUR_OF_DAY);

        String greeting;

        if (hour < 12) {
            greeting = "Good Morning";
        } else if (hour < 17) {
            greeting = "Good Afternoon";
        } else {
            greeting = "Good Evening";
        }

        Date date = new Date();

        SimpleDateFormat sdf =
            new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy");

        sdf.setTimeZone(ist);

        String currentDateTime = sdf.format(date);

        if (name != null && email != null) {

            String safeName = name.replace("&", "&amp;")
                                  .replace("<", "&lt;")
                                  .replace(">", "&gt;")
                                  .replace("\"", "&quot;")
                                  .replace("'", "&#39;");

            String safeEmail = email.replace("&", "&amp;")
                                    .replace("<", "&lt;")
                                    .replace(">", "&gt;")
                                    .replace("\"", "&quot;")
                                    .replace("'", "&#39;");

            out.println("<h2>" + greeting + ", " + safeName + "</h2>");

            out.println("<p>Email Id: <span class='email'>" +
                        safeEmail + "</span></p>");

            out.println("<p class='date'>Current Date and Time: " +
                        currentDateTime + "</p>");

        } else {

            out.println("<h2>Please enter your details first.</h2>");

        }
    %>

</div>

</body>
</html>