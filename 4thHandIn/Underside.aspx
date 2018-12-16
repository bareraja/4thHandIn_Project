<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Underside.aspx.cs" Inherits="_4thHandIn.Underside" %>

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
  right: 0;
  bottom: 0;
  left: 0;
  padding: 2rem;
  background-color: #fff;
  text-align: center;
  color:white;

}

.footerimage123{
   width: 150px;
   }


@media only screen 
    and (device-width : 375px) 
    and (device-height : 812px) 
    and (-webkit-device-pixel-ratio : 3) {

        .Labels
        {

            margin: 0px 0px 10px -29px;
        }


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

<div class="navbar navbar-inverse navbar-fixed-top" style="background-color:#191919;">
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
                    <li><a href="#detail1" style="color:#fff;">Movies</a></li>
                    <li><a href="#detail" style="color:#fff;">TV-Series</a></li>
                    <li><a href="CrudXML.aspx" style="color:#fff;">Admin</a></li>
                </ul>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" Class="btn btn-danger" runat="server" OnClick="Button1_Click" Text="Back" />
            &nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxInput" runat="server" Width="253px" ForeColor="Black" OnTextChanged="TextBoxInput_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Button ID="ButtonFindMovie" Class="btn btn-danger" runat="server" OnClick="ButtonFindMovie_Click1" Text="Find Movie" Style="margin-left: 26px;"  />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImagePoster" runat="server" />
        &nbsp;
            <br />
            <br />
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <asp:Label ID="LabelTitle"  runat="server" ForeColor="White" style="font-size: x-large"></asp:Label>
            <br />
                </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelYear" runat="server" ForeColor="White" style="font-size: x-large"></asp:Label>
&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelActors" class="Labels" runat="server" Text="Actor" ForeColor="White" style="font-size: large"></asp:Label>
        <br />
&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelAwards" class="Labels" runat="server" Text="Awards" ForeColor="White" style="font-size: large"></asp:Label>
            <br />
            &nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelResult" class="Labels" runat="server" Text="Ratings" ForeColor="White" style="font-size: large"></asp:Label>
               
        
            
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/MyCommercial.xml" Width="100%" />
        </div>
    </form>
           <div style="background-color:#191919;" class="footer">4th Hand In - 1.Semester 2018<br /><img class="footerimage123" src="Logo.png"/></div>
             <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     </body>
</html>