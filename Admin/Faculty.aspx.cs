using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String course = drpCourse.SelectedIndex.ToString();
        String sem = drpSem.SelectedIndex.ToString();
        String subject = drpSubject.SelectedIndex.ToString();
        String name = txtName.Text.ToString();
        String username = txtUsername.Text.ToString();
        String password = txtPassword.Text.ToString();

        String constr = "server=127.0.0.1;user id=root;Password=root;database=db_starr";

        MySqlConnection con = new MySqlConnection(constr);
        MySqlCommand cmd;
        string queryStr = "insert into faculty values('" + username + "','" + password + "','" + name + "','" + course + "','" + sem + "','" + subject + "');";
        try
        {
            con.Open();
            cmd = new MySqlCommand(queryStr, con);
            if (cmd.ExecuteNonQuery() == 1)
            {
                Response.Write("<script>alert('Data inserted successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data insert failed')</script>");
            }
        }
        catch
        {
            Response.Write("<script>alert('Something went wrong.')</script>");
        }
       
        

    }
}