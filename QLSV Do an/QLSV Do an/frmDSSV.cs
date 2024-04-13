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
            dgvSinhvien.DataSource = new Database().Selectdata("exec SelectallSinhvien", null);

            dgvSinhvien.Columns["MaSv"].HeaderText = "Mã sinh viên";
            dgvSinhvien.Columns["hoten"].HeaderText = "Họ và Tên";
            dgvSinhvien.Columns["ngaysinh"].HeaderText = "Ngày sinh";
            dgvSinhvien.Columns["gioitinh"].HeaderText = "Giới tính ";
            dgvSinhvien.Columns["Quequan"].HeaderText = "Quê quán";
            dgvSinhvien.Columns["Diachi"].HeaderText = "Địa chỉ";
            dgvSinhvien.Columns["SDT"].HeaderText = "Số điện thoại";
        }
    }
}
