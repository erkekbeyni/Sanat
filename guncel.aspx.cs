using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Globalization;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.IO;





public partial class guncel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        sanatEntities db = new sanatEntities();


        var sergiId = from s in db.sergi where s.s_adi == "Da Vinci" select s;
        foreach (sergi s in sergiId)
        {
            lbl2.Text = s.s_adi;
            lbl4.Text = s.s_bilgi;
            lbl5.Text = Convert.ToString(s.s_tarih);
        }
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        sanatEntities db = new sanatEntities();

        int ad = Convert.ToInt32(DropDownList2.SelectedValue);

        var sergiId = from s in db.sergi where s.s_id == ad select s;
        foreach (sergi s in sergiId)
        {
            lbl2.Text = s.s_adi;
            lbl3.Text = s.s_bilgi;
            lbl5.Text = Convert.ToString(s.s_tarih);

        }
        int id = Convert.ToInt32(DropDownList2.SelectedValue);
        var yorum = from y in db.yorum where y.s_id == id select y;
        foreach (yorum y in yorum)
        {
            Label6.Text = y.yorum_user;
            Label7.Text = y.yorum_yorum;
            Label8.Text = y.yorum_tarih;
        }

        int es = Convert.ToInt32(DropDownList2.SelectedValue);
        var es2 = from a in db.sergi where a.s_id == es select a;
        foreach (sergi a in es2)
        {

            byte[] imagem = (byte[])(a.s_resim1);
            string base64String = Convert.ToBase64String(imagem);

            MemoryStream ms = new MemoryStream(imagem);

            Image2.ImageUrl = string.Format("data:image/jpg;base64,{0}", base64String);
        }

            

      

    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        sanatEntities db = new sanatEntities();

        int ad = Convert.ToInt32(DropDownList3.SelectedValue);

        var sergiId = from s in db.sergi where s.s_id == ad select s;
        foreach (sergi s in sergiId)
        {
            lbl2.Text = s.s_adi;
            lbl3.Text = s.s_bilgi;
            lbl5.Text = Convert.ToString(s.s_tarih);

        }
        int id = Convert.ToInt32(DropDownList3.SelectedValue);
        var yorum = from y in db.yorum where y.s_id == id select y;
        foreach (yorum y in yorum)
        {
            Label6.Text = y.yorum_user;
            Label7.Text = y.yorum_yorum;
            Label8.Text = y.yorum_tarih;
        }

        int es = Convert.ToInt32(DropDownList3.SelectedValue);
        var es2 = from a in db.sergi where a.s_id == es select a;
        foreach (sergi a in es2)
        {
            //var foto = from fot in db.sergi where fot.eser_id == a.eser_id select fot;
            //foreach (eser fot in foto)
            //{
                byte[] imagem = (byte[])(a.s_resim1);
                string base64String = Convert.ToBase64String(imagem);

                MemoryStream ms = new MemoryStream(imagem);

                Image2.ImageUrl = string.Format("data:image/jpg;base64,{0}", base64String);
            //}
            //var foto1 = from fot in db.eser where fot.eser_id == (a.eser_id + 1) select fot;
            //foreach (eser fot in foto1)
            //{
                
            //}
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        sanatEntities db = new sanatEntities();

        int ad = Convert.ToInt32(DropDownList4.SelectedValue);

        var sergiId = from s in db.sergi where s.s_id == ad select s;
        foreach (sergi s in sergiId)
        {
            lbl2.Text = s.s_adi;
            lbl3.Text = s.s_bilgi;
            lbl5.Text = Convert.ToString(s.s_tarih);

        }
        int id = Convert.ToInt32(DropDownList4.SelectedValue);
        var yorum = from y in db.yorum where y.s_id == id select y;
        foreach (yorum y in yorum)
        {
            Label6.Text = y.yorum_user;
            Label7.Text = y.yorum_yorum;
            Label8.Text = y.yorum_tarih;
        }
        int es = Convert.ToInt32(DropDownList4.SelectedValue);
        var es2 = from a in db.sergi where a.s_id == es select a;
        foreach (sergi a in es2)
        {
            //var foto = from fot in db.sergi where fot.eser_id == a.eser_id select fot;
            //foreach (eser fot in foto)
            //{
            byte[] imagem = (byte[])(a.s_resim1);
            string base64String = Convert.ToBase64String(imagem);

            MemoryStream ms = new MemoryStream(imagem);

            Image2.ImageUrl = string.Format("data:image/jpg;base64,{0}", base64String);
            //}
            //var foto1 = from fot in db.eser where fot.eser_id == (a.eser_id + 1) select fot;
            //foreach (eser fot in foto1)
            //{
            
            //}
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        sanatEntities db = new sanatEntities();
        string ad = lbl2.Text;
        int id=0;
        var sergi = from sa in db.sergi where sa.s_adi == ad select sa;
        foreach (sergi sa in sergi)
        {
            id = sa.s_id;
        }       
                string kullanici = TextBox1.Text;
                string yor = TextBox3.Text;
                string tarih= DateTime.Now.ToString("dd'/'MM'/'yyyy");

                yorum com = new yorum();
                com.yorum_user = kullanici;
                com.yorum_yorum = yor;
                com.yorum_tarih = tarih;
                com.s_id = id;
                db.yorum.Add(com);
                try
                {
                    db.SaveChanges();
                    MessageBox.Show("Yorum Kaydedildi.");


                }
                catch (Exception t)
                {
                MessageBox.Show(Convert.ToString(t));

            
            }
        
    }
}