<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
</head>
<body>

    <%

    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("text");

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","tiger");

    Statement st = con.createStatement();

    String q1 = "UPDATE student SET name = ' " +name+ " '  WHERE id ="+id;

    int q = st.executeUpdate(q1);



    %>

    

    
</body>
</html>