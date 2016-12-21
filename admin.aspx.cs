using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Drawing.Imaging;
using System.Drawing;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Linq;


public partial class admin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {



    }

    private Boolean InsertUpdateData(SqlCommand cmd)
    {
        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["sanatConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            return false;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string filePath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filePath);
        string ext = Path.GetExtension(filename);
        string contenttype = string.Empty;
        string filePath2 = FileUpload2.PostedFile.FileName;
        string filename2 = Path.GetFileName(filePath2);
        string ext2= Path.GetExtension(filename2);
        string contenttype2 = string.Empty;

        switch (ext)
        {

            case ".jpg":
                contenttype = "image/jpg";
                break;
            case ".jpeg":
                contenttype = "image/jpeg";
                break;
            case ".png":
                contenttype = "image/png";
                break;

        }
        if (contenttype != String.Empty)
        {

            Stream fs = FileUpload1.PostedFile.InputStream;
            Stream fs2 = FileUpload2.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            BinaryReader br2 = new BinaryReader(fs2);
            byte[] bytes = br.ReadBytes((int)fs.Length);
            byte[] bytes2 = br.ReadBytes((int)fs2.Length);
            string strquery = "insert into sergi(s_adi, s_bilgi, s_tarih, sanatci_id, s_guncel, s_resim1, s_resim2) values (@adi, @bilgi, @tarih, @id, @guncel, @resim1, @resim2)";
            SqlCommand cmd = new SqlCommand(strquery);
            cmd.Parameters.Add("@adi", SqlDbType.Char).Value = TextBox1.Text;
            cmd.Parameters.Add("@tarih", SqlDbType.Char).Value = TextBox2.Text;
            cmd.Parameters.Add("@guncel", SqlDbType.Int).Value = Convert.ToInt32(TextBox3.Text);
            cmd.Parameters.Add("@bilgi", SqlDbType.Char).Value = TextBox6.Text;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(TextBox4.Text);
            cmd.Parameters.Add("@resim1", SqlDbType.Binary).Value = bytes;
            cmd.Parameters.Add("@resim2", SqlDbType.Binary).Value = bytes2;
            InsertUpdateData(cmd);
            MessageBox.Show("Kayıt yapıldı.");

        }
        else
        {
            MessageBox.Show("Kayıt yapılamadı.");
        }

    }





    protected void Button3_Click(object sender, EventArgs e)
    {
        sanatEntities db = new sanatEntities();
        string sAdi = TextBox9.Text;
        string sBilgi = TextBox13.Text;
        int eID = Convert.ToInt32(TextBox16.Text);

        sanatci san = new sanatci();
        san.sanatci_adi = sAdi;
        san.sanatci_bilgi = sBilgi;
        san.eser_id = eID;
        db.sanatci.Add(san);
        try
        {
            db.SaveChanges();
            MessageBox.Show("Kayıt yapıldı.");
        }
        catch (Exception t)
        {
            Console.WriteLine(t);

        }
    }




    protected void Button2_Click(object sender, EventArgs e)
    {
        //sanatEntities db = new sanatEntities();
        //string eAdi = TextBox15.Text;
        //byte[] fileByte = FileUpload3.FileBytes;
        //Binary binaryObj = new Binary(fileByte);

        //eser es = new eser();
        //es.eser_adi = eAdi;
        //db.eser.Add(es);
        //db.SaveChanges();


        string filePath = FileUpload3.PostedFile.FileName;
        string filename = Path.GetFileName(filePath);
        string ext = Path.GetExtension(filename);
        string contenttype = string.Empty;

        switch (ext)
        {

            case ".jpg":
                contenttype = "image/jpg";
                break;
            case ".jpeg":
                contenttype = "image/jpeg";
                break;
            case ".png":
                contenttype = "image/png";
                break;

        }
        if (contenttype != String.Empty)
        {

            Stream fs = FileUpload3.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] bytes = br.ReadBytes((int)fs.Length);

            string strquery = "insert into eser(eser_adi, eser_foto) values (@adi, @data)";
            SqlCommand cmd = new SqlCommand(strquery);
            cmd.Parameters.Add("@adi", SqlDbType.VarChar).Value = TextBox15.Text;
            cmd.Parameters.Add("@data", SqlDbType.Binary).Value = bytes;
            InsertUpdateData(cmd);
            MessageBox.Show("Kayıt yapıldı.");
        }
        else
        {
            MessageBox.Show("Kayıt yapılamadı.");
        }

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        string filePath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filePath);
        string ext = Path.GetExtension(filename);
        string contenttype = string.Empty;
        string filePath2 = FileUpload2.PostedFile.FileName;
        string filename2 = Path.GetFileName(filePath2);
        string ext2 = Path.GetExtension(filename2);
        string contenttype2 = string.Empty;

        switch (ext)
        {

            case ".jpg":
                contenttype = "image/jpg";
                break;
            case ".jpeg":
                contenttype = "image/jpeg";
                break;
            case ".png":
                contenttype = "image/png";
                break;

        }
        switch (ext2)
        {

            case ".jpg":
                contenttype2 = "image/jpg";
                break;
            case ".jpeg":
                contenttype2 = "image/jpeg";
                break;
            case ".png":
                contenttype2 = "image/png";
                break;

        }
        if (contenttype != String.Empty)
        {

            Stream fs = FileUpload1.PostedFile.InputStream;
            Stream fs2 = FileUpload2.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            BinaryReader br2 = new BinaryReader(fs2);
            byte[] bytes = br.ReadBytes((int)fs.Length);
            byte[] bytes2 = br.ReadBytes((int)fs2.Length);
            string strquery = "update sergi set s_resim1=@resim1, s_resim2=@resim2 where s_id=@id";
            SqlCommand cmd = new SqlCommand(strquery);
            cmd.Parameters.Add("@resim1", SqlDbType.Binary).Value = bytes;
            cmd.Parameters.Add("@resim2", SqlDbType.Binary).Value = bytes2;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(TextBox17.Text);
            InsertUpdateData(cmd);
            MessageBox.Show("Güncelleme yapıldı.");
        }
        else
        {
            MessageBox.Show("Güncelleme yapılamadı.");
        }
    }
}