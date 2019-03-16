using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace StudentAttendaceQRCode_V2
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("Server=127.0.0.1;User Id=root;Password=root;Database=studentattendance;");
            MySqlCommand cmd;
            try
            {
                con.Open();
                
                string cmdStr = "select * from login_table where EMAIL_ID ='" + txt_username.Text.Trim() + "' and PASSWORD='" + txt_password.Text.Trim()+"';";
                cmd = new MySqlCommand(cmdStr,con);
                MySqlDataReader reader =  cmd.ExecuteReader();

                if (reader.HasRows)
                { 
                    Response.Redirect("NewSession.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                }
            }
            catch (MySqlException se)
            {
                System.Windows.Forms.MessageBox.Show(se.Message);
            }
            con.Close();
        }
    }
}