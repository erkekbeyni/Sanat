<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="sanatcilar.aspx.cs" Inherits="sanatcilar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
    <link rel="stylesheet" href="layout/styles/arayüz.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h1>
                    <asp:Label ID="lbl2" runat="server">LÜTFEN BİR SANATÇI SEÇİNİZ!</asp:Label>
                &nbsp;- <asp:Label ID="lbl5" runat="server"></asp:Label>
                </h1>
      <asp:Image CssClass="imgr" ID="Image1" runat="server" Width="200px" Height="200px" ImageUrl="~/images/dali.jpg" />
<%--        <img class="imgr" src="../images/smallpics/1.jpg" alt="" width="125" height="125" />--%>
      <p>
                    <asp:Label ID="lbl3" runat="server"></asp:Label>
                </p>
      <p>
                    <asp:Label ID="lbl4" runat="server"></asp:Label>
                </p>
      <asp:Image CssClass="imgl" ID="Image2" runat="server" Width="200px" Height="200px" ImageUrl="~/images/picasso.jpg" />
        
  <%--    <img class="imgl" src="../images/smallpics/5.jpg" alt="" width="125" height="125" />
      --%>
      
    </div>
    <div id="column">
                <asp:Label ID="Label1" runat="server" Text="Sanatçılar:" Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="sanatci_adi" DataValueField="sanatci_id" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" style="height: 22px" Font-Bold="False" Font-Overline="False" Font-Size="Medium">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:Button Class="btn" ID="Button2" runat="server" OnClick="Button2_Click" Text="Göster" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;
                &nbsp;&nbsp;&nbsp;
                &nbsp;
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sanatConnectionString %>" SelectCommand="SELECT * FROM [sanatci]">
                </asp:SqlDataSource>
    </div>
    <div class="clear"></div>
  </div>
</div>    

</asp:Content>

