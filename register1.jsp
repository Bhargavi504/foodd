<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%! Connection con=null; %>
<%! Statement st= null; %>
<%! ResultSet rs= null; %>
 
<%
 
        String firstname1 = request.getParameter("firstname");
        String lastname1 = request.getParameter("lastname");
        String username1 = request.getParameter("username");
        String password1 = request.getParameter("password");
		String email1 = request.getParameter("email");
       String phoneno1 = request.getParameter("phoneno");
       // String city1=request.getParameter("city");
       //out.println(firstname1);
			

    try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            }
        catch(ClassNotFoundException ce){out.println(ce);}
        try{
 
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root",""); //Connection created
            st = con.createStatement();
            int i=st.executeUpdate("insert into register(firstname,lastname,username,password,email,phoneno) values('"+firstname1+"','"+lastname1+"','"+username1+"','"+password1+"','"+email1+"','"+phoneno1+"')");
			response.sendRedirect("index.html");
        }
        catch(SQLException e)
        {
            out.print(e);
            e.printStackTrace();
        }
%>
