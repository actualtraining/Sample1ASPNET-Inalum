﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SampleMasterPage.DAL;

namespace SampleMasterPage
{
    public partial class MyTheme : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pengguna"] != null)
            {
                Pengguna objPengguna = (Pengguna)Session["pengguna"];
                ltUsername.Text = objPengguna.Username;
            }
            
        }
    }
}