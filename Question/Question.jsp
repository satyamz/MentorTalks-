<%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<script language="JavaScript" type="text/javascript">
		window.history.forward(1);
</script>
<body>
<%
    String ch = request.getParameter("Question").toString();
	String ID = request.getParameter("id_no");

	//System.out.println("ID is:"+_id);
    String data ="";
    int teacherid = Integer.parseInt(ID);
    String tid = "";
    int id = 0;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MainDatabase", "root", "satyam08081994");
        Statement st = con.createStatement();
        ResultSet res_before = st.executeQuery("select * from Question where t_id = '"+teacherid+"' ;"); 
        st.executeUpdate("insert into Question (ques_text,t_id) values ('"+ch+"','"+teacherid+"');");
        ResultSet res_after = st.executeQuery("select * from Question where t_id = '"+teacherid+"';"); 
		
        
       
      %>
     
     <a href="/project/index.jsp">Home</a>
      
      <% 
       while(res_after.next())
        {
            data = "" + res_after.getString("ques_text");
    		tid = res_after.getString("t_id"); 
    		id = Integer.parseInt(tid);
         	//System.out.println("Name:" + data);
       %>
       	
  
  		<h2><%= data %></h2>
  
        	
		<%
		}
      con.close();
      st.close();
      session.invalidate();
   //   response.sendRedirect("/Mentor_talks/index1.jsp");
        	
       }
    catch(Exception e) 
    {
        System.out.println(e);
    }
    %>


