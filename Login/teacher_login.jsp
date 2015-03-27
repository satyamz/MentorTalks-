<%@ page import ="java.sql.*" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%
  String Email = request.getParameter("email");
  String pwd = request.getParameter("pwd");
  
  String tid = "";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MainDatabase", "root", "satyam08081994");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from Teacher where t_email='" + Email + "' and t_pwd='" + pwd + "'");
if (rs.next()) {
	
	tid = rs.getString("t_id");
	
	
//session.setAttribute("t_email", Email);


response.sendRedirect("/project/QueAns/teacherqa.jsp?ID="+tid);
     } else {
    out.println("Invalid password <a href='/project/index.jsp'>try again</a>");
}
%>
