<%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%
    //String ch = request.getParameter("Question").toString();
	//String ID = request.getParameter("i");

	//System.out.println("ID is:"+_id);
    String data ="";
    //int teacherid = Integer.parseInt(ID);
     int teacherid = 100;
     String ans = "";
    String tid = "";
    int id = 0;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MainDatabase", "root", "satyam08081994");
        Statement st = con.createStatement();
        //ResultSet res_before = st.executeQuery("select * from Question where t_id = '"+teacherid+"' ;"); 
       //st.executeUpdate("insert into Question (ques_text,t_id) values ('"+ch+"','"+teacherid+"');");
        ResultSet res_after = st.executeQuery("select * from Question where t_id = '"+teacherid+"';");
        ResultSet ans_extract = st.executeQuery("select ans_text from Answer, Question where Question.ques_id = Answer.ques_id ");
        
		
        
        
      /*ResultSet rs = st.executeQuery("select distinct t_name , t_id from Teacher where t_id in (select t_id from Domain where domain_name = '"+ch+"');");
      ResultSet res  = st.executeQuery("insert into Question (ques_text,t_id)  values(?,?);"); 
	insert into Answer (ans_text) values ("Operating System");
       ResultSet rs = st.executeQuery("insert into Question (ques_text) values ('"+ch+"');");
      ResultSet rs = st.executeQuery("select * from Question where t_id = 100 ;");*/
	//	res_after.first();
        
      %>
     
     <a href="/New_mentor_talks/index.jsp">Home</a>
      
      <% 
       while(res_after.next())
        {
            data = "" + res_after.getString("ques_text");
    		tid = res_after.getString("t_id"); 
    		
    		id = Integer.parseInt(tid);
         	ans = ans_extract.getString("ans_text");
    		//System.out.println("Name:" + data);
       %>
       	
  
  		<h2><%= data %></h2>
  		<p><%= ans %></p>
  
        	
		<%
		}
      //con.close();
      //st.close();
      //session.invalidate();
   //   response.sendRedirect("/Mentor_talks/index1.jsp");
        	
       }
    catch(Exception e) 
    {
        System.out.println(e);
    }
    %>


