<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="collectingspot.aspx.cs" Inherits="QAProject.collectingspot" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="collectingspot.css" />
    <title></title>
</head>
<body>
      <nav class="navbar navbar-light bg-light">
         <h1 class="text-success rounded float-start">COLOMBO</h1>
         <img class="rounded mx-auto d-block" src="logo.png" />
        <h1 class="text-success rounded float-end">MUNICIPAL COUNCIL</h1>
        
     
  <div class="container">
     
  </div>
</nav>
     
  <nav class="green navbar navbar-expand-lg navbar-light bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="https://localhost:44302/homenew.aspx">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#aboutus">About us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="#contactus">Contact us</a>
        </li>

          <li class="nav-item">
          <a class="nav-link " href="https://localhost:44302/collectingspot.aspx" style="color:white">Garbage collecting spot</a>
        </li>

        <li class="nav-item dropdown float-end">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Login/Register
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="https://localhost:44302/login.aspx">GTF Member</a></li>
            <li><a class="dropdown-item" href="https://localhost:44302/stafflogin.aspx">Staff</a></li>
            
          </ul>
        </li>
       
      </ul>
      
    </div>
  </div>
</nav>
    
    <form id="form1" runat="server">
      <div class="card-columns" id="dataContainer" runat="server">
        <asp:Repeater ID="repeater" runat="server" OnItemCommand="repeater_ItemCommand">
            <ItemTemplate>
                <div class="card">
                    <img src='<%# Eval("Image") %>' class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("Title") %></h5>
                        <p class="card-text"><%# Eval("Location") %></p>
                        
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>    

    </form>
    
<br /><br /><br /><br />
   


 <footer>
   
    <div class="feedback d-flex justify-content-center ">
         <h4 >Feedback</h4>
        <img src="fb.png" style="width:25px;border-radius:20px;margin:0px 10px" />
        <img src="in.jpg" style="width:20px;border-radius:20px;margin:0px 10px"/>
        
       
     </div>
                     <center><p style="color:white">Privacy policy &nbsp; &nbsp; &nbsp; &nbsp; Terms and conditions</p></center>
                <center><p style="color:white">&copy;2023 Garbage |Site map|Enviromental Surchagers. </p></center>

                  
      
     

         
               

 </footer>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


</body>
</html>
