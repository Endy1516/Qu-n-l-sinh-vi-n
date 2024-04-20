using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLSV_Do_an
{
    public partial class frmSinhvien : Form
    {
        public frmSinhvien(string msv)
        {
            this.msv = msv;
            InitializeComponent();
        }
        private string msv;

        private void frmSinhvien_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(msv))
            {
                this.Text = "Thêm mới sinh viên";
            }
            else
            {
                this.Text = "Cập nhật thông tin sinh viên";
                var r = new Database().Select("selectSV '"+msv?.Trim()+"'");
                txtHo.Text = r["Ho"].ToString();
                txtTendem.Text = r["Tendem"].ToString();
                txtTen.Text = r["Ten"].ToString();
                mtbNgaysinh.Text = r["ngsinh"].ToString();
                if (r["gtinh"].ToString()?.ToLower()=="nam")
                {
                    rbtNam.Checked = true;
                }
                else
                {
                    rbtNu.Checked = true;
                }
                txtQuequan.Text = r["Quequan"].ToString();
                txtDiachi.Text = r["Diachi"].ToString();
                txtSDT.Text = r["SDT"].ToString();
                txtEmail.Text = r["Email"].ToString();

            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
