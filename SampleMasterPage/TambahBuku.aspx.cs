using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleMasterPage
{
    public partial class TambahBuku : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lvTambahBuku_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                ltKeterangan.Text = "<span class='alert alert-warning'>" + e.Exception.Message + "</span>";
            }
            else
            {
                ltKeterangan.Text = "<span class='alert alert-warning'>Data buku berhasil ditambah </span>";
            }
        }
    }
}