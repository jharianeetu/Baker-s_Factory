using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
public partial class AllProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Session["userid"] as string))
        {
            Response.Redirect("UserLogin.aspx");
        }
        if (!IsPostBack)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn_Str"].ConnectionString);
                conn.Open();


                string q = "select * from Product";
                SqlCommand comm = new SqlCommand(q, conn);
                SqlDataAdapter adopter = new SqlDataAdapter(comm);
                DataTable Dtable = new DataTable();
                adopter.Fill(Dtable);
                dlProducts.DataSource = null;
                dlProducts.DataSource = Dtable;
                dlProducts.DataBind();
                HighLightCartProducts();
                conn.Close();
            }
            catch (Exception ex)
            {
                lblmessage.Text = "Error:" + ex.Message;
            }

        }
    }
    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        string ProductID = Convert.ToString((((Button)sender).CommandArgument)).ToString();
        string ProductQuantity = "1";
        DataListItem currentItem = (sender as Button).NamingContainer as DataListItem;
        Label lblAvailableStock = currentItem.FindControl("Label3") as Label;

        if (Session["MyCart"] != null)
        {
            DataTable dt = (DataTable)Session["MyCart"];
            var checkProduct = dt.AsEnumerable().Where(r => r.Field<string>("ProductID") == ProductID);
            if (checkProduct.Count() == 0)
            {
                string query = "select * from Product where productid='" + ProductID + "'";
                DataTable dtProducts = GetData(query);
                DataRow dr = dt.NewRow();
                dr["productid"] = Convert.ToString(ProductID);
                dr["productname"] = Convert.ToString(dtProducts.Rows[0]["productname"]);
                dr["producttype"] = Convert.ToString(dtProducts.Rows[0]["producttype"]);
                dr["features"] = Convert.ToString(dtProducts.Rows[0]["features"]);

                dr["stock"] = Convert.ToInt32(dtProducts.Rows[0]["stock"]);
                dr["unitprice"] = Convert.ToInt32(dtProducts.Rows[0]["unitprice"]);

                dr["weight"] = Convert.ToString(dtProducts.Rows[0]["weight"]);
                dr["PImage"] = Convert.ToString(dtProducts.Rows[0]["PImage"]);
                dr["productquantity"] = ProductQuantity;
               
                dt.Rows.Add(dr);

                Session["MyCart"] = dt;
                btnShoppingMCart.Text = dt.Rows.Count.ToString();
            }
        }
        else
        {
            string query = "select * from Product where productid='" + ProductID + "'";
            DataTable dtProducts = GetData(query);

            DataTable dt = new DataTable();

            dt.Columns.Add("productid", typeof(string));
            dt.Columns.Add("productname", typeof(string));
            dt.Columns.Add("producttype", typeof(string));
            dt.Columns.Add("features", typeof(string));
            dt.Columns.Add("stock", typeof(int));
            dt.Columns.Add("unitprice", typeof(int));
            dt.Columns.Add("productquantity", typeof(int));
            dt.Columns.Add("weight", typeof(string));

            dt.Columns.Add("PImage", typeof(string));


            DataRow dr = dt.NewRow();

            dr["productid"] = Convert.ToString(ProductID);
            dr["productname"] = Convert.ToString(dtProducts.Rows[0]["productname"]);
            dr["producttype"] = Convert.ToString(dtProducts.Rows[0]["producttype"]);
            dr["features"] = Convert.ToString(dtProducts.Rows[0]["features"]);

            dr["stock"] = Convert.ToInt32(dtProducts.Rows[0]["stock"]);
            dr["unitprice"] = Convert.ToInt32(dtProducts.Rows[0]["unitprice"]);

            dr["weight"] = Convert.ToString(dtProducts.Rows[0]["weight"]);
            dr["productquantity"] = ProductQuantity;
            dr["PImage"] = Convert.ToString(dtProducts.Rows[0]["PImage"]);
            

            dt.Rows.Add(dr);
            Session["MyCart"] = dt;
            btnShoppingMCart.Text = dt.Rows.Count.ToString();
        }
        HighLightCartProducts();
    }
    public DataTable GetData(string query)
    {
        DataTable dt = new DataTable();
        string conn = ConfigurationManager.ConnectionStrings["Conn_Str"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        da.Fill(dt);
        con.Close();
        return dt;

    }
    private void HighLightCartProducts()
    {
        if (Session["MyCart"] != null)
        {
            DataTable dtProductsAddedToCart = (DataTable)Session["MyCart"];

            if (dtProductsAddedToCart.Rows.Count > 0)
            {
                foreach (DataListItem item in dlProducts.Items)
                {
                    HiddenField hfProductID = item.FindControl("hfProductID") as HiddenField;
                    if (dtProductsAddedToCart.AsEnumerable().Any(row => hfProductID.Value == row.Field<String>("productid")))
                    {
                        Button btnAddToCart = item.FindControl("btnAddToCart") as Button;
                        btnAddToCart.BackColor = System.Drawing.Color.Green;
                        btnAddToCart.Text = "Added To Cart";

                        //Image imgGreenStar = item.FindControl("imgStar") as Image;
                        //imgGreenStar.Visible = true;

                    }

                }
                btnShoppingMCart.Text = dtProductsAddedToCart.Rows.Count.ToString();
            }
        }
    }
    protected void btnShoppingMCart_Click(object sender, EventArgs e)
    {
        GetMyCart();
        HighLightCartProducts();
        //lblCategoryName.Text = "Product in Your Shopping Cart" + i.ToString();
        //lblProducts.Text = "Customer Details";
    }
    protected void btnRemoveFromCart_Click(object sender, EventArgs e)
    {
        string ProductID = Convert.ToString((((Button)sender).CommandArgument)).ToString();
        if (Session["MyCart"] != null)
        {
            DataTable dt = (DataTable)Session["MyCart"];
            DataRow drr = dt.Select("ProductId='" + ProductID + "' ").FirstOrDefault();
            if (drr != null)
            {
                dt.Rows.Remove(drr);
            }
            Session["MyCart"] = dt;
        }
        GetMyCart();
    }

    protected void txtProductQuantity_TextChanged(object sender, EventArgs e)
    {
        TextBox txtQuantity = (sender as TextBox);
        DataListItem currentItem = (sender as TextBox).NamingContainer as DataListItem;
        HiddenField productID = currentItem.FindControl("hfProductID") as HiddenField;
        Label lblAvailableStock = currentItem.FindControl("lblAvailableStock") as Label;

        if (txtQuantity.Text == string.Empty || txtQuantity.Text == "0" || txtQuantity.Text == "1")
        {
            txtQuantity.Text = "1";
        }
        else
        {
            if (Session["MyCart"] != null)
            {
                if (Convert.ToInt32(txtQuantity.Text) <= Convert.ToInt32(lblAvailableStock.Text))
                {
                    DataTable dt = (DataTable)Session["MyCart"];
                    DataRow[] rows = dt.Select("ProductID='" + productID.Value + "'");
                    int index = dt.Rows.IndexOf(rows[0]);
                    dt.Rows[index]["ProductQuantity"] = txtQuantity.Text;
                    Session["MyCart"] = dt;
                }
                else
                {
                    lblAvailableStockAlert.Text = "Alert: Product Buy Out Shoud Not be More than AvailableStock!";
                    txtQuantity.Text = "1";
                }
            }
        }
        UpdateTotalBill();
    }
    private void GetMyCart()
    {
        //string productsids = string.Empty;
        DataTable dtProducts;


        if (Session["MyCart"] != null)
        {
            dtProducts = (DataTable)Session["MyCart"];
        }
        else
        {
            dtProducts = new DataTable();
        }
        if (dtProducts.Rows.Count > 0)
        {
            txtTotalProducts.Text = dtProducts.Rows.Count.ToString();
            btnShoppingMCart.Text = dtProducts.Rows.Count.ToString();
            dlCartProducts.DataSource = dtProducts;
            dlCartProducts.DataBind();
            UpdateTotalBill();

            pnlMyCart.Visible = true;
            pnlCheckOut.Visible = true;
            pnlEmptyCart.Visible = false;
            //pnlCategories.Visible = false;
            pnlProducts.Visible = false;
            pnlOrderPlacedSuccessfully.Visible = false;
        }
        else
        {
            pnlEmptyCart.Visible = true;
            pnlMyCart.Visible = false;
            pnlCheckOut.Visible = false;
            //pnlCategories.Visible = false;
            pnlProducts.Visible = false;
            pnlOrderPlacedSuccessfully.Visible = false;

            dlCartProducts.DataSource = null;
            dlCartProducts.DataBind();
            txtTotalProducts.Text = "0";
            txtTotalPrice.Text = "0";
            btnShoppingMCart.Text = "0";
        }

    }

    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {
        
        string productsids = string.Empty;
        if (txtCustomerPhoneNo.Text.Length < 10 || txtCustomerPhoneNo.Text.Length > 10)
        {
        }
        DataTable dt;
        if (Session["MyCart"] != null)
        {
            dt = (DataTable)Session["MyCart"];
            ShoppingCart k = new ShoppingCart()
            {
                CustomerName = txtCustomerName.Text,
                UserID=Session["userid"].ToString(),
                CustomerEmailID = txtCustomerEmailID.Text,
                CustomerAddress = txtCustomerAddress.Text,
                CustomerPhoneNo = txtCustomerPhoneNo.Text,
                TotalProducts = Convert.ToInt32(txtTotalProducts.Text),
                TotalPrice = Convert.ToInt32(txtTotalPrice.Text),
                ProductList = productsids,
                OrderDateTime=DateTime.Now.ToString("dd-MMM-yyyy hh:mm:ss tt"),
                PaymentMethod = rblPaymentMethod.SelectedItem.Text
            };

            DataTable dtResult = k.SaveCustomerDetails();
           
            String pid_with_name="";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ShoppingCart SaveProducts = new ShoppingCart()
                {
                    CustomerID = Convert.ToInt32(dtResult.Rows[0][0]),
                    ProductID = Convert.ToString(dt.Rows[i]["ProductID"]),
                    TotalProducts = Convert.ToInt32(dt.Rows[i]["ProductQuantity"])
                };
                SaveProducts.SaveCustomerProducts();
                string query = "select * from Product where productid='" + SaveProducts.ProductID + "'";
                DataTable dtProducts = GetData(query);
                pid_with_name = pid_with_name + "Product ID:"+SaveProducts.ProductID+"(" + dtProducts.Rows[0]["productname"] + ")<br/>";

            }
            Session["MyCart"] = null;
            //Session.Clear();
            GetMyCart();

            lblTransectionNo.Text = "Yout Transection No :-" + dtResult.Rows[0][0];

            pnlOrderPlacedSuccessfully.Visible = true;
            pnlCheckOut.Visible = false;
            //pnlCategories.Visible = false;
            pnlMyCart.Visible = false;

            pnlEmptyCart.Visible = false;

            pnlProducts.Visible = false;
            pnlEmptyCart.Visible = false;

            SendOrderPlacedAlert(txtCustomerName.Text, txtCustomerEmailID.Text, Convert.ToString(dtResult.Rows[0][0]), pid_with_name, k.TotalPrice.ToString(),k.OrderDateTime);

            txtCustomerAddress.Text = string.Empty;
            txtCustomerEmailID.Text = string.Empty;
            txtCustomerName.Text = string.Empty;
            txtCustomerPhoneNo.Text = string.Empty;
            txtTotalPrice.Text = "0";
            txtTotalProducts.Text = "0";
        }
        

        
    }

    private void SendOrderPlacedAlert(string CustomerName, string CustomerEmailID, string TransactionNo,string pid_with_name,string total_amt,string orderdate)
    {
        string body = this.PopulateOrderEmailBody(CustomerName, TransactionNo,pid_with_name,total_amt,orderdate);
        EmailEngine.SendEmail(CustomerEmailID, "TBF --- Your Order Details", body);
    }

    private string PopulateOrderEmailBody(string CustomerName, string TransactionNo, string pid_with_name, string total_amt, string orderdate)
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/OrderTemplate.htm")))
        {
            body = reader.ReadToEnd();
        }
        body = body.Replace("{CustomerName}", CustomerName);
        body = body.Replace("{OrderNo}", TransactionNo);
        body = body.Replace("{Pid_with_name}", pid_with_name);
        body = body.Replace("{Total_amt}", total_amt);
        body = body.Replace("{Orderdate}", orderdate);

        body = body.Replace("{TransactionURL}", "http://www.tbf.com/TrackYourOrder.aspx?ID=" + TransactionNo);
        return body;


    }
    private void UpdateTotalBill()
    {
        long TotalPrice = 0;
        long TotalProducts = 0;
        foreach (DataListItem item in dlCartProducts.Items)
        {
            Label PriceLabel = item.FindControl("lblPrice") as Label;
            TextBox ProductQuantity = item.FindControl("txtProductQuantity") as TextBox;
            long ProductPrice = Convert.ToInt64(PriceLabel.Text) * Convert.ToInt64(ProductQuantity.Text);
            TotalPrice = TotalPrice + ProductPrice;
            TotalProducts = TotalProducts + Convert.ToInt32(ProductQuantity.Text);

        }
        txtTotalPrice.Text = Convert.ToString(TotalPrice);
        txtTotalProducts.Text = Convert.ToString(TotalProducts);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        btnShoppingMCart_Click(sender, e);
    }
    
}