<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forside.aspx.cs" Inherits="_4thHandIn.Forside" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<style>

    .movie1{
            margin: 0px -60px 0px -40px;


    }

    .salt{
        margin-right: 218px;
        font-size: x-large;
    }
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


 .pictureimg{

     width:190px;

}

 @media only screen 
and (min-device-width : 768px) 
and (max-device-width : 1024px)
and (-webkit-min-device-pixel-ratio: 2){

          .forsidepicture{
        
            min-width: 760px;
    height: auto;
    left: 0px;

     }
  #TextBoxInput{
          margin-left: -50px;
  }

  #ButtonFindMovie{
          margin-left: 49px;

  }

  .frontpageimage{
      max-height:700px;
  }
 }

 @media (min-width: 320px) and (max-width: 480px) {
  
     .forsidepicture{
        
           min-width: 400px;
  height: auto;
  margin-top: 57px;

     }
  #TextBoxInput{
     margin-left: -74px;
    max-width: 180px;
  }

  #ButtonFindMovie{
      margin-left:-133px;

  }
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
  background-color: #efefef;
  text-align: center;
color:white;
}

.footerimage123{
   width: 150px;
   }

.forsidepicture{
    position:absolute;
    top:20%;
    display:block;
    margin-left:auto;
    margin-right:auto;
    width:60%;

}

.baggrundsbillede{
    display:block;
    position:relative;
    margin-left:auto;
    margin-right:auto;
    max-width:100%;
        top: 10px;
        left: 0px;
    }

.container{
    position:relative;
    text-align:center;
}



.frontpageimage{

    background: url(https://i.postimg.cc/TPcnDRjp/movieposter-1.jpg);
    height: 100%;
    width: 100%;
    left: 0px;
    padding: 180px;
    z-index:-1;
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

    <p>
    <br />
    </p>

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
                    <li><a href="Underside.aspx" style="color:#fff;">Movies</a></li>
                    <li><a href="#detail" style="color:#fff;">TV-Series</a></li>
                    <li><a href="CrudXML.aspx" style="color:#fff;">Admin</a></li>
                </ul>
            </div>
        </div>
    </div>



    <form id="form1" runat="server">


       <div class="frontpageimage">
           <br />
           <br />
           <br />
           <br />
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
           <br />
           <br />
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxInput" runat="server" ForeColor="#FF99CC" OnTextChanged="TextBox_TextChanged" Width="498px"></asp:TextBox>
                <br />
           <br />
           <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonFindMovie" runat="server" Text="Find Movie " PostBackUrl="~/Underside.aspx" Width="293px" BackColor="Red" BorderColor="Red" Font-Bold="True" ForeColor="White" Height="37px"/>
                </div>



    <div class:"container">
        <div class="row">    
   <div class="col-md-offset-2">         
    <img class="forsidepicture" src="Logo.png" />
    </div>
            <div>
            <br />
                </div>
          </div>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />


      
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
         
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
          
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <br />
        <div class="container">
            <div class="row">
        <div class="col-xs-12 col-lg-3">
            <br />
            <br />
       <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Action"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" class="btn btn-secondary dropdown-toggle"  runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="MovieName" DataValueField="MovieName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="250px">
        </asp:DropDownList>
            <br />
            <br />
            </div>

        <div class="col-xs-12 col-lg-3">
            <br />
            <br />
      <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Animation"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" class="btn btn-secondary dropdown-toggle" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="MovieName" DataValueField="MovieName" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="250px">
        </asp:DropDownList>
            <br />
            <br />
            </div>

        <div class="col-xs-12 col-lg-3">
            <br />
            <br />
        <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Thriller"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" class="btn btn-secondary dropdown-toggle" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="MovieName" DataValueField="MovieName" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="250px">
        </asp:DropDownList>
            <br />
            <br />
            </div>

        <div class="col-xs-12 col-lg-3">
            <br />
            <br />
       <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Sciene Fiction"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" class="btn btn-secondary dropdown-toggle" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="MovieName" DataValueField="MovieName" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="250px">
        </asp:DropDownList>
            <br />
            <br />
        </div>
                </div>
            </div>

            <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MovieOmdbConnectionString %>" SelectCommand="SELECT [MovieName] FROM [MovieTable] WHERE ([Genre] = @Genre)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Sciene fiction" Name="Genre" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MovieOmdbConnectionString %>" SelectCommand="SELECT [MovieName] FROM [MovieTable] WHERE ([Genre] = @Genre)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Thriller" Name="Genre" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MovieOmdbConnectionString %>" SelectCommand="SELECT [MovieName] FROM [MovieTable] WHERE ([Genre] = @Genre)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Animation" Name="Genre" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MovieOmdbConnectionString %>" SelectCommand="SELECT [MovieName] FROM [MovieTable] WHERE ([Genre] = @Genre)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Action" Name="Genre" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="LabelMable" runat="server" Text="TOPLISTE" Font-Size="X-Large" ForeColor="White"></asp:Label>
&nbsp;<br />
            <br />
      <div class="container">
          <div class="row">
              <div class="movie1">
        <div class="col-xs-12 col-lg-3 movie">
            <asp:Image ID="ImagePoster1" runat="server" Width="260px"  />
            <h2>
         <asp:Label ID="Label1Poster" Class="salt" runat="server" Text="Label" ForeColor="White"></asp:Label>
            </h2>
            <p>
         <asp:Label ID="LabelPoster1" Class="salt" runat="server" Text="Label" ForeColor="White"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button1" class="btn btn-danger" runat="server" OnClick="Button1_Click" Text="Button" />
            </p>
            </div>
        <div class=" col-xs-12 col-lg-3  movie">
            <asp:Image ID="ImagePoster2" runat="server" Width="260px"  />
            <h2>
       <asp:Label ID="Label2Poster" Class="salt" runat="server" Text="Label" ForeColor="White"></asp:Label>
            </h2>
            <p>
         <asp:Label ID="LabelPoster2" Class="salt" runat="server" Text="Label" ForeColor="White"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" OnClick="Button2_Click" Text="Button" />
            </p>
    </div>
        <div class=" col-xs-12 col-lg-3  movie">
            <asp:Image ID="ImagePoster3" runat="server" Width="260px"  />
            <h2>
       <asp:Label ID="Label3Poster" Class="salt" runat="server" Text="Label" style="text-align: left" ForeColor="White"></asp:Label>
            </h2>
            <p>
         <asp:Label ID="LabelPoster3" Class="salt" runat="server" Text="Label" ForeColor="White"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button3" CssClass="btn btn-danger" runat="server" OnClick="Button3_Click" Text="Button" />
            </p>
           </div>
        <div class=" col-xs-12 col-lg-3  movie">
        <asp:Image ID="ImagePoster4" runat="server" Width="260px" />
            <h2>
      <asp:Label ID="Label4Poster" Class="salt" runat="server" Text="Label" ForeColor="White"></asp:Label>
            </h2>
            <p>
         <asp:Label ID="LabelPoster4" Class="salt" runat="server" Text="Label" ForeColor="White"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button4" CssClass="btn btn-danger" runat="server" OnClick="Button4_Click" Text="Button" />
            </p>
           </div>
            </div>
          </div>
          </div>

       
            <br />
            <br />
            &nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;
            &nbsp;<br />
        <br />
&nbsp;
        <br />
&nbsp;
            <asp:Label ID="LabelJoke" runat="server" Text="Chuck Norris Joke?" ForeColor="White"></asp:Label>
            <br />
        <br />
            &nbsp;&nbsp;<asp:Button ID="ButtonJoke" class="btn btn-danger" runat="server" OnClick="ButtonJoke_Click" Text="Get me the joke" />
&nbsp;<br />
            <br />
            &nbsp;&nbsp;
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/MyCommercial.xml" />
            
            &nbsp;<br />
        
    </form>
    <div style="background-color:#191919; margin-top:-19px;" class="footer">&nbsp; 4th Hand In - 1.Semester 2018<br /><img class="footerimage123" src="Logo.png"/></div>
             <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
