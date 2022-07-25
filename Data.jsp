
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DBpageS</title>
    </head>
    <body>
        <% 
            String fname= request.getParameter("fname");
            String lname= request.getParameter("lname");
           String address= request.getParameter("address");
           String gender= request.getParameter("gender");
          Connection co=null;
        Statement st=null;
        ResultSet r=null;
        
         try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       
       //make the connection 
        try{
         co =DriverManager.getConnection("jdbc:mysql://localhost:3306/School", "root", "");
         //Number 3 create a statement 
         
         st = co.createStatement();
         
         //ste4 run the queries 
         st.executeUpdate("insert into register(Fname,Lname,Address,Gender)value('"+fname+"','"+lname+"','"+address+"','"+gender+"')");
          r=st.executeQuery("select * from register");
          %>
          <h3 align="center">The information provided to the database</h3>
             <table border="1" width="100%"> 
            <tr>
                <th>First name</th><th>Last name</th><th>Address</th><th>Gender</th>
             </tr>
              <tr>
        <%
        while(r.next()){
            %>
           
        <td><%=r.getString("Fname")%></td>
        <td><%=r.getString("Lname")%></td>
        <td><%=r.getString("Address")%></td>
        <td><%=r.getString("Gender")%></td>
          </tr>
             <%
                 }
      }catch(SQLException e){
            out.println("Error "+e.getMessage());
        
        }
            
            }catch(ClassNotFoundException ec){
           out.println("Error "+ec.getMessage());
       }
        %>
     
       
         </table>
        <a href="/database/index.jsp"> Go Back</a>
        </body>
</html>
