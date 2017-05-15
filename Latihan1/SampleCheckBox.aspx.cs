using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latihan1
{
    public partial class SampleCheckBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (chkSetuju.Checked)
            {
                lblHasil.Text = "Anda setuju !";
            }
            else
            {
                lblHasil.Text = "Anda tidak setuju !";
            }
        }
    }
}