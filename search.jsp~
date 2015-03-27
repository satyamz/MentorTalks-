<%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<nav>
<ul>
	<li><a href="/project/index.jsp">Home</a></li>
</ul>
</nav>


<%
  	String ch = request.getParameter("fruits").toString();
    System.out.println(ch);
    String data ="";
    String tid = "";
    //String link = "/Mentor_talks/TeacherProfile/teacherprofileid=";
    int id = 0;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MainDatabase", "root", "satyam08081994");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select distinct t_name , t_id from Teacher where t_id in (select t_id from Domain where domain_name = '"+ch+"');");
       
        
       
      %>
 	<h1 align="center" style="background-color:#FF9473;">Teacher Available For <%= ch%></h1>
 	<b><hr></b>
      
      <% 
        while(rs.next())
        {
            data = "" + rs.getString("t_name");
    		tid = rs.getString("t_id"); 
    		id = Integer.parseInt(tid);
         	System.out.println("Name:" + data);
        	System.out.println("ID:" + id);
        	
        	
       %>
       	<html>
       	<head><title>Search Result</title></head>
       
       	<style>
  		body
{

   background-image: url("white.jpg");
   background-repeat:no-repeat; 
   background-position:0px 0px;
   background-size:1370px 1000px;

}</style>
       	<body>
       	<div>
       	<br>
 		<h2><strong><p align = "center" ><b ><a href="TeacherProfile/teacherprofile.jsp?id=<%= id %>"><%= data %></a></b></p></strong></h2>
  		<br>
  		<br>
		<b><hr></b>
  		</div>
  		</body>
  		
		</html>

        	
		<%}
      con.close();
      st.close();
        	
       }
    catch(Exception e) 
    {
        System.out.println(e);
    }
    %>


