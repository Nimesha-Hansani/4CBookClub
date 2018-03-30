<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>
<body>
<div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">4C<span class="logo_colour">knowledge</span></a></h1>
           <h2>Meet Your Next Favourite Book</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li ><a href="home.jsp">Home</a></li>
          <li><a href="search.jsp">Search Books</a></li>
          <li class="selected" ><a href="recently.jsp">Recently Uploaded</a></li>
          <li><a href="mostdown.jsp">My Account</a></li>
          <li><a href="home.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    
       <style>
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
    
   
}
</style>
</head>
<body>


<div class="gallery">
  <a target="_blank" href="h11.jpg">
    <img src="h11.jpg" alt="h11.jpg" width="300" height="200">
     
  </a>
  <div class="desc"><h4 style="color:black;"> <b>Steven Pinker</b></h4></div>
</div>
<div class="gallery">
  <a target="_blank" href="h5.jpg">
    <img src="h5.jpg" alt="h5 width="300" height="50">
  </a>
  <div class="desc"><h4 style="color:black;"> <b>The History Of the Universe</b></h4></div>
</div>


<div class="gallery">
  <a target="_blank" href="h4.jpg">
    <img src="h4.jpg" alt="h4.jpg" width="300" height="100">
  </a>
  <div class="desc"><h4 style="color:black;"> <b>Indian Histroy</b></h4></div>
</div>

<div class="gallery">
  <a target="_blank" href="book1.jpg">
    <img src="book1.jpg" alt="book1" width="300" height="100">
  </a>
  <div class="desc"><h4 style="color:black;"> <b>As the Crow Flies</b></h4></div>
</div>
    
    <div class="gallery">
  <a target="_blank" href="h6.jpg">
    <img src="h6.jpg" alt="h6" width="300" height="100">
  </a>
  <div class="desc"><h4 style="color:black;"> <b>Hand kniting</b></h4></div>
</div>

<div class="gallery">
  <a target="_blank" href="h1.jpg">
    <img src="h1.jpg" alt="h1.jpg" width="300" height="100">
  </a>
  <div class="desc"><h4 style="color:black;"> <b>History Of Pakistan Army Aviation</b></h4></div>
</div>

<div class="gallery">
  <a target="_blank" href="h3.jpg">
    <img src="h3.jpg" alt="h3" width="300" height="100">
  </a>
  <div class="desc"><h4 style="color:black;"> <b>Medical Education</b></h4></div>
</div>

<div class="gallery">
  <a target="_blank" href="h2.jpg">
    <img src="h2.jpg" alt="h2" width="300" height="100">
  </a>
  <div class="desc"><h4 style="color:black;"> <b>History Of Arabs</b></h4></div>
 
</div>

   <div class="gallery">
  <a target="_blank" href="h7.jpg">
    <img src="h7.jpg" alt="h7" width="300" height="100">
  </a>
  <div class="desc"><h4 style="color:black;"> <b>Andrew Marr</b></h4></div>
</div>

<div class="gallery">
  <a target="_blank" href="book3.jpg">
    <img src="book3.jpg" alt="book3" width="300" height="100">
  </a>
  <div class="desc"><h4 style="color:black;"> <b>Books to die for</b><h4></div>
</div>
    
    
    <div class="gallery">
  <a target="_blank" href="book2.jpg">
    <img src="book2.jpg" alt="book2.jpg" width="300" height="100">
  </a>
  <div class="desc"><h4 style="color:black;"> <b>Charline Harries</b></h4></div>
</div>
    
</body>
</html>