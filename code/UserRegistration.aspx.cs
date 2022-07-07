using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdAction_Click(object sender, EventArgs e)
    {
        string uid = userid.Value.ToString();

        string password = pass.Value.ToString();

        string email = emailid.Value.ToString();

        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn_Str"].ConnectionString);

            conn.Open();
            string q = "Insert into UserLogin values('" + uid + "',\'" + email + "\','" + password + "')";
            SqlCommand comm = new SqlCommand(q, conn);
            int i = comm.ExecuteNonQuery();
            Label1.Text = "User Successfully Registered!! <a href=\"UserLogin.aspx\">Click Here To Login</a>";
            conn.Close();


        }
        catch (Exception ex)
        {
            Label1.Text = "Error:" + ex.Message;
        }

    }
}