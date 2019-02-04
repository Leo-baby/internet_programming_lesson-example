<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        html, body {
             background-image:url('544750.jpg');
          
        }
        .box {
    width: 560px;
    margin: 200px 0;
            height: 293px;
        }

.shape1{
    position: relative;
    height: 170px;
    width: 150px;
    background-color: #0074d9;
    border-radius: 80px;
    float: left;
    margin-right: -50px;
}
.shape2 {
    position: relative;
    height: 195px;
    width: 157px;
    background-color: #0074d9;
    border-radius: 80px;
    margin-top: -30px;
    float: left;
            top: 0px;
            left: 0px;
        }
.shape3 {
    position: relative;
    height: 190px;
    width: 160px;
    background-color: #0074d9;
    border-radius: 80px;
    margin-top: -30px;
    float: left;
    margin-left: -31px;
}
.shape4 {
    position: relative;
    height: 190px;
    width: 146px;
    background-color: #0074d9;
    border-radius: 80px;
    margin-top: -25px;
    float: left;
    margin-left: -32px;
            top: 0px;
            left: 0px;
        }
.shape5 {
    position: relative;
    height: 170px;
    width: 150px;
    background-color: #0074d9;
    border-radius: 80px;
    float: left;
    margin-right: -48px;
    margin-left: -32px;
    margin-top: -30px;
}
.shape6 {
    position: relative;
    height: 195px;
    width: 150px;
    background-color: #0074d9;
    border-radius: 80px;
    float: left;
    margin-right: -20px;
    margin-top: -35px;
            top: 0px;
            left: 0px;
        }
.shape7 {
    position: relative;
    height: 170px;
    width: 150px;
    background-color: #0074d9;
    border-radius: 80px;
    float: left;
    margin-right: -20px;
    margin-top: -57px;
}
.float {
    position: absolute;
    z-index: 2;
}

.form {
    margin-left: 145px;
}


    </style>
</head>
<body>


    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div class="box">
                    <div class="shape1"></div>
                    <div class="shape2"></div>
                    <div class="shape3"></div>
                    <div class="shape4"></div>
                    <div class="shape5"></div>
                    <div class="shape6"></div>
                    <div class="shape7"></div>
                    <div class="float">
                        <form class="form"  runat="server">
                            <div class="form-group">
                                 <asp:Label ID="Label2" runat="server" class="text-white" Text="Ad :" Font-Size="15pt" /><br />
                                 <asp:TextBox ID="tad" runat="server" class="form-control">
                                 </asp:TextBox><asp:RequiredFieldValidator class="text-white" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş geçilemez." ControlToValidate="tad"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                 <asp:Label ID="Label1" runat="server" class="text-white" Text="Şifre:" Font-Size="15pt" /><br />
                                <asp:TextBox ID="tsifre" runat="server"  class="form-control" SkinID="*" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator  ID="RequiredFieldValidator2" class="text-white" runat="server" ErrorMessage="Boş geçilemez." ControlToValidate="tsifre"></asp:RequiredFieldValidator><br />
                            <asp:Label ID="lbhata" runat="server" class="text-white"></asp:Label>
                                 <div class="form-group">
                                     <asp:HyperLink ID="HyperLink1" class="btn btn-info btn-md" NavigateUrl="~/yeni.aspx"  runat="server" Height="34px" Width="87px">Kayıt Ol</asp:HyperLink>
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:Button ID="Button1" runat="server" Text="Giriş" OnClick="Button1_Click" class="btn btn-info btn-md" Width="93px" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
