<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="QAProject.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="stafflogin.css" />
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
          <a class="nav-link active" aria-current="page" href="https://localhost:44302/homenew.aspx">About us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://localhost:44302/homenew.aspx">Contact us</a>
        </li>

          <li class="nav-item">
          <a class="nav-link " href="https://localhost:44302/collectingspot.aspx">Garbage collecting spot</a>
        </li>

        <li class="nav-item dropdown float-end">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Login/Register
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="https://localhost:44302/login.aspx">GTF Member</a></li>
            <li><a class="dropdown-item" href="#">Staff</a></li>
            
          </ul>
        </li>
       
      </ul>
      
    </div>
  </div>
</nav>
     <div class="loginbox">   <br /><br /><br /><br />
         <center><h1>Staff login</h1></center>
       
         <br />
    <form id="form1" runat="server">
        <div>
         <center><div class=" name mb-4">
         <b> <label for="exampleFormControlInput1" class="form-label">Username</label></b>
         <input type="text" class="form-control w-50" id="username" placeholder="username" />
        </div></center>
       <center><div class="mb-4">
         <b> <label for="exampleFormControlInput1" class="form-label">Password</label></b>
         <input type="password" class="form-control w-50" id="password" placeholder="*******"/>
         <asp:CheckBox ID="CheckBox1" runat="server" />Remember me
        </div></center>
            
           <center> <button type="submit" class="btn btn-success" onclick="login(event)" value="Login">Login</button></center>
        </div>
    </form>
         <br /><br />
      
         
    </div>

    <script>

        function login(event) {
            event.preventDefault(); // Prevent form submission

            // Get the username and password entered by the user
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            // Perform the login verification
            if (username === "admin" && password === "admin123") {
                // Redirect to the admin page
                window.location.href = "captainaccountcreat.aspx";
            } else if (username === "captain" && password === "captain123") {
                // Redirect to the captain page
                window.location.href = "captainnew.aspx";
            } else if (username === "collectors" && password === "collectors123") {
                // Redirect to the garbage collector page
                window.location.href = "garbagecollectors.aspx";
            } else {
                // Display an error message for incorrect login
                alert("Invalid username or password. Please try again.");
            }
        }

    </script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>
