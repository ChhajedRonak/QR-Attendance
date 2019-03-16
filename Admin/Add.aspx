<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="App_Themes/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="./W3.CSS Template_files/w3.css" />

    <link rel="stylesheet" href="./W3.CSS Template_files/css" />
    <link href="App_Themes/w3.css" rel="stylesheet" />
    <link href="App_Themes/add.css" rel="stylesheet" />
    <link rel="stylesheet" href="./W3.CSS Template_files/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    
</style>
<body class="w3-black" data-gr-c-s-loaded="true">

    <!-- Icon Bar (Sidebar - hidden on small screens) -->
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
  <!-- Avatar image in top left corner -->
  
  
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
            <h1 class="w3-jumbo"><span class="w3-hide-small">Add Course / Subject</span></h1>
        </header>

        <!--add-->

        <form id="form1" runat="server">
            <table>
                <tr><td colspan="3"><h4>Add Course</h4></td></tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lbCourse" Text="Enter Course: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtCourse" Class="tb1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Add Course" class="button button2" OnClick="Button1_Click" />                    
                    </td>
                </tr>
                <tr><td></td><td></td><td></td></tr>
                <tr><td colspan="3"><h4>Add Subject</h4></td></tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="Label3" Text="Select course: "></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="drpCourse" Class="tb1"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="Label1" Text="Enter Sem: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtSem" Class="tb1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="Label2" Text="Enter Subject: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtSubject" Class="tb1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Add Subject" class="button button2" OnClick="Button3_Click" />

                    </td>
                </tr>
            
                
            </table>

        </form>
</body>
</html>
