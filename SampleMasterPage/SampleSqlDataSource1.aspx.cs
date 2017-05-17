using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

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
                ltError.Text = "<span class='alert alert-danger'>Error:"+e.Exception.Message+"</span>";
                e.ExceptionHandled = true;
            }
        }

        protected void sdsKategori_Inserting(object sender, SqlDataSourceCommandEventArgs e)
        {
            foreach(SqlParameter par in e.Command.Parameters)
            {
                if (par.Value == null)
                {
                    e.Cancel = true;
                    ltError.Text = "<span class='alert alert-danger'>Error: Field " + 
                        par.ParameterName + " harus diisi ! </span>";
                }
            }
        }

        protected void btnInsertManual_Click(object sender, EventArgs e)
        {
            sdsKategori.InsertParameters[0].DefaultValue = "Sample 1";
            sdsKategori.Insert();
            gvKategori.DataBind();
        }
    }
}