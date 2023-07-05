<%--
  Created by IntelliJ IDEA.
  User: MALEESHA
  Date: 6/6/2023
  Time: 1:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>

<%
    // Retrieve the ID parameter from the request
    int id = Integer.parseInt(request.getParameter("id"));

    // Establish database connection
    String jdbcUrl = "jdbc:mysql://localhost:3306/moonstone_db";
    String username = "root";
    String password = "1234";

    Connection connection = null;
    PreparedStatement statement = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(jdbcUrl, username, password);

        // Create the delete query with a parameterized statement
        String query = "DELETE FROM Product WHERE id = ?";
        statement = connection.prepareStatement(query);
        statement.setInt(1, id);

        // Execute the delete query
        int rowCount = statement.executeUpdate();

        // Print the number of affected rows
        System.out.println("Rows deleted: " + rowCount);
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close the statement and database connection
        if (statement != null) {
            statement.close();
        }
        if (connection != null) {
            connection.close();
        }
    }

    // Redirect back to the page displaying the table
    response.sendRedirect("/productmanage");
%>