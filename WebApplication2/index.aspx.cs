using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/data/database.accdb"));
            con.Open();
            OleDbCommand komut = new OleDbCommand("select * from kullanici where ad = '" + tad.Text + "' and Sifre = '" + tsifre.Text + "'", con);
            OleDbDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                string user, pass;
                user = oku[1].ToString();
                pass = oku[2].ToString();

                if (user == tad.Text && pass == tsifre.Text)
                {
                    Session["user"] = user;
                    Response.Redirect("main.aspx");
                }             
            }
            else
            {
                lbhata.Text = "Hatalı parola veya email.";
            }

            con.Close();
        }

       
    }
}