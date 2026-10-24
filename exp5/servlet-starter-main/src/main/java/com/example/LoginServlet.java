package com.example;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/userauth",
                    "root",
                    "Aayan@786"
            );

            String sql = "SELECT * FROM users WHERE email=? AND password=?";

            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setString(1, email);
            stmt.setString(2, pass);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {

                HttpSession session = request.getSession();

                session.setAttribute("name", rs.getString("name"));
                session.setAttribute("email", rs.getString("email"));

                response.sendRedirect("dashboard.jsp");

            } else {

                response.sendRedirect("login.jsp?error=1");
            }

            rs.close();
            stmt.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
            response.sendRedirect("login.jsp?error=1");
        }
    }
}