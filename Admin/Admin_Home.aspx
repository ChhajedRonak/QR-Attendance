<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="App_Themes/font-awesome.min.css" rel="stylesheet" />
   <link rel="stylesheet" href="./W3.CSS Template_files/w3.css"/>
    
<link rel="stylesheet" href="./W3.CSS Template_files/css"/>
    <link href="App_Themes/w3.css" rel="stylesheet" />
<link rel="stylesheet" href="./W3.CSS Template_files/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="w3-black" data-gr-c-s-loaded="true">
    
<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
  <!-- Avatar image in top left corner -->
  
  <img src="images/darts.jpg" style="width:100%"/>
  <a href="Admin_Home.aspx" class="w3-bar-item w3-button w3-padding-large w3-black">
     <span  class="glyphicon glyphicon-home fa-4x" ></span>
    <p>HOME</p>
  </a>
  <a href="Add.aspx" class="w3-bar-item w3-button w3-padding-large w3-black">
       <span  class="glyphicon glyphicon-book fa-4x" ></span>
    <p>COURSE AND SUBJECT</p>
  </a>
  <a href="Faculty.aspx" class="w3-bar-item w3-button w3-padding-large w3-black">
    <span  class="glyphicon glyphicon-user fa-4x" ></span>
    <p>FACULTY</p>
  </a>
  <a href="Search.aspx" class="w3-bar-item w3-button w3-padding-large w3-black">
    <span  class="glyphicon glyphicon-search fa-4x" ></span>
    <p>SEARCH</p>
  </a>
</nav>

    <div class="w3-padding-large" id="main">
  <!-- Header/Home -->
  <header class="w3-container w3-padding-32 w3-center w3-black" id="home">

    <h1 class="w3-jumbo"><span class="w3-hide-small">Welcome</span> Admin.</h1>
    
  </header>

          
  
    <!-- Footer -->
  <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge">
    
    <p class="w3-medium" style="width : 80%; margin:auto; bottom:0 ; position:absolute; text-align:center;">&copy; Copyright. Darts .inc </p>
  <!-- End footer -->
  </footer>

<!-- END PAGE CONTENT -->
</div>


    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
