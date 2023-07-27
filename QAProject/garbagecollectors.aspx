<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="garbagecollectors.css" />
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
<br />

<section>
<div class="container">
 <div class="approved">
     <h2 class="text">APPROVED REPORTS</h2>
 </div>
 
<div class="card" style="width: 20rem;">
      <img src="dump.jpg" class="card-img-top" alt="..."/>
      <div class="card-body">
      <h5 class="card-title">65/2 flower road,Piliyandala</h5>
      <p class="card-text">Not good for wildlife, bad smell</p>
            
    </div>
   </div>
  </div>
  
    
    

</section>

  <asp:Repeater ID="repeater" runat="server">
    <ItemTemplate>
        <div class="data-item">
            <img src='<%# Eval("ImagePath") %>' class="card-img-top" alt="..." />
            <div class="card-body">
                <h5 class="card-title"><%# Eval("Location") %></h5>
                <p class="card-text"><%# Eval("Explanation") %></p>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>

<script>
    var itemId = getQueryStringValue("itemId");
    var isEmergency = getQueryStringValue("emergency");

    if (itemId) {
        // Retrieve the item details based on the itemId from the database or any other source
        var itemDetails = retrieveItemDetails(itemId);

        if (itemDetails) {
            // Add the item details to the Repeater control
            var itemHtml = generateItemHtml(itemDetails);
            document.getElementById("repeater").innerHTML += itemHtml;
        }
    }

    if (isEmergency) {
        // Apply emergency styling or highlight the item
        var itemElements = document.getElementsByClassName("data-item");
        if (itemElements.length > 0) {
            itemElements[itemElements.length - 1].classList.add("emergency-item");
        }
    }

    function getQueryStringValue(key) {
        var urlParams = new URLSearchParams(window.location.search);
        return urlParams.get(key);
    }

    function retrieveItemDetails(itemId) {
        // Implement your logic to retrieve item details from the database or any other source
        // Return the item details object
    }

    function generateItemHtml(itemDetails) {
        // Generate the HTML markup for the item based on the item details
        // Return the item HTML markup as a string
    }
</script>
  



  


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


</body>
</html>