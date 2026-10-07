package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;


@WebServlet("/add")
public class AddServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String num1text = request.getParameter("num1");
        String num2text = request.getParameter("num2");

        int num1 = Integer.parseInt(num1text);
        int num2 = Integer.parseInt(num2text);

        int sum = num1 + num2;

        out.println("<h1>First Number: " + num1 + "</h1>");
        out.println("<h1>Second Number: " + num2 + "</h1>");
        out.println("<h1>Sum = " + sum + "</h1>");
    }
}