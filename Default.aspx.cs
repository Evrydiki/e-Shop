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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DetailsView1.PageIndex = GridView1.SelectedIndex + (GridView1.PageIndex * GridView1.PageSize);
        DetailsView1.Visible = true;
        Button1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DetailsView1.Visible = false;
        Button1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["ProductID"] = DetailsView1.DataKey.Value;
        Response.Redirect("Registered/Cart.aspx"); 
    }
}
