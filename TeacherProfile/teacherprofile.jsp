<%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%
  	String ch = request.getParameter("id");
    System.out.println(ch);
    String data ="";
    String email ="";
    String qualification ="";
    String dept ="";
    String tid = "";
    int id = 0;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MainDatabase", "root", "satyam08081994");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from Teacher where t_id = '"+ch+"';");

      %>
      <!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="/project/jquery/jquery-ui.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
  
</head>
<body>

<div id='cssmenu'>
<ul>
   <li class='active'><a href="/project/index.jsp">Home</a></li>
   <li><a href="/project/discussion.jsp?id=<%= ch%>">View Discussion</a></li>
   <li><a href="/project/AskQuestion/AskQuestion.jsp?id=<%= ch%>">Ask Question</a></li>
   
</ul>
</div>
</body>


      <h1 align="center">Teacher Profile</h1> 
      <% 
        while(rs.next())
        {
            data = "" + rs.getString("t_name");
    		tid = rs.getString("t_id"); 
    		id = Integer.parseInt(tid);
    		email = rs.getString("t_email");
    		qualification = rs.getString("t_quali");
    		dept = rs.getString("t_dept");
         	System.out.println("Name:" + data);
       %>
       <table style="width:100%" align="center">
  <tr><br>
    <td><h2 align="left">Name:</h2></td>
  	<td><h2><%= data%></h2></td>  		
    
  </tr>
  <br>
  <tr><br>
    <td><h2 align="left" >Email ID:</h2></td>
  	<td><h2><%= email%></h2></td> 
  </tr>

  <tr>
  <td><h2 align="left">Qualification:</h2></td>
  <td><h2 ><%= qualification%></h2></td> 
  </tr>

  <tr>
  <td><h2 align="left">Department:</h2></td>
  <td><h2><%= dept%></h2></td> 
  </tr>
</table>
       <%}
      con.close();
      st.close();
        	
       }
    catch(Exception e) 
    {
        System.out.println(e);
    }
    %>

</body>
<html>
