using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SampleMasterPage.DAL
{
    public class RegistrasiDAL
    {
        private string GetConn()
        {
            return ConfigurationManager.ConnectionStrings["InalumDbConnectionString"].ConnectionString;
        }

        public void TambahDataRegistrasi(string username,string password,string aturan)
        {
            using(SqlConnection conn = new SqlConnection(GetConn()))
            {
                string strSql = @"insert into Pengguna(Username,Password,Aturan) 
                values(@Username,CONVERT(varchar(32),HASHBYTES('md5',@Password),2),@Aturan)";

                SqlCommand cmd = new SqlCommand(strSql,conn);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password",password);
                cmd.Parameters.AddWithValue("@Aturan", aturan);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (SqlException sqlEx)
                {
                    throw new Exception(sqlEx.Message);
                }
                finally
                {
                    cmd.Dispose();
                    conn.Close();
                }
            }
        }
    }
}