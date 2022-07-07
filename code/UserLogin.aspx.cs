using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdAction_Click(object sender, EventArgs e)
    {
        string uid = Request.Form["email"];
        string pass = Request.Form["pass"];

        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn_Str"].ConnectionString);

            conn.Open();

            string q = "select * from UserLogin where userid=\'" + uid + "\' and pass=\'" + pass + "\'";

            SqlCommand comm = new SqlCommand(q, conn);

            SqlDataReader dr = comm.ExecuteReader();

            dr.Read();
            if (dr.HasRows)
            {
                Session["userid"] = uid;
                Response.Redirect("UserHome.aspx");

            }
            else
            {
                Label1.Text = "Wrong UserID or Password";
            }
            conn.Close();


        }
        catch (Exception ex)
        {
            Label1.Text = "Error:" + ex.Message;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string uid = Request.Form["email"];
        string pass = Request.Form["pass"];

        if (uid == "")
        {
            Label1.Text = "Enter Your UserID";
            return;
        }

        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn_Str"].ConnectionString);

            conn.Open();

            string q = "select * from UserLogin where userid=\'" + uid + "\'";

            SqlCommand comm = new SqlCommand(q, conn);

            SqlDataReader dr = comm.ExecuteReader();

            dr.Read();
            if (dr.HasRows)
            {
                Label1.Text = "Your Password is " + dr.GetString(2);

            }
            else
            {
                Label1.Text = "UserID Not Found";
            }
            conn.Close();
            //Label1.Text = "Hello";

        }
        catch (Exception ex)
        {
            Label1.Text = "Error:" + ex.Message;
        }
    }
}