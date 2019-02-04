using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null || Session["user"].ToString() == "")
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                Label6.Text = "                 Basit Anket ve Veri Dökümantasyonu ";
                lblAuthor.Text = "Hoşgeldin " + Session["user"].ToString() ;
              
            }
            OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/data/database.accdb"));
            connection.Open();
            OleDbCommand command = new OleDbCommand("select meslek, count(*) as sayisi from veri group by meslek",connection);
            OleDbDataReader data = command.ExecuteReader();
            GridView2.DataSource = data;
            GridView2.DataBind();
            connection.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/data/database.accdb"));
            connection.Open();
            
            OleDbCommand cmd = new OleDbCommand("insert into veri (ad,meslek) values('" + tad.Text + "','" + RadioButtonList1.SelectedValue.ToString() + "')", connection);

            if (tad.Text != "" || RadioButtonList1.SelectedItem==null )
            {
                cmd.ExecuteNonQuery();
                lblinfo.Text = "Başarıyla oluşturuldu.";
            }
            connection.Close();
            tad.Text = "";
           
           
            GridView1.DataBind();
            Response.Redirect("main.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/data/database.accdb"));
            con.Open();
            OleDbCommand komut = new OleDbCommand("Delete from veri Where ad=@ad", con);
            komut.Parameters.AddWithValue("ad", TextBox1.Text);

            komut.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Redirect("main.aspx");
            TextBox1.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}