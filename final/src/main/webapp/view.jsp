<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
         try 
         {  
        	 Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1234");  
             Statement stmt = con.createStatement();  
             ResultSet rs = stmt.executeQuery("select * from std_list"); 
             out.println("<table border=1>");
             out.println("<tr><th>EmpId</th><th>EmpName</th><th>Salary</th><tr>");  
             while (rs.next()) 
             {  
                 String n = rs.getString("fname");  
                 String nm = rs.getString("lname");  
                 String s = rs.getString("city_name");   
                 out.println("<tr><td>" + n + "</td><td>" + nm + "</td><td>" + s + "</td></tr>");   
             }  
             out.println("</table>");  
             out.println("</html></body>");  
             con.close();  
            }  
             catch (Exception e) 
            {  
             out.println("error");  
         }   
  
%>