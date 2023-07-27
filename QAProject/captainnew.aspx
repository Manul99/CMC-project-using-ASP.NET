<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="captainnew.aspx.cs" Inherits="QAProject.captainnew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<link rel="stylesheet" href="captain.css" />
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB1NVtKA-n1d_BM5rTw_IJIW-bNC89KS4Q&callback=initMap" async defer></script>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
    <form id="form1" runat="server">
        <div class="container">
        
    <center><h1 class="heading">Hello!! Green Captain</h1></center>
    <h3 class="heading2">Check new reported in incidents</h3>
        <div class="container1">
    <div class="card-columns" id="dataContainer" runat="server">
        <asp:Repeater ID="repeater" runat="server" OnItemCommand="repeater_ItemCommand">
            <ItemTemplate>
                <div class="card">
                    <img src='<%# Eval("ImagePath") %>' class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("Location") %></h5>
                        <p class="card-text"><%# Eval("Explanation") %></p>
                        <div class="btn-group" role="group">
                            <button onclick="approveItem(<%# Container.ItemIndex %>)" class="btn btn-success">Approve</button>
                            <button onclick="rejectItem(<%# Container.ItemIndex %>)" class="btn btn-warning">Reject</button>
                            <button onclick="sendToEmergency(<%# Container.ItemIndex %>)" class="btn btn-danger">Emergency</button>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>        
</div>
    
        </div>
        <br /><br /><br /><br /><br />
     <div class="d-flex justify-content-end">
 <div id="map" style="height: 800px;" class="w-25"></div>
   </div> 
    </form>

    
      <script>
          var map;

          function initMap() {
              map = new google.maps.Map(document.getElementById('map'), {
                  center: { lat: 0, lng: 0 },
                  zoom: 2
              });

              // Fetch garbage locations from the server
              $.ajax({
                  url: '/GetGarbageLocations?location=' + location,
                  type: 'GET',
                  success: function (garbageLocations) {
                      // Add markers for garbage locations
                      for (var i = 0; i < garbageLocations.length; i++) {
                          var marker = new google.maps.Marker({
                              position: garbageLocations[i],
                              map: map
                          });
                      }
                  }
              });
          }
      </script>


  <script>
      function approveItem(index) {
          // Get the item data based on the index
          var itemData = dataItems[index];

          // Redirect to the garbagecollectors.aspx page and pass the item data as parameters
          window.location.href = "garbagecollectors.aspx?itemId=" + itemData.Id;
      }

      function rejectItem(index) {
          // Get the item data based on the index
          var itemData = dataItems[index];

          // Remove the item from the DOM
          var itemElement = document.getElementById("dataContainer").children[index];
          itemElement.remove();
      }

      function sendToEmergency(index) {
          // Get the item data based on the index
          var itemData = dataItems[index];

          // Redirect to the garbagecollectors.aspx page and pass the item data as parameters
          window.location.href = "garbagecollectors.aspx?itemId=" + itemData.Id + "&emergency=true";
      }

  </script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>
