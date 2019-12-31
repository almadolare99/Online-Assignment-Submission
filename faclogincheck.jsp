<%@page import="java.sql.*" %>
<%
       
            String user=request.getParameter("username");
            String pwd=request.getParameter("password");
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/abc?serverTimezone=EST5EDT","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("SELECT * FROM FACULTY WHERE USERNAME='"+user+"'and password='"+pwd+"'");
            if(rs.next()){
                session.setAttribute("msg", user);
                response.sendRedirect("Facultyprofile.jsp");
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
