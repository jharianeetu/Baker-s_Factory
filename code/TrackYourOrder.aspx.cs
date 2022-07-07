using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class TrackYourOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Session["userid"] as string))
        {
            Response.Redirect("UserLogin.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Redirect("Error.aspx");
        string id = GridView1.SelectedRow.Cells[0].Text;
        pnlProductsDetails.Visible = true;
        pnlPreviousOrders.Visible = false;
        string q = "select * from CustomerProducts where CustomerId=" + id;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn_Str"].ConnectionString);
        conn.Open();

        SqlDataAdapter da = new SqlDataAdapter(q, conn);

        DataSet ds = new DataSet();
        da.Fill(ds, "CustomerProducts");
        GridView2.DataSource = ds;
        GridView2.DataMember = "CustomerProducts";
        GridView2.DataBind();
        conn.Close();

        conn.Open();

        q = "select StatusMessage from DeliveryStatus where TransactionNo=" + id;

        SqlCommand comm = new SqlCommand(q, conn);
        SqlDataReader dr = comm.ExecuteReader();
        dr.Read();
        lblTrackStatus.Text ="Current Status:"+ dr.GetString(0);
        dr.Close();
        conn.Close();

       

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string id = GridView2.SelectedRow.Cells[2].Text;
        //Response.Write("<script> alert(\'hello\') </script>");

        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn_Str"].ConnectionString);
            conn.Open();


            string q = "select * from Product where productid='" + id + "'";
            SqlCommand comm = new SqlCommand(q, conn);
            SqlDataAdapter adopter = new SqlDataAdapter(comm);
            DataTable Dtable = new DataTable();
            adopter.Fill(Dtable);
            dlProducts.DataSource = null;
            dlProducts.DataSource = Dtable;
            dlProducts.DataBind();

            conn.Close();
        }
        catch (Exception ex)
        {
            lblmessage.Text = "Error:" + ex.Message;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        pnlProductsDetails.Visible = false;
        pnlPreviousOrders.Visible = true;
    }
}