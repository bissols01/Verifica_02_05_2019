
<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.io.*"%>



<!DOCTYPE html>
<html>
    <head>
    <style>
    h1{
        color:black;
        text-align:center;
        font-size:200%;
        font-family:impact;
        text-shadow: 2px 2px #000000;
        text-outline-color:black;
    }
    p{
        
        color:black;
        text-align:center;
        font-size:200%;
        font-family:impact;
        text-shadow: 2px 2px #000000;
        text-outline-color:black;
    }
    a{
        text-align: center;
    }
    
    
    </style>
        <title>Log In</title>
    </head>
    <body>
    

       <% 
            
            
            String connectionUrl = "jdbc:sqlserver://213.140.22.237\\SQLEXPRESS:1433;databaseName=XFactor;user=bissoli.marco;password=xxx123#";

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            Connection connection = DriverManager.getConnection(connectionUrl);
			
			Statement stmt = connection.createStatement();
			
			String UserName = request.getParameter("UserName");
			String Password = request.getParameter("Password");
			String nomeutente = "";
		

		

			
			String sql = "SELECT username COUNT FROM Cittadino WHERE password = ? AND username = ?;";
			PreparedStatement ps3 = connection.prepareStatement(sql);
			ps3.setString(1, Password);
			ps3.setString(2, UserName);
			
			ResultSet rs = ps3.executeQuery();
			
			
		
			while(rs.next()){
			    
			    
                
				String username = rs.getString("COUNT");
				
				if(username == null){
				    out.println("<h1>Credenziali errate!</h1>");
				    
				}else{
				    String sql2 = "SELECT * FROM Evento";
			PreparedStatement ps4 = connection.prepareStatement(sql2);
			
			
			
			ResultSet rs2 = ps4.executeQuery();
				    out.println("<ul>");
				    out.println("<li>"+rs2.getString("nome")+"</li>");
				    
				    
				    out.println("<h1>Benvenuto  !</h1>");
				    
			    %>
			    
			    <%

				}
				
                
                

	        }
	        
	        
        


rs.close();
connection.close();
			
			%>
    </body>
</html>