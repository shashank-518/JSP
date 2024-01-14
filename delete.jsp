<%@ page import =  " java.sql.* " %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete</title>
</head>
<body>

    <%
    int userid = Integer.parseInt(request.getParameter("id"));
    %>

    <%

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","tiger");
    Statement st = con.createStatement();

    String s1 = "Delete from student where id = " +userid ;

    int q = st.executeUpdate(s1);

    if(q>0){
        %>
        <h1>Succesfully Updated</h1>
    <%
    }            else{
      %>
 <h1>Not updated</h1>  
        <%

}



    %>

    
</body>
</html>