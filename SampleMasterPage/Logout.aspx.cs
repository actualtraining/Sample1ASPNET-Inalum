using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleMasterPage
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pengguna"] != null)
            {
                Session["pengguna"] = null;
                Session.RemoveAll();
                Response.Redirect("~/LoginForm");
            }
        }
    }
}