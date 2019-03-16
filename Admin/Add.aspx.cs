using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Course : System.Web.UI.Page
{
    String constr;
    MySqlConnection con;
    MySqlCommand cmd;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        constr = "server=127.0.0.1;user id=root;Password=root;database=db_starr";

        con = new MySqlConnection(constr);
       /* try
        {*/
            con.Open();
            dt = new DataTable();
            cmd = new MySqlCommand("select c_name from course;",con);
            //MySqlDataAdapter adp = new MySqlDataAdapter();
            MySqlDataReader reader = cmd.ExecuteReader();
            //adp.SelectCommand = cmd;
            //adp.Fill(dt);

            //dt.Load(reader);

        //    drpCourse.DataSource = dt;
            drpCourse.Items.Clear();
        while (reader.Read())
        {
            
            drpCourse.Items.Add(reader.GetString(0));
        }

        //con.Close();
        reader.Close();

       /* }
        catch {
            Response.Write("<script>alert('Something went wrong.')</script>");
            
        }*/

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string course = txtCourse.Text;
        if (course == "")
        {
            Response.Write("<script>alert('Enter course name atleast.')</script>");
        }
        else
        {
            string queryStr = "insert into course(c_name) values('" + course + "');";
            try
            {
                //con.Open();
                cmd = new MySqlCommand(queryStr, con);
                if (cmd.ExecuteNonQuery() == 1)
                {
                    Response.Write("<script>alert('Course added successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Course add failed')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('Something went wrong.')</script>");
            }
            con.Close();
            Page_Load(sender, e);
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string sem= txtSem.Text;
        string subject = txtSubject.Text;
        if (sem == ""||subject=="")
        {
            Response.Write("<script>alert('Enter appropriate values.')</script>");
        }
        else
        {
            int cid = drpCourse.SelectedIndex+1;
            string queryStr = "insert into subject(sub_name,sem,c_id) values('" + subject + "','"+sem+"',"+cid+");";
            try
            {
                //con.Close();

                cmd = new MySqlCommand(queryStr, con);
                if (cmd.ExecuteNonQuery() == 1)
                {
                    Response.Write("<script>alert('Subject added successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Subject add failed')</script>");
                }
            }
            catch(Exception e1)
            {
                Response.Write("<script>alert('Something went wrong."+e1.Message+"')</script>");
            }
            con.Close();
            Page_Load(sender, e);
           
        }

    }
}