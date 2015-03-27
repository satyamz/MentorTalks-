<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="/project/TeacherProfile/styles.css">
   <script src="/project/jquery/jquery-ui.min.js" type="text/javascript"></script>
   <script src="/project/TeacherProfile/script.js"></script>
  
</head>
<body>

<div id='cssmenu'>
<ul>
   <li class='active'><a href="/project/index.jsp">Home</a></li>
</ul>
</div>


<br><br><br>
<style>
div
{
text-align:center;

    margin-top: 100px;
    margin-bottom: 100px;
    margin-right: 130px;
    margin-left: 50px;

}
body
{
    background-image: url("1.jpg");
}
.a
{
 margin-top: -100px;
    margin-bottom: 100px;
    margin-right: 130px;
    margin-left: 50px;
}
#b {
    width: 30em;  height: 3em;
}
</style>
<body>
<%
		String id = request.getParameter("id"); 
		session.setAttribute("myid", id);
		
//		out.println(""+id);
%>

<html>
<br>

    <head>
           <script src="/project/ckeditor/ckeditor.js"></script>
    </head>
    <body>
        <form action="/project/Question/Question.jsp" method="post" align = "center">
            <textarea name="Question" id="editor1" rows="10" cols="50">
            </textarea>
            <input type="hidden" name="id_no" value="<%= id%>">
            <script>
                // //Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>
            <input type="submit" value="Ask Question" />
        </form>
    </body>
</html>
