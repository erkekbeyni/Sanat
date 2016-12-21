<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="guncel.aspx.cs" Inherits="guncel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
    <link rel="stylesheet" href="layout/styles/arayüz.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h1>
                    <asp:Label ID="lbl2" runat="server"></asp:Label>
                &nbsp;- <asp:Label ID="lbl5" runat="server"></asp:Label>
                </h1>
      <p>
                    <asp:Label ID="lbl3" runat="server"></asp:Label>
                </p>
      <p>
                    <asp:Label ID="lbl4" runat="server"></asp:Label>
                </p>
      <asp:Image CssClass="imgl" ID="Image2" runat="server" Width="200px" Height="200px" ImageUrl="~/images/picasso.jpg" />
      
      <div id="comments">
        <h2>Yorumlar</h2>
        <ul class="commentlist">
          <li class="comment_odd">
            <div class="author"><span class="name"><a href="#">Kullanı</a>cı</span> <span class="wrote">:</span><asp:Label ID="Label6" runat="server"></asp:Label>
              </div>
            <div class="submitdate">
                <asp:Label ID="Label8" runat="server"></asp:Label>
              </div>
            <p>
                <asp:Label ID="Label7" runat="server"></asp:Label>
              </p>
          </li>
        </ul>
      </div>
      <h2>Yorum yaz</h2>
      <div id="respond">
        <form action="#" method="post">
          <p>
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<small>İsim (gerekli)</small>
          </p>
          <p>
              <asp:TextBox ID="TextBox3" runat="server" Height="136px" TextMode="MultiLine" Width="580px"></asp:TextBox>
&nbsp;<small>Yorum (gerekli)</small>
          </p>
          <p>
            &nbsp;<asp:Button ID="Button5" runat="server" Text="Gönder" OnClick="Button5_Click" />
            &nbsp;
           <input type="reset" class="submit_btn float_r" name="reset" id="temizle" value=" Temizle " />
          </p>
        </form>
      </div>
    </div>
    <div id="column">
                <asp:Label ID="Label1" runat="server" Text="Güncel Sergiler:"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="s_adi" DataValueField="s_id" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:Button Class="btn" ID="Button2" runat="server" OnClick="Button2_Click" Text="Göster" />
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Gelecek Sergiler:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="s_adi" DataValueField="s_id" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Button Class="btn" ID="Button3" runat="server" OnClick="Button3_Click" Text="Göster" />
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Geçmiş Sergiler:"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="s_adi" DataValueField="s_id" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Button Class="btn" ID="Button4" runat="server" OnClick="Button4_Click" Text="Göster" />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sanatConnectionString %>" SelectCommand="SELECT * FROM [sergi] WHERE ([s_guncel] = @s_guncel)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="s_guncel" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
&nbsp;
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sanatConnectionString %>" SelectCommand="SELECT * FROM [sergi] WHERE ([s_guncel] = @s_guncel)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="s_guncel" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sanatConnectionString %>" SelectCommand="SELECT * FROM [sergi] WHERE ([s_guncel] = @s_guncel)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="s_guncel" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
    </div>
    <div class="clear"></div>
  </div>
</div>
   
</asp:Content>

