﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleMasterPage
{
    public partial class SampleSqlParameter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                gvKategori.EmptyDataText = "Data tidak ditemukan...";
                gvBuku.EmptyDataText = "Data tidak ditemukan...";
            }
        }
    }
}