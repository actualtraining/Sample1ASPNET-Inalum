using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleMasterPage
{
    public partial class SampleSqlDataSource1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sdsKategoriError(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                ltError.Text = "<span class='alert alert-danger'>Error: " + e.Exception.Message + "</span>";
                e.ExceptionHandled = true;
            }
        }

       
    }
}