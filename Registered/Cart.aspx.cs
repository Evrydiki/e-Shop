using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registered_Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ProductID"] == null)
        {
            Label1.Visible = true;
            Label1.Text = "Το καλάθι είναι ΑΔΕΙΟ";
        }
        else
            Label1.Visible = false;
    }
}