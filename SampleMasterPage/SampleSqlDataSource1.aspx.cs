using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.IO;

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

        protected void btnEditManual_Click(object sender, EventArgs e)
        {
            sdsKategori.UpdateParameters[0].DefaultValue = "Swift Update";
            sdsKategori.UpdateParameters[1].DefaultValue = "11";
            try
            {
                sdsKategori.Update();
                ltError.Text = "<span class='alert alert-success'>Data berhasil diupdate !</span>";
                gvKategori.DataBind();
            }
            catch (Exception ex)
            {
                ltError.Text = "<span class='alert alert-success'>" + ex.Message + "</span>";
            }
        }

        protected void btnSelectManual_Click(object sender, EventArgs e)
        {
            DataView results = (DataView)sdsKategori.Select(DataSourceSelectArguments.Empty);
            foreach(DataRow row in results.Table.Rows)
            {
                ltResult.Text += row[0].ToString() + " " + row[1].ToString() + "<br/>";
            }
        }

        protected void btnExportToExcel_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using(StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);
                gvKategori.AllowPaging = false;
                gvKategori.DataBind();
                gvKategori.RenderControl(hw);
                Response.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
    }
}