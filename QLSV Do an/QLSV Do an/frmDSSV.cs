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
    public partial class frmDSSV : Form
    {
        public frmDSSV()
        {
            InitializeComponent();
        }

        private void frmDSSV_Load(object sender, EventArgs e)
        {
            dgvSinhvien.DataSource = new Database().Selectdata("exec SelectallSinhvien");

            dgvSinhvien.Columns["MaSv"].HeaderText = "Mã sinh viên";
            dgvSinhvien.Columns["hoten"].HeaderText = "Họ và Tên";
            dgvSinhvien.Columns["ngaysinh"].HeaderText = "Ngày sinh";
            dgvSinhvien.Columns["gioitinh"].HeaderText = "Giới tính ";
            dgvSinhvien.Columns["Quequan"].HeaderText = "Quê quán";
            dgvSinhvien.Columns["Diachi"].HeaderText = "Địa chỉ";
            dgvSinhvien.Columns["SDT"].HeaderText = "Số điện thoại";
        }

        private void dgvSinhvien_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dgvSinhvien_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                var msv = dgvSinhvien.Rows[e.RowIndex].Cells["MaSV"].Value.ToString();
                new frmSinhvien(msv).ShowDialog();
            }
        }

        private void BtnThemmoi_Click(object sender, EventArgs e)
        {
            new frmSinhvien(null).ShowDialog();
        }
    }
}
