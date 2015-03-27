<%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>



<script language="JavaScript" type="text/javascript">
		window.history.forward(1);
</script>

<br>

<%
    String ch = request.getParameter("ID");
   	System.out.println(ch);
   	
   	
 //  String ch = "";
    String data ="";
    int teacherid = 100;
    String tid = "";
    int id = 0;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MainDatabase", "root", "satyam08081994");
        Statement st = con.createStatement();
       // ResultSet res_before = st.executeQuery("select * from Question where t_id = 100 ;"); 
      //  st.executeUpdate("insert into Question (ques_text,t_id) values ('"+ch+"','"+teacherid+"');");
        ResultSet res_after = st.executeQuery("select * from Question where t_id = '"+ch+"' ;"); 
		
        
        
      /*ResultSet rs = st.executeQuery("select distinct t_name , t_id from Teacher where t_id in (select t_id from Domain where domain_name = '"+ch+"');");
      ResultSet res  = st.executeQuery("insert into Question (ques_text,t_id)  values(?,?);"); 
	insert into Answer (ans_text) values ("Operating System");
       ResultSet rs = st.executeQuery("insert into Question (ques_text) values ('"+ch+"');");
      ResultSet rs = st.executeQuery("select * from Question where t_id = 100 ;");*/
	//	res_after.first();
        
      %>

<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="/project/TeacherProfile/styles.css">
   <script src="/project/jquery/jquery-ui.min.js" type="text/javascript"></script>
   <script src="/project/TeacherProfile/script.js"></script>
   

</head>
<div id='cssmenu'>
<ul>
   <li class='active'><a href="/project/index.jsp">Home</a></li>
   <li><a href="/project/Login/login.html">Logout</a></li>
   
   
</ul>
</div>
<h1 align="center"> Question List </h1>
     
      
      <% 
       while(res_after.next())
        {
            data = "" + res_after.getString("ques_text");
    		tid = res_after.getString("ques_id"); 
    		id = Integer.parseInt(tid);
         	//System.out.println("Name:" + data);
       %>
       	
  
  		<h1><a href="/project/QueAns/giveans.jsp?id=<%= tid %>"><%= data %></a></h1>
  
        	
		<%}
     
      con.close();
      st.close();
    //  session.invalidate();
   //   response.sendRedirect("/Mentor_talks/index1.jsp");
        	
       }
    catch(Exception e) 
    {
        System.out.println(e);
    }
    %>


