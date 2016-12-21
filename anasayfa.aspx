<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Sergi Evi</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/arayüz.css" type="text/css" />
</head>
<body>
<div class="wrapper col2">
  <div id="galeri">
    <ul>
     <li class="placeholder" style="background-image:url('layout/images/main-photo.jpg');"></li> 
      <li><a class="swap" href="#"><img src="images/gallery/1.jpg" width="100%" height="100%" alt="" /><span><img src="images/gallery/1.jpg" width="950" height="370" alt="" /></span></a></li>
      <li><a class="swap" href="#"><img src="images/gallery/2.jpg" width="100%" height="100%" alt="" /><span><img src="images/gallery/2.jpg" width="950" height="370" alt="" /></span></a></li>
      <li><a class="swap" href="#"><img src="images/gallery/3.jpg" width="100%" height="100%" alt="" /><span><img src="images/gallery/3.jpg" width="950" height="370" alt="" /></span></a></li>
      <li><a class="swap" href="#"><img src="images/gallery/4.jpg" width="100%" height="100%" alt="" /><span><img src="images/gallery/4.jpg" width="950" height="370" alt="" /></span></a></li>
      <li class="last"><a class="swap" href="#"><img src="images/gallery/5.jpg" width="100%" height="100%" alt="" /><span><img src="images/gallery/5.jpg" width="950" height="370" alt="" /></span></a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="services">
    <ul>
      <li><a href="#"><strong>Picasso</strong><img src="images/smallpics/1.jpg" width="100%"  height="100%" alt="" /></a></li>
      <li><a href="#"><strong>Salvador Dali</strong><img src="images/smallpics/2.jpg" width="100%" height="100%" alt="" /></a></li>
      <li><a href="#"><strong>Salvador Dali</strong><img src="images/smallpics/3.jpg" width="100%" height="100%" alt="" /></a></li>
      <li class="last"><a href="#"><strong>Da Vinci</strong><img src="images/smallpics/4.jpg" width="100%" height="100%" alt="" /></a></li>
      <li><a href="#"><strong>Picasso</strong><img src="images/smallpics/5.jpg" width="100%" height="100%" alt="" /></a></li>
      <li><a href="#"><strong>Picasso</strong><img src="images/smallpics/6.jpg" width="100%" height="100%" alt="" /></a></li>
      <li><a href="#"><strong>Van Gogh</strong><img src="images/smallpics/7.jpg" width="100%" height="100%" alt="" /></a></li>
      <li class="last"><a href="#"><strong>Van Gogh</strong><img src="images/smallpics/8.jpg" width="100%" height="100%" alt="" /></a></li>
    </ul>
    <br class="clear" />
  </div>
</div>

<div class="wrapper col6">
  <div id="footer">
    <div id="contactform">
      <h2>Bize Ula&#351;&#305;n</h2>
      <form action="#" method="post">
        <fieldset>
          <legend>Contact Form</legend>
          <label for="fullname">Ad-Soyad:
            <input id="fullname" name="fullname" type="text" value="" />
          </label>
          <label for="emailaddress" class="margin">Email:
            <input id="emailaddress" name="emailaddress" type="text" value="" />
          </label>
          <label for="message">Mesaj:<br />
            <textarea id="message" name="message" cols="40" rows="4"></textarea>
          </label>
          <p>
            <input id="submitform" name="submitform" type="submit" value="Gönder" />
            &nbsp;
            <input type="reset" class="submit_btn float_r" name="reset" id="temizle" value=" Temizle " />
          </p>
        </fieldset>
      </form>
    </div>
    
    <div class="clear"></div>
  </div>
</div>

</body>
</html>
</asp:Content>

