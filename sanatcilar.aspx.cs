using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sanatcilar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        sanatEntities db = new sanatEntities();

        int ad = Convert.ToInt32(DropDownList2.SelectedValue);

        var sanatciId = from s in db.sanatci where s.sanatci_id == ad select s;
        foreach (sanatci s in sanatciId)
        {
            lbl2.Text = s.sanatci_adi;
            lbl3.Text = s.sanatci_bilgi;
            
        }
        //SqlConnection connect = null;

        //string connectstring = "Data Source=.\\SQLEXPRESS;Initial Catalog=sanat;Integrated Security=true;pooling=false";
        //connect = new SqlConnection(connectstring);
        //connect.Open();

        //string Scmd = "SELECT eser_foto, eser where eser_id = 6";
        //SqlCommand cmd = new SqlCommand(Scmd, connect);

        //SqlDataReader reader = cmd.ExecuteReader();

        //reader.Read();
        int es = Convert.ToInt32(DropDownList2.SelectedValue);
        var es2 = from a in db.sanatci where a.sanatci_id == es select a;
        foreach(sanatci a in es2)
        {
            var foto = from fot in db.eser where fot.eser_id == a.eser_id select fot;
            foreach (eser fot in foto)
            {
                byte[] imagem = (byte[])(fot.eser_foto);
                string base64String = Convert.ToBase64String(imagem);

                MemoryStream ms = new MemoryStream(imagem);

                Image1.ImageUrl = string.Format("data:image/jpg;base64,{0}", base64String);
            }
            var foto1 = from fot in db.eser where fot.eser_id ==(a.eser_id+1)  select fot;
            foreach (eser fot in foto1)
            {
                byte[] imagem = (byte[])(fot.eser_foto);
                string base64String = Convert.ToBase64String(imagem);

                MemoryStream ms = new MemoryStream(imagem);

                Image2.ImageUrl = string.Format("data:image/jpg;base64,{0}", base64String);
            }
        }

       

        //if (reader.HasRows)
        //{
        //    Label1.Text = reader[0].ToString();
        //    byte[] imagem = (byte[])(reader[1]);
        //    string base64String = Convert.ToBase64String(imagem);

        //    MemoryStream ms = new MemoryStream(imagem);

        //    Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", base64String);
        //}
    }
}