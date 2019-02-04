<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yeni.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
      <style type="text/css">
        html, body {
             background-image:url('544750.jpg');
          
        }
          .yeniStil1 {
              font-family: "Bahnschrift SemiLight Condensed", 19pt;
              font-size: 24px;
          }
         
          .a {

              margin-left:450px;
          }
      </style>
</head>
<body>
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


    <form id="form1" runat="server">
   <br /><br /><br />
               <div class="panel-group">
   
               
    <div class="panel panel-primary">
      <div class="panel-heading">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" CssClass="yeniStil1" Text="                 Kayıt" Font-Names="Bahnschrift SemiLight Condensed" Font-Size="25pt"></asp:Label>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="15pt" NavigateUrl="~/index.aspx"><--- Logine Dön</asp:HyperLink>
          
        
      <div class="panel-body">
             <div class="a">

            <asp:Label ID="Label1" runat="server" Text="İsim " Font-Size="14pt"></asp:Label>
            <br />
            <asp:TextBox ID="txtAuthor" ah runat="server" class="form-control"  Width="200px" Height="34px" Font-Size="14pt"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAuthor" ErrorMessage="Bu alan boş girilemez." Font-Size="15pt"></asp:RequiredFieldValidator>
             <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Parola " Font-Size="14pt"></asp:Label>
            <br />
            <asp:TextBox ID="txtPass" runat="server" class="form-control" Width="200 " TextMode="Password" Font-Size="14pt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Bu alan boş girilemez." Font-Size="15pt"></asp:RequiredFieldValidator>
             <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Parola (Tekrar)" Font-Size="14pt"></asp:Label>
            <br />
            <asp:TextBox ID="txtPass2" runat="server" TextMode="Password" class="form-control" Width="200" Font-Size="14pt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPass2" ErrorMessage="Bu alan boş girilemez." Font-Size="15pt"></asp:RequiredFieldValidator>
             <br />
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPass2" ErrorMessage="Parolaların aynı girildiğinden emin olun." Font-Size="15pt"></asp:CompareValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  class="btn btn-info btn-md" Text="Kayıt Ol" Height="49px" Width="156px" Font-Size="16pt" />
          
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
        </div>
        </div>
    </div>


         
   
        
    </form>
</body>
</html>
