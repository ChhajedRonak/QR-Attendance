using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class Faculty : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlCommand cmd;
    DataTable dt;
    String constr = "server=127.0.0.1;user id=root;Password=root;database=db_starr";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con = new MySqlConnection(constr);

            //try
            //{
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            dt = new DataTable();
            cmd = new MySqlCommand("select c_name from course;", con);
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

            //}
            //catch (Exception e1)
            //{
            //    Response.Write("<script>alert('Something went wrong.<br/>" + e1.Message + "')</script>");

            //}
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String name = txtName.Text.ToString();
        String username = txtUsername.Text.ToString();
        String password = txtPassword.Text.ToString();



        string queryStr = "insert into faculty values('" + username + "','" + password + "','" + name + "');";
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd = new MySqlCommand(queryStr, con);
            if (cmd.ExecuteNonQuery() == 1)
            {
                Response.Write("<script>alert('Faculty added successfully')</script>");
                txtName.Text = "";
                txtUsername.Text = "";
                txtPassword.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Faculty add failed')</script>");
            }
        }
        catch
        {
            Response.Write("<script>alert('Something went wrong.')</script>");
        }
        


    }
    protected void linkFacSubj_Click(object sender, EventArgs e)
    {
        String course = drpCourse.SelectedIndex.ToString();
        String sem = drpSem.SelectedIndex.ToString();
        String subject = drpSubject.SelectedIndex.ToString();
    }
    protected void drpCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        //try
        //{    
        con = new MySqlConnection(constr);

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        dt = new DataTable();
        cmd = new MySqlCommand("SELECT distinct(sem) FROM db_starr.subject where c_name='" + drpCourse.SelectedValue + "';", con);
        //MySqlDataAdapter adp = new MySqlDataAdapter();
        MySqlDataReader reader = cmd.ExecuteReader();
        //adp.SelectCommand = cmd;
        //adp.Fill(dt);

        //dt.Load(reader);

        //    drpCourse.DataSource = dt;
        drpSem.Items.Clear();
        while (reader.Read())
        {

            drpSem.Items.Add(reader.GetString(0));
        }
        //con.Close();
        reader.Close();

        //}
        //catch (Exception e1)
        //{
        //    Response.Write("<script>alert('Something went wrong.<br/>" + e1.Message + "')</script>");

        //}
    }
    protected void drpSem_SelectedIndexChanged(object sender, EventArgs e)
    {
        //try
        //{    
        con = new MySqlConnection(constr);

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if (!IsPostBack) { 
        dt = new DataTable();
        cmd = new MySqlCommand("SELECT sub_name FROM db_starr.subject where  c_name='" + drpCourse.SelectedValue + "' and sem="+drpSem.SelectedValue+";", con);
        //MySqlDataAdapter adp = new MySqlDataAdapter();
        MySqlDataReader reader = cmd.ExecuteReader();
        //adp.SelectCommand = cmd;
        //adp.Fill(dt);

        //dt.Load(reader);

        //    drpCourse.DataSource = dt;
        drpSubject.Items.Clear();
        while (reader.Read())
        {

            drpSubject.Items.Add(reader.GetString(0));
        }
        //con.Close();
        reader.Close();

        //}
        //catch (Exception e1)
        //{
        //    Response.Write("<script>alert('Something went wrong.<br/>" + e1.Message + "')</script>");

        //}
        }
    }
}