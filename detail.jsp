<%@ page import = "java.sql.*" %>

<html>
    <head>
        <title>Hello</title>

        <style>
            table, th, td {
            border: 5px solid rgb(126, 21, 21);
            border-radius: dotted ;
        }
        </style>



    </head>

    <body>

        <table>

            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Grade</th>
            </tr>

            <%
            
            
            try{
                
                
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root","tiger");
                Statement statement = con.createStatement();
                
                ResultSet result = statement.executeQuery("select * from student");
                
                while(result.next())
                {
                    %>
                    <tr>
                        <td><h1><%= result.getInt(1) %></h1></td>
                        <td><h1><%= result.getString(2) %></h1></td>
                        <td> <h1><%= result.getString(3) %></h1></td>
                    </tr>
                    <%
                }
            }
    catch(Exception e){
        out.println(e);
    }
    
    %>
    
    
    
</table>
</body>
</html>