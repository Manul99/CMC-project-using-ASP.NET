<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertposter.aspx.cs" Inherits="QAProject.insertposter" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<link rel="stylesheet" href="insertposter.css" />
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
          <a class="nav-link active" aria-current="page" href="#">About us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact us</a>
        </li>

       <li class="nav-item">
          <a class="nav-link" href="https://localhost:44302/homenew.aspx">Log out</a>
        </li>
       
      </ul>
      
    </div>
  </div>
</nav>
    <div class="container">
        <h1>Upload Poster</h1>
    <div class="buttons">
        <h2>Select type</h2>
        <a href="https://localhost:44302/captainaccountcreat.aspx" class="btn btn-secondary">Captain</a><br /><br />
         <a href="https://localhost:44302/staffaccountcreate.aspx" class="btn btn-secondary">Staff</a><br /><br />
         <a href="https://localhost:44302/insertposter.aspx" class="btn btn-secondary">Upload Poster</a><br /><br />
         <a href="https://localhost:44302/garbagecollectingsopt.aspx" class="btn btn-secondary">Garbage collecting spot</a><br /><br />
    </div>
   <div class="poster border border-dark w-50">
      
    <form id="form1" runat="server">
        <br /><br />
        <div class="content">
         <div class="mb-3">
               <div class="label"><asp:Label ID="Label6" runat="server" Text="Poster ID"></asp:Label></div> 
                 <asp:TextBox ID="capid" runat="server" Width="283px"></asp:TextBox>
            </div>
         <div class="mb-3">
             <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
        </div>
        <center><table class="tble">
                <tr>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Upload" BackColor="Lime" OnClick="Button5_Click" />
                        
                    </td>
                    <td></td>
                    <td>
                         <asp:Button ID="Button6" runat="server" Text="Cancel" BackColor="Lime" />
                    </td>
                </tr>
                </table></center>
    </form>
    </div>

    
    </div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
