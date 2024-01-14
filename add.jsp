<%@ page import = "java.sql.*" %>

<html>
    <head>
        <title>
            hello
        </title>
    </head>

    <body>


        <%
        int num =  Integer.parseInt(request.getParameter("num"));
        String data = request.getParameter("text");
        String name = request.getParameter("grade");
        %>


        <%

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","tiger");

            Statement st = con.createStatement();


            String q1 = "insert into student(id,name,grade) values(?,?,?)";

            PreparedStatement ptsm = con.prepareStatement(q1);

            ptsm.setInt(1,num);
            ptsm.setString(2,data);
            ptsm.setString(3,name);

            int q = ptsm.executeUpdate();

            if(q>0){
                %>
                <h1>Succesfully Updated</h1>
            <%
            }            else{
              %>
         <h1>Not updated</h1>  
                <%

        }


        }


        catch(Exception e){
            out.println(e);
        }
        %>
        

    </body>
</html>