<%@page import="java.sql.*" %> %>
<%
            String cla=request.getParameter("classname");
            
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abc?serverTimezone=EST5EDT","root","");
        Statement st=con.createStatement();
        st.executeUpdate("create table '"++"'(id,username,email,password,gender,department)");
        out.print("success");
        %>
        <script>
        alert("You are registered\n\ GO BACK TO HOMEPAGE AND LOGIN");
        </script>
    <%
        
        }
        catch(Exception e){
            out.print(e);
        }
        %> 
