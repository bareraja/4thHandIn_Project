<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrudXML.aspx.cs" Inherits="_4thHandIn.CrudXML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <style>

            .collapse ul li {
    list-style: none;
    float: left;
    position: relative;
    margin-left: 25px;
    font-size: 14px;
    line-height: 14px;
    font-weight: 700;
    letter-spacing: .04em;  

}

 a img{

     width:190px;

}


   @media (min-width: 1281px) {
       .pictureimg{

           margin-left:-170px;
       }
   }

      .footer {
  position: fixed;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 2rem;
  background-color: #efefef;
  text-align: center;
  color:white;
}

.footerimage123{
   width: 150px;
   }

       </style>
    <title>Movie</title>
    <link rel="icon" href="16x16.png" type="image" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" media="screen"/>
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"/>
</head>
<body style="background-color:#0f0f0f;">

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a href="#" class="navbar-brand"></a>
                <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navHeaderCollapse">
            <a class="nav navbar-nav navbar-left">
            <img class="pictureimg" src="Logo.png" />
            </a>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Forside.aspx" style="color:#fff;">Forside</a></li>
                    <li><a href="Underside.aspx" style="color:#fff;">Movies</a></li>
                    <li><a href="#detail" style="color:#fff;">TV-Series</a></li>
                    <li><a href="CrudXML.aspx" style="color:#fff;">Admin</a></li>
                </ul>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
        <div style="text-align: left">
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelMessage" runat="server" Text="Message" ForeColor="White"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxWebpage" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="LabelWebpage" runat="server" Text="Webpage" ForeColor="White"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="LabelPhone" runat="server" Text="Phone" ForeColor="White"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxPicture" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="LabelPicture" runat="server" Text="Picture" ForeColor="White"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxCompany" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="LabelCompany" runat="server" Text="Company" ForeColor="White"></asp:Label>
&nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonCreate" runat="server" Text="Create" OnClick="ButtonCreate_Click" />
&nbsp;
            &nbsp;
            <asp:Button ID="ButtonUpdate" runat="server" Text="Update" OnClick="ButtonUpdate_Click" />
&nbsp;
            <asp:Button ID="ButtonDelete" runat="server" Text="Delete" OnClick="ButtonDelete_Click" />
&nbsp;
            <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" />
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Repeater ID="Repeater1" runat="server">

                  <HeaderTemplate>
                    <table border="double" style="color:white; margin:20px;">
                        <tr>
                            <td> Webpage </td> 
                            <td> Phone </td> 
                            <td>  PictureLink</td> 
                            <td> Picture </td> 
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        
                        <td><%# Eval("NavigateUrl") %></td>
                        <td><%# Eval("Impressions") %></td>
                        <td><%# Eval("ImageUrl") %></td>
                        <td><img src="<%# Eval("ImageUrl") %>" alt="Ad" /> </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                    </FooterTemplate>




            </asp:Repeater>
            <br />
            <br />
            
         
            
            <br />
            <br />
            <br />
&nbsp;<p>
            <br />
            <br />
            </p>
        </div>
    </form>
    <div style="background-color:#191919; margin-top:-19px;" class="footer">This footer will always be positioned at the bottom of the page, but <strong>Not fixed.</strong><br /><img class="footerimage123" src="Logo.png"/></div>

         <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
