<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <meta charset="utf-8">
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
          
      </style>
</head>
<body>
    <form id="form1" runat="server">
        



            <div class="container">
                <asp:Label ID="Label6" Font-Size="29"  ForeColor="White" runat="server"  Font-Names="Bahnschrift SemiLight Condensed"  Text="Label"></asp:Label>
                <br />
                <br />
  <asp:Label ID="lblAuthor" ForeColor="#FF9999" runat="server" Text="Label" Font-Size="20pt" Font-Names="Bahnschrift SemiLight Condensed" style="text-align: center"></asp:Label>
                &nbsp;
              
                <br />
              
                <asp:Button  ID="Button3" runat="server" ForeColor="Black" Height="28px" OnClick="Button3_Click" Text="Çıkış" Width="69px" />
                <br />
                <br />
  <div class="panel-group">
   

    <div class="panel panel-primary">
      <div class="panel-heading"><asp:Label ID="Label2" runat="server" CssClass="yeniStil1" Text="Veri Ekle" Font-Names="Bahnschrift SemiLight Condensed"></asp:Label>
        &nbsp;&nbsp;
        </div>

      <div class="panel-body">&nbsp;<asp:Label ID="Label8" runat="server" CssClass="yeniStil1" Text="Ad - Soyad " Font-Names="Bahnschrift SemiLight Condensed"></asp:Label>
          <br />
          <asp:TextBox ID="tad" runat="server" Height="29px" Width="173px"></asp:TextBox>
          &nbsp;&nbsp;&nbsp;
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tad" ErrorMessage="Boş Geçilemez !" style="text-align: left" ValidationGroup="g"></asp:RequiredFieldValidator>
          <br />
          <br />
          <asp:Label ID="Label9" runat="server" CssClass="yeniStil1" Text="Meslek :" Font-Names="Bahnschrift SemiLight Condensed" Font-Underline="True"></asp:Label>
          <br />
          <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="5" CellSpacing="5" Font-Size="13pt" AutoPostBack="True">
              <asp:ListItem>Öğretmen</asp:ListItem>
              <asp:ListItem>Öğrenci</asp:ListItem>
              <asp:ListItem>Doktor</asp:ListItem>
              <asp:ListItem>Serbest Meslek</asp:ListItem>
          </asp:RadioButtonList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Meslek Seçmediniz" style="text-align: left" ValidationGroup="g"></asp:RequiredFieldValidator>
          <br />
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" Height="31px" Width="96px" ValidationGroup="g" />
          <br />
          <br />
          <asp:Label ID="lblinfo" runat="server"></asp:Label>
          <br />
        </div>
    </div>
 <div class="panel panel-info">
      <div class="panel-heading"><asp:Label ID="Label4" runat="server" CssClass="yeniStil1" Text="Veriler " Font-Names="Bahnschrift SemiLight Condensed"></asp:Label>
          <br />
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="457px" Height="142px" AllowPaging="True" AllowSorting="True" DataKeyNames="verİ_id" Font-Size="13pt">
              <Columns>
                  <asp:BoundField DataField="verİ_id" HeaderText="verİ_id" SortExpression="verİ_id" InsertVisible="False" ReadOnly="True" Visible="False" />
                  <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                  <asp:BoundField DataField="meslek" HeaderText="meslek" SortExpression="meslek" />
              </Columns>
              <FooterStyle BackColor="White" ForeColor="#000066" />
              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
              <PagerSettings LastPageText="          &amp;gt;&amp;gt;" Mode="NextPrevious" PreviousPageText="   &amp;lt;" />
              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" BorderStyle="Double" VerticalAlign="Middle" />
              <RowStyle ForeColor="#000066" />
              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#007DBB" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#00547E" />
          </asp:GridView>
          <br />
          <asp:Label ID="Label7" runat="server" CssClass="yeniStil1" Text="Veri Sil" Font-Names="Bahnschrift SemiLight Condensed"></asp:Label>
          <br />
          <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="182px"></asp:TextBox>
          <br />
          <br />
          <asp:Button ID="Button2" runat="server" Font-Names="Yu Gothic Medium" Font-Size="12pt" OnClick="Button2_Click" Text="Sil" Width="44px" />
          <br />
          <br />
          <asp:Label ID="Label5" runat="server" CssClass="yeniStil1" Text="Anket Meslek Yoğunluk Listesi " Font-Names="Bahnschrift SemiLight Condensed"></asp:Label>
          <br />
          <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="526px" Font-Size="13pt">
              <FooterStyle BackColor="White" ForeColor="#000066" />
              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
              <RowStyle ForeColor="#000066" />
              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#007DBB" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#00547E" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" ProviderName="<%$ ConnectionStrings:ConnectionString11.ProviderName %>" SelectCommand="SELECT * FROM [veri]"></asp:SqlDataSource>
          <br />
          <br />
        </div>
    </div>


</div>
        </div>
    </form>
</body>
</html>
