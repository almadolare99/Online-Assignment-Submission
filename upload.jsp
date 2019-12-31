<%@page import="java.sql.*" %> 
<%
         
        String roll=request.getParameter("rollno");
        String name=request.getParameter("name");
        String aname=request.getParameter("asname");
        String aid=request.getParameter("asid");
        String date=request.getParameter("date");
        String file=request.getParameter("file");
        
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abc?serverTimezone=EST5EDT","root","");
        Statement st=con.createStatement();
        st.executeUpdate("insert into upload2(rollno,name,asid,asname,date,file)"
                +"values('"+roll+"','"+name+"','"+aid+"','"+aname+"','"+date+"','"+file+"')");
        %><script>
        alert("UPLOAD SUCCESFUL");
            </script><%
        }
        catch(Exception ex){out.println(ex);}
        %>
