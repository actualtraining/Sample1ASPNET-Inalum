using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SampleMasterPage.DAL
{
    public class SampleFocus
    {
        private string GetConn()
        {
            return ConfigurationManager.ConnectionStrings["InalumDbConnectionString"].ConnectionString;
        }
        public string GetNamaBuku(string kodeBuku)
        {
            using(SqlConnection conn = new SqlConnection(GetConn()))
            {
                string strSql = @"select Judul from Buku where KodeBuku=@KodeBuku";
                SqlCommand cmd = new SqlCommand(strSql, conn);
                cmd.Parameters.AddWithValue("@KodeBuku", kodeBuku);

                conn.Open();
                string namaBuku = cmd.ExecuteScalar().ToString();

                cmd.Dispose();
                conn.Close();

                return namaBuku;
            }
        } 
    }
}