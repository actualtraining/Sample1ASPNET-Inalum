using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latihan2
{
    public partial class SampleValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblHasil.Text = txtFirstName.Text + " " + txtLastName.Text;
        }

        protected void cvNik_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length == 8 && args.Value.ToUpper().StartsWith("IN"))
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}