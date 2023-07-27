<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertPhoto.aspx.cs" Inherits="QAProject.insertPhoto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<link rel="stylesheet" href="insertPhoto.css" />
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
          <li class="nav-item">
          <a class="nav-link" href="https://localhost:44302/homenew.aspx">Log out</a>
        </li>

      
       
      </ul>
      
    </div>
  </div>
</nav>
    <div class="image">
    <h1 class="heading">Insert the photo</h1>
    <div class="container">
    <form id="form1" runat="server">
        <h4>Enter ID number:&nbsp;<asp:TextBox ID="Id" runat="server"></asp:TextBox></h4>
        
        <div class="container1">
            <div class="container2">
            <asp:FileUpload ID="fileUploadControl" runat="server" /><p style="position:absolute;top:4px;left:250px;font-size:15px">drag and drop image here * Maximum size-20MB</p> 
                <br /><br /><br />
            <h4>Impact</h4>
                <textarea id="explain" cols="60" rows="4" runat="server"></textarea>
                <br /><br /><br />
            <h4>Set the Location:&nbsp;<asp:TextBox ID="location" runat="server" OnTextChanged="location_TextChanged"></asp:TextBox> </h4>
            </div>
            <br /><br /><br />

            <div class="buttons">
            <asp:Button ID="submit" runat="server" Text="Submit" ForeColor="White" BackColor="#009933" BorderStyle="None" OnClick="submit_Click" />
            <asp:Button ID="update" runat="server" Text="Update"  ForeColor="White" BackColor="#009933" BorderStyle="None" OnClick="update_Click1" />
            <asp:Button ID="delete" runat="server" Text="Delete" ForeColor="White" BackColor="#009933" BorderStyle="None" OnClick="delete_Click1"/>
             </div>
        </div>
    </form>
        </div>
    </div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>
