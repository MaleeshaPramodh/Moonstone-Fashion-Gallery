<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 6/6/2023
  Time: 1:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>

<%
    // Retrieving the id parameter from the request
    int id = Integer.parseInt(request.getParameter("id"));

    // Establishing database connection
    String jdbcUrl = "jdbc:mysql://localhost:3306/moonstone_db?useSSL=false";
    String username = "root";
    String password = "1234";

    Connection connection = null;
    PreparedStatement statement = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(jdbcUrl, username, password);

        // Deleting the row from the database
        String query = "DELETE FROM products WHERE id = ?";
        statement = connection.prepareStatement(query);
        statement.setInt(1, id);
        statement.executeUpdate();

        // Redirecting back to the page that displays the table
        response.sendRedirect("/moonstone/productmanage");
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (statement != null) {
            statement.close();
        }
        if (connection != null) {
            connection.close();
        }
    }
%>