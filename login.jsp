<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%! Connection con=null; %>
<%! Statement st= null; %>
<%! ResultSet rs= null; %>
 
<%
 
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            }
        catch(ClassNotFoundException ce){out.println(ce);}
        try{
 
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root",""); //Connection created
            st = con.createStatement();
            rs=st.executeQuery("select * from register where username = '"+username+"' and password='"+password+"'");
            if(!rs.next())
            {
                response.sendRedirect("index.html");
            }
           
        }
        catch(SQLException e)
        {
                response.sendRedirect("Error found");
        }
%>
