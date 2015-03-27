<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
   
    <head>
    <script src="/pop/jquery/external/jquery/jquery.js"></script>
	<script src="/pop/jquery/jquery-ui.js"></script>
	<meta charset="utf-8">
	<title>jQuery UI Example Page</title>
	<link href="/pop/jquery/jquery-ui.css" rel="stylesheet">
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
</head>
<h1>Welcome to jQuery UI!</h1>
<!-- Accordion -->
<h2 class="demoHeaders">Accordion</h2>
<div id="accordion">
    <%
    
	String question = "";
	String answer= "";
  	int id = 0;
    
    
    try{
    	
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/Maindatabase", "root", "satyam08081994");
    Statement st = con.createStatement();
    
    ResultSet res_after = st.executeQuery("select ques_text,ans_text from Answer , Question where Question.ques_id = Answer.ques_id ;"); 
    
	
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
    


    
