<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>



   <%
   				String teacherid = request.getParameter("id");
   				System.out.println(""+teacherid);
   
   
   %>
    <head>
    <script src="jquery/external/jquery/jquery.js"></script>
	<script src="jquery/jquery-ui.js"></script>
	<meta charset="utf-8">
	<title>Discussion Page</title>
	<link href="jquery/jquery-ui.css" rel="stylesheet">
	<style>
	body{a
		font: 62.5% "Trebuchet MS", sans-serif;
		margin: 50px;
	}
	.demoHeaders {
		margin-top: 2em;
	}
	#dialog-link {
		padding: .4em 1em .4em 20px;
		text-decoration: none;
		position: relative;
	}
	#dialog-link span.ui-icon {
		margin: 0 5px 0 0;
		position: absolute;
		left: .2em;
		top: 50%;
		margin-top: -8px;
	}
	#icons {
		margin: 0;
		padding: 0;
	}
	#icons li {
		margin: 2px;
		position: relative;
		padding: 4px 0;
		cursor: pointer;
		float: left;
		list-style: none;
	}
	#icons span.ui-icon {
		float: left;
		margin: 0 4px;
	}
	.fakewindowcontain .ui-widget-overlay {
		position: absolute;
	}
	select {
		width: 200px;
	}
	</style>

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
   <li><a href="/project/TeacherProfile/teacherprofile.jsp?id=<%= teacherid%>">Visit Profile</a></li>
   <li><a href="/project/AskQuestion/AskQuestion.jsp?id=<%= teacherid%>">Ask Question</a></li>
   
</ul>
</div>
<h1 face = "">Welcome to Discussion!</h1>
<!-- Accordion -->
<h2 class="demoHeaders">Question Answer list</h2>
<div id="accordion">
    <%
    
	String question = "";
	String answer= "";
  	int id = 0;
  	String name = "";
   /*try
    {
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/MainDatabase", "root", "satyam08081994");
    		Statement st1 = con1.createStatement();
    		ResultSet res = st1.executeQuery("select * from Teacher where t_id ='"+teacherid+"';");

    		while(res.next())
    		{
    				name = res.getString("t_name");
    				%> 

							<h1>Discussion Page of <%= name%>!</h1>

    				<%

    		}
	}catch(Exception e)
	{
	 System.out.println(e);
	}*/
    
 try{
    	
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MainDatabase", "root", "satyam08081994");
    Statement st = con.createStatement();
    
    ResultSet res_after = st.executeQuery("select ques_text,ans_text from Answer , Question where t_id = '"+teacherid+"' and Question.ques_id = Answer.ques_id ;"); 
    
	
    while(res_after.next())
    {
       
    	question = res_after.getString(1);
		answer = res_after.getString(2); 
		
   %>
   	
		
	


	<h3><%=question %></h3>
	<div><%= answer %></div>
	



    	
	<%
	}
    
    con.close();
    st.close();
    
    }catch(Exception e){

        System.out.println(e);
    
    }
    
    %>
    </div>
 <script>
$( "#accordion" ).accordion();
</script>

