<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffaccountcreate.aspx.cs" Inherits="QAProject.staffaccountcreate" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<link rel="stylesheet" href="staffaccountcreate.css" />
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
          <a class="nav-link" href="https://localhost:44302/homenew.aspx">Log out</a>
        </li>
       
      </ul>
      
    </div>
  </div>
</nav>
    <div class="container">
        <h1>Staff accounts</h1>
    <div class="buttons">
        <h2>Select type</h2>
        <a href="https://localhost:44302/captainaccountcreat.aspx" class="btn btn-secondary">Captain</a><br /><br />
         <a href="https://localhost:44302/staffaccountcreate.aspx" class="btn btn-secondary">Staff</a><br /><br />
         <a href="https://localhost:44302/insertposter.aspx" class="btn btn-secondary">Upload Poster</a><br /><br />
         <a href="https://localhost:44302/garbagecollectingsopt.aspx" class="btn btn-secondary">Garbage collecting spot</a><br /><br />
    </div>
   <div class="insert border border-dark w-25">
       <center><h4>Insert Data</h4></center><br />
    <form id="form1" runat="server">
        <div class="mb-3">
                
               <div class="label"><asp:Label ID="Label1" runat="server" Text="Staff ID"></asp:Label></div> 
                 <asp:TextBox ID="ID" runat="server" Width="283px"></asp:TextBox>
            </div>
            <div class="mb-3">
                <div class="label1"><asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></div> 
                 <asp:TextBox ID="name" runat="server" Width="283px"></asp:TextBox>
            </div>
            <div class="mb-3">
               <div class="label2"><asp:Label ID="Label3" runat="server" Text="NIC Number"></asp:Label></div> 
                 <asp:TextBox ID="nic" runat="server" Width="283px"></asp:TextBox>
            </div>
             <div class="mb-3">
               <div class="label3"><asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></div> 
                 <asp:TextBox ID="address" runat="server" Width="283px"></asp:TextBox>
            </div>
           <div class="mb-3">
               <div class="label4"><asp:Label ID="Label5" runat="server" Text="Email"></asp:Label></div> 
                 <asp:TextBox ID="email" runat="server" Width="283px"></asp:TextBox>
            </div>
            <center><table>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Lime" OnClick="Button1_Click" />
                        
                    </td>
                    <td></td>
                    <td>
                         <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="Lime" OnClick="Button2_Click" />
                    </td>
                </tr>
                </table></center>
        <div class="update border border-dark w-100">
       <center><h4>update Data</h4></center><br />
    
        <div class="mb-3">
                
               <div class="label"><asp:Label ID="Label6" runat="server" Text="Staff ID"></asp:Label></div> 
                 <asp:TextBox ID="updateID" runat="server" Width="283px"></asp:TextBox>
            </div>
            <div class="mb-3">
                <div class="label1"><asp:Label ID="Label7" runat="server" Text="Name"></asp:Label></div> 
                 <asp:TextBox ID="updatename" runat="server" Width="283px"></asp:TextBox>
            </div>
            <div class="mb-3">
               <div class="label2"><asp:Label ID="Label8" runat="server" Text="NIC Number"></asp:Label></div> 
                 <asp:TextBox ID="updatenic" runat="server" Width="283px"></asp:TextBox>
            </div>
             <div class="mb-3">
               <div class="label3"><asp:Label ID="Label9" runat="server" Text="Address"></asp:Label></div> 
                 <asp:TextBox ID="updateaddress" runat="server" Width="283px"></asp:TextBox>
            </div>
           <div class="mb-3">
               <div class="label4"><asp:Label ID="Label10" runat="server" Text="Email"></asp:Label></div> 
                 <asp:TextBox ID="updateemail" runat="server" Width="283px"></asp:TextBox>
            </div>
            <center><table>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Update" BackColor="Lime" OnClick="Button3_Click" />
                        
                    </td>
                    <td></td>
                    <td>
                         <asp:Button ID="Button4" runat="server" Text="Cancel" BackColor="Lime" OnClick="Button4_Click" />
                    </td>
                </tr>
                </table></center>

    
    </div>
    <div class="delete border border-dark w-100">
       <center><h4>Delete Data</h4></center><br />
    
        <div class="mb-3">
                
               <div class="label"><asp:Label ID="Label11" runat="server" Text="Staff ID"></asp:Label></div> 
                 <asp:TextBox ID="deleteID" runat="server" Width="283px"></asp:TextBox>
            </div>
            <div class="mb-3">
                <div class="label1"><asp:Label ID="Label12" runat="server" Text="Name"></asp:Label></div> 
                 <asp:TextBox ID="TextBox7" runat="server" Width="283px"></asp:TextBox>
            </div>
            <div class="mb-3">
               <div class="label2"><asp:Label ID="Label13" runat="server" Text="NIC Number"></asp:Label></div> 
                 <asp:TextBox ID="TextBox8" runat="server" Width="283px"></asp:TextBox>
            </div>
             <div class="mb-3">
               <div class="label3"><asp:Label ID="Label14" runat="server" Text="Address"></asp:Label></div> 
                 <asp:TextBox ID="TextBox9" runat="server" Width="283px"></asp:TextBox>
            </div>
           <div class="mb-3">
               <div class="label4"><asp:Label ID="Label15" runat="server" Text="Email"></asp:Label></div> 
                 <asp:TextBox ID="TextBox10" runat="server" Width="283px"></asp:TextBox>
            </div>
            <center><table>
                <tr>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Delete" BackColor="Lime" OnClick="Button5_Click" />
                        
                    </td>
                    <td></td>
                    <td>
                         <asp:Button ID="Button6" runat="server" Text="Cancel" BackColor="Lime" />
                    </td>
                </tr>
                </table></center>

    
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
