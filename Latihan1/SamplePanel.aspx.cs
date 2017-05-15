using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latihan1
{
    public partial class SamplePanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chkVoucher_CheckedChanged(object sender, EventArgs e)
        {
            if (chkVoucher.Checked)
            {
                pnlSample.Visible = true;
            }
            else
            {
                pnlSample.Visible = false;
            }
        }
    }
}