<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search page</title>
<script language="JavaScript" type="text/javascript">
		window.history.forward(1);
</script>
</head>
<link rel="stylesheet" href="some3.css" />
    <script src="some1.js"></script>
    <script src="some2.js"></script>
    <!-- Source our javascript file with the jQUERY code -->
    <script src="script.js"></script>
    <link rel="stylesheet" href="runnable.css" />
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
   <li class='active'><a href="/project/Login/login.html">Login</a></li>
   <li><a href="/project/about.html">ABOUT US</a></li>
</ul>
</div>

<body>

<form action="search.jsp" method="get">

<div class="header"><marquee> Pune Institute of Computer Technology</marquee></div>
<div class="y"><i>  Mentor Talks</i>
</div>


<p class="text" align="center"><i>Please enter the domain name:</i>
</p>

<p align="center">
<!-- <input class="textbox" type="text" name ="domain" > --> 
<label for="fruits"><input class="textbox" type="text" name="fruits" id="fruits" /></label>
<br></br>
<input type="submit" id="search" value = "Search" >
</p>


 </form>


</body>
<style> 
html {height=100%}
    input[type=submit] 
    {
    width: 10em;  height: 3em;
    
    }
  .textbox { 
    border: 1px solid #c4c4c4; 
    height: 25px; 
    width: 500px; 
    font-size: 13px; 
    padding: 4px 4px 4px 4px; 
    border-radius: 4px; 
    -moz-border-radius: 4px; 
    -webkit-border-radius: 4px; 
    box-shadow: 0px 0px 8px #d9d9d9; 
    -moz-box-shadow: 0px 0px 8px #d9d9d9; 
    -webkit-box-shadow: 0px 0px 8px #d9d9d9; 
} 
.y
{
font-size:24px;
color:#ffffff;
font-style:italic;
padding:40px;
}
 .text{
 color:#ffffff;
 font-size:20px;
 }
.textbox:focus { 
    outline: none; 
    border: 1px solid #7bc1f7; 
    box-shadow: 0px 0px 8px #7bc1f7; 
    -moz-box-shadow: 0px 0px 8px #7bc1f7; 
    -webkit-box-shadow: 0px 0px 8px #7bc1f7; 
} 
body
{
background-color:#ffffff;

background-image: url("2.jpg");
background-repeat:no-repeat;
background-position:0px 0px;
background-size:1370px 700px;




}
.header
{
letter-spacing:2px;
padding:30px;
color:#ffffff;
font-family:verdana;
font-size:40px;
font:bold;


}

 </style> 
</html>
