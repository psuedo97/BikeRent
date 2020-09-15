<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BikeForm.aspx.cs" Inherits="BikeRent.BikeForm" %>

<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Oleo+Script:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">


    <title>Bike Form</title>
    <style>
        *, *::before, *::after {
    box-sizing: border-box;
    margin: 0;
  }
  body {
    min-height: 600px;
    height: 114vh;
    margin: 0;
    background: url("https://content.web-repository.com/s/48556210809167881/uploads/Backgrounds/gradient_warm_gif_background-0967584.gif");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    color: #fff;
    font-family: 'Nunito', serif;
  }
  nav{
     background-image: url("https://rrrabbitblog.com/wp-content/uploads/2017/09/Plastic-waves-podcast.gif");
     background-position: center;
  }
  .FormHeader {
    position: absolute;
    top: 65%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 400px;
    height: 620px;
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 7px 30px rgba(62, 9, 11, .3);
  }
  .cover-img .cover-inner {
    background-image: url("https://i.pinimg.com/originals/84/d8/7e/84d87eb7e536135161c55887d878d44b.gif");
    height: 190px;
    background-size: cover;
    background-position: 10% 20%;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    position: relative;
  }
  .cover-img .cover-inner::after {
    background: rgba(0, 0, 0, 0.1);
    content: '';
    top: 0;
    left: 0;
    position: absolute;
    width: 100%;
    height: 100%;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
  }
  .cover-img h3 {
    font-family: 'Oleo Script', cursive;
    color:hsl(51, 100%, 54%);
    text-shadow: 4px 4px 0px rgba(0,0,0,0.1);
    position: relative;
    text-align: center;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-transform: uppercase;
    font-size: 2.8rem;
    z-index: 10;
    font-weight: 700;
  }
  .content {
    
    font-family: 'Lobster', cursive;
    text-shadow: 0.5px 0.5px 0px rgba(0,0,0,0.2);
    padding: 20px 40px;
    color: #000000;
  }
  .content form {
    text-align: left;
    display: block;
    justify-content: space-between;
    margin-bottom: 15px;
    padding: 0 5px 0 5px;
  }
  .content form > * {
    
    height: 35px;
  }
  .content label{
    font-family: 'Merriweather', serif;
    font-size: 25px ;
    text-align: center;
    margin-top: 3px;
    margin-bottom: 7px;
  }
  .content input[type='text'] {
    padding: 0 2px;
    text-transform: capitalize;
    font-weight: 700;
    font-size: 1.45rem;
    outline: none;
    
  }
  .content input[type="file"]{
    padding-top: 2px;
    cursor: pointer;
  }
  
  .content #btnApply_ai{
    height: 3rem;
  }
  
    </style>
  </head>
  <body>
    
    <header>
        <nav class="navbar navbar-expand-md lavbar-light bg-light shadow-sm p-3 bg-white rounded" >
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
          <ul class=" nav nav-pills justify-content-center" style="color:black;">
            <li class="nav-item active">
              <a class="nav-link active" href="#">Bike Form<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="ShowData.aspx" style="color:black;">Data Entries</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    </header>
    <div class="FormHeader">
      <div class="cover-img">
        <div class="cover-inner">
          <h3>Fill the form</h3>
        </div>
      </div>
      <div class="content">
        <form class="add" runat="server">

            <label for="brand">Bike Brand</label><br>
            <input type="text" id="brand" name="brand" size="22" runat="server" required><br>
            <label for="name">Bike Name</label><br>
            <input type="text" id="name" name="name" size="22" runat="server" required><br>
            <label for="rent">Bike Rent/Day</label><br>
            <input type="text" id="rent" name="rent" size="22" runat="server" required><br>
            <label for="img">Bike Image<br></label>
            <input type="file" id="myfile" name="myfile" accept=".png, .jpg, .jpeg" runat="server" class="text-danger" multiple required><br><br>
            <%--<button class="btn btn-primary btn-lg btn-block" data-toggle="button" aria-pressed="true" onclick="btnSaveClick" runat="server">Submit</button>--%>
            <asp:Button ID="btnApply_ai" runat="server" Text="Submit" OnClick="btnSaveClick" CssClass="btn btn-primary btn-lg btn-block" />
           
            <br>
        </form>
        
      </div>
    </div>

    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            $('.aspNetHidden').hide();
        });
    </script>
    </body>
</html>