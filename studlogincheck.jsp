<%@page import="java.sql.*" %>
<%
       
            String user=request.getParameter("username");
            out.print(user);
            String pwd=request.getParameter("password");
            out.print(pwd);
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/abc?serverTimezone=EST5EDT","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("SELECT * FROM STUDENT WHERE USERNAME='"+user+"'and password='"+pwd+"'");
            if(rs.next()){
%>
                <script>
        alert("You are logged in"); 
        </script>
<%
                session.setAttribute("msg", user);
                response.sendRedirect("Studentprofile.jsp");
            }
            else{
            %>
                <script>
        alert("Invalid username and password combination"); 
        </script>
        <%}
            }
            catch(SQLException e){
            out.println(e);
            }
       
        %>
