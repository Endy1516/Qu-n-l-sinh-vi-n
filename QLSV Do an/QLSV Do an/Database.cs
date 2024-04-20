using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.DirectoryServices;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace QLSV_Do_an
{
    public class Database
    {
        private string connetionString = @"Data Source=LACIA\LACIA;Initial Catalog = Quản lí sinh viên; Integrated Security=True";
        private SqlConnection conn;
        private DataTable dt;
        private SqlCommand cmd;
        public Database() {
            try
            {
                conn = new SqlConnection(connetionString);
            }
            catch (Exception ex) 
            {
                MessageBox.Show("conected failed " + ex.Message);
            }
        }
        public DataTable Selectdata(string sql)
        {
            try
            {
                conn.Open();
                cmd = new SqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                return dt;
            }
            catch(Exception ex)
            {
                MessageBox.Show("Lỗi load dữ liệu " + ex.Message);
                return null;
            }
            finally
            {
                conn.Close();
            }
        }

        public DataRow Select(string sql)
        {
            try
            {
                conn.Open ();
                cmd = new SqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                return dt.Rows[0];
               
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi load thông tin: " + ex.Message);
                return null;
            }
            finally
            { 
                conn.Close();
            }
        }

        public int Execute(string sql)
        {
            try
            {
                conn.Open ();
                cmd = new SqlCommand(sql, conn);
                return (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi thực thi câu lệnh: "+ex.Message);
                return -100;
            }
            finally
            { 
                conn.Close(); 
            }
        }
    }
}
