<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
    
    <%
    String ID=request.getParameter("ID");
    
    //out.print("My name is "+ID+"... ");
    int var = Integer.parseInt(ID);
    //out.print("My name is "+var+"....");
	String data = "";
	String tid = "";
    int id = 0;
    
    
    
    try{
    	
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MainDatabase", "root", "satyam08081994");
    Statement st = con.createStatement();
    ResultSet res_after = st.executeQuery("select * from Question where ques_id = '"+var+"';"); 
    
	
    while(res_after.next())
    {
        data = "" + res_after.getString("ques_text");
		tid = res_after.getString("ques_id"); 
		id = Integer.parseInt(tid);
   %>
   	
		
		<h2><%= data %></h2>
		
		
		
<html>
    <head>
        <title>A Simple Page with CKEditor</title>
        <!-- Make sure the path to CKEditor is correct. -->
        <script src="/project/ckeditor/ckeditor.js"></script>
    </head>
    <body>
        <form action="addans.jsp" method="post" align = "center">
            <textarea name="anstext" id="editor1" rows="10" cols="10" >
            </textarea>
            <input type="hidden" name="qid" value="<%= tid%>">
            <script>
                // //Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>
            <input type="submit" value="Add Answer" />
        </form>
    </body>
</html>
		
    	
	<%
	}
    
    con.close();
    st.close();
    
    }catch(Exception e){

        System.out.println(e);
    
    }
    
    %>
    


    
