using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdAction_Click(object sender, EventArgs e)
    {
        string uid = Request.Form["email"];
        string pass = Request.Form["pass"];

        if (uid.Equals("admin@admin.com") && pass.Equals("admin"))
        {
            Response.Redirect("UserHome.aspx");
        }
        else
        {
            Response.Redirect("Error.aspx");
        }

    }
    protected void cmdRegister_Click(object sender, EventArgs e)
    {
        /*string uid = Request.Form["email"];
        string pass = Request.Form["pass"];

        if (uid.Equals("admin@admin.com") && pass.Equals("admin"))
        {
            Response.Redirect("UserHome.aspx");
        }
        else
        {
            Response.Redirect("Error.aspx");
        }
        */
        Response.Redirect("Error.aspx");
    }
}