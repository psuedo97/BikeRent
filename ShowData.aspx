<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowData.aspx.cs" Inherits="BikeRent.ShowData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <title>Data Enteries</title>
    <style>
        nav{
            background-image: url("https://rrrabbitblog.com/wp-content/uploads/2017/09/Plastic-waves-podcast.gif");
            background-position: center;
            color:#000000;
        }
        body{
            min-height:600px;
            text-align:center;
            background: url("https://content.web-repository.com/s/48556210809167881/uploads/Backgrounds/gradient_warm_gif_background-0967584.gif");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            color: #fff;
            font-family: 'Nunito', serif;
        }
        #dvGrid{
            position:absolute;
            left:23%;
            top:30%;
            color:#000000;
            text-align:center;
            background-color:aliceblue;
            

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-md lavbar-light bg-light shadow-sm p-3 bg-white rounded" >
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
          <ul class=" nav nav-pills justify-content-center" style="color:black;">
            <li class="nav-item ">
              <a class="nav-link " href="./BikeForm.aspx" style="color:black;">Bike Form</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link active" href="#" >Data Entries<span class="sr-only">(current)</span></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <h2 style="padding-top:10px;">All the Responses.</h2>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="dvGrid" style=" width: 725px">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" CellPadding="6" AutoGenerateColumns="False" Width="726px" OnRowDataBound="GridView1_RowDataBound">  
                    <Columns>
                        <asp:TemplateField HeaderText="Bike Name" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bike Brand" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblBrand" runat="server" Text='<%# Eval("Brand") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bike Rent" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblRent" runat="server" Text='<%# Eval("Rent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bike Image" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblImage" runat="server" Text='<%# Eval("ImageUrl") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
