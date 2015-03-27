<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    	    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%> 
    
<script language="JavaScript" type="text/javascript">
		window.history.forward(1);
</script>
<nav>
<ul>
	<li><a href="/project/index.jsp">Home</a></li>
</ul>
</nav>

    <%
    String qid = request.getParameter("qid");
    //int temp_id = 0;
    //temp_id = Integer.parseInt(qid);
    
    
    String a_text = request.getParameter("anstext");
    
    //out.println(""+qid+"----->>"+a_text);
    		
    		String data = "";
    		String tid = "";
    	    int id = 0;
    	    
    	    
    	    
    	    try{
    	    	
    	    
    	    Class.forName("com.mysql.jdbc.Driver");
    	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MainDatabase", "root", "satyam08081994");
    	    Statement st = con.createStatement();
    	    //ResultSet res_after = st.executeQuery(""); 
    	   	st.executeUpdate("insert into Answer (ques_id,ans_text) values ('"+qid+"','"+a_text+"')");
    	   	
    	   
    	   	%>
    	   	
    	   	
    	   	<H1>Answer has been added successfully!</H1>
    	   	
    	   	<%
    			
    		
    			
    			
    	
    	    
    	    con.close();
    	    st.close();
    	    
    	    }catch(Exception e){

    	        System.out.println(e);
    	    
    	    }
    	    
    	    %>
    	    


    	    

    
    
    
    
    
    
    
    
    
    
