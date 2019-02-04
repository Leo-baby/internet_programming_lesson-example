using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/data/database.accdb"));
            connection.Open();

            OleDbCommand cmd = new OleDbCommand("insert into kullanici (ad,sifre) values('" + txtAuthor.Text + "','" + txtPass.Text + "')", connection);
            if (txtAuthor.Text != "" || txtPass.Text != "" || txtPass2.Text != "")
            {
                if (txtPass.Text == txtPass2.Text)
                {
                    cmd.ExecuteNonQuery();
                  
                    Response.Redirect("index.aspx");
                }
            }
            
        }

        protected void Label5_Init(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}