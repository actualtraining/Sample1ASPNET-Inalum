using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SampleMasterPage.DAL
{
    public class Pengguna
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Aturan { get; set; }
        public bool Persetujuan { get; set; }
    }

    public class RegistrasiDAL
    {
        private string GetConn()
        {
            return ConfigurationManager.ConnectionStrings["InalumDbConnectionString"].ConnectionString;
        }

        public Pengguna ProsesLogin(string username,string password)
        {
            using(SqlConnection conn = new SqlConnection(GetConn()))
            {
                string strSql = @"select * from Pengguna where 
                Username=@Username and Password=CONVERT(varchar(32),HASHBYTES('md5',@Password),2)";

                SqlCommand cmd = new SqlCommand(strSql, conn);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);

                Pengguna objPengguna = null;
                try
                {
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            objPengguna = new Pengguna();
                            objPengguna.Username = dr["Username"].ToString();
                            objPengguna.Aturan = dr["Aturan"].ToString();
                            objPengguna.Persetujuan = Convert.ToBoolean(dr["Persetujuan"].ToString());
                        }
                    }
                    dr.Close();
                    return objPengguna;
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