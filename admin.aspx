<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
     <link rel="stylesheet" href="layout/styles/admin.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" Height="444px" Width="956px">
    <div class="admin1" style="width: 731px; height: 435px; margin-left: 250px">
        <asp:Label ID="Label1" runat="server" Text="Sergi Adı:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="140px"></asp:TextBox>
        &nbsp;<div class="admin2" style="height: 236px; width: 204px;">
            <asp:Label ID="Label13" runat="server" Text="Eser ID:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox14" runat="server" Width="140px"></asp:TextBox>
            <br />
            <asp:Label ID="Label14" runat="server" Text="Eser Adı:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox15" runat="server" Width="140px"></asp:TextBox>
            <br />
            <asp:Label ID="Label15" runat="server" Text="Eserin Resmi:"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUpload3" runat="server" Width="197px" />
            <br />
            <br />
            <input type="reset" class="submit_btn float_r" name="reset1" id="temizle1" value=" Temizle " />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Kaydet" OnClick="Button2_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
        <div class="admin3" style="width: 184px; height: 275px; margin-top: 0px;">
            <asp:Label ID="Label10" runat="server" Text="Sanatçı Adı:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox9" runat="server" Width="140px"></asp:TextBox>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Sanatçı Bilgisi:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox13" runat="server" Height="105px" TextMode="MultiLine" Width="140px"></asp:TextBox>
            <br />
            <asp:Label ID="Label16" runat="server" Text="Eser ID:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            <br />
            <br />
            <input type="reset" class="submit_btn float_r" name="reset0" id="temizle0" value=" Temizle " />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Kaydet" />
        </div>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Sergi Tarihi:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Width="140px"></asp:TextBox>
        &nbsp;
        <br />
        <asp:Label ID="Label3" runat="server" Text="Sergi Güncelliği:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Width="140px"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Sanatçı ID:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="TextBox4" runat="server" Width="140px"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Sergi Bilgisi:"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="TextBox6" runat="server" Height="70px" TextMode="MultiLine" Width="142px"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Resim 1:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Resim 2:"></asp:Label>
        <br />
        <asp:FileUpload ID="FileUpload2" runat="server" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
        <input type="reset" class="submit_btn float_r" name="reset" id="temizle" value=" Temizle " />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Kaydet" />
        &nbsp;<br />
        <asp:Label ID="Label17" runat="server" Text="Sergi ID:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Güncelle" />
    </div>
</asp:Panel>

</asp:Content>

