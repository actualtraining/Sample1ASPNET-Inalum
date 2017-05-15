using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latihan1
{
    public partial class SampleCheckboxList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string hasil = "";
            foreach (ListItem item in clHobby.Items)
            {
                if (item.Selected)
                {
                    hasil += item.Value + "<br/>";
                }
            }
            lblHasil.Text = hasil;
        }
    }
}