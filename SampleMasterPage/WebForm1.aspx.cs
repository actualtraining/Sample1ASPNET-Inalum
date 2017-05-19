using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleMasterPage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                ReportViewer1.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                ReportViewer1.LocalReport.DataSources.Clear();
                DataView dvKategori = (DataView)sdsKategori.Select(DataSourceSelectArguments.Empty);
                ReportDataSource katDatasource = new ReportDataSource("DataSet1",dvKategori.ToTable());
                ReportViewer1.LocalReport.DataSources.Add(katDatasource);
            }
        }
    }
}