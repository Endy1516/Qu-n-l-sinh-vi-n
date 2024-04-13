namespace QLSV_Do_an
{
    partial class frmDSSV
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            dgvSinhvien = new DataGridView();
            label1 = new Label();
            txtTimkiem = new TextBox();
            btnTimkiem = new Button();
            BtnThemmoi = new Button();
            ((System.ComponentModel.ISupportInitialize)dgvSinhvien).BeginInit();
            SuspendLayout();
            // 
            // dgvSinhvien
            // 
            dgvSinhvien.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvSinhvien.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvSinhvien.Dock = DockStyle.Bottom;
            dgvSinhvien.Location = new Point(0, 143);
            dgvSinhvien.MultiSelect = false;
            dgvSinhvien.Name = "dgvSinhvien";
            dgvSinhvien.RowHeadersWidth = 51;
            dgvSinhvien.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgvSinhvien.Size = new Size(1298, 595);
            dgvSinhvien.TabIndex = 0;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(691, 67);
            label1.Name = "label1";
            label1.Size = new Size(66, 20);
            label1.TabIndex = 1;
            label1.Text = "Từ khóa ";
            // 
            // txtTimkiem
            // 
            txtTimkiem.Location = new Point(795, 63);
            txtTimkiem.Name = "txtTimkiem";
            txtTimkiem.Size = new Size(239, 27);
            txtTimkiem.TabIndex = 2;
            // 
            // btnTimkiem
            // 
            btnTimkiem.Location = new Point(1054, 63);
            btnTimkiem.Name = "btnTimkiem";
            btnTimkiem.Size = new Size(94, 29);
            btnTimkiem.TabIndex = 3;
            btnTimkiem.Text = "Tìm kiếm";
            btnTimkiem.UseVisualStyleBackColor = true;
            // 
            // BtnThemmoi
            // 
            BtnThemmoi.Location = new Point(1154, 63);
            BtnThemmoi.Name = "BtnThemmoi";
            BtnThemmoi.Size = new Size(94, 29);
            BtnThemmoi.TabIndex = 4;
            BtnThemmoi.Text = "Thêm mới";
            BtnThemmoi.UseVisualStyleBackColor = true;
            // 
            // frmDSSV
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1298, 738);
            Controls.Add(BtnThemmoi);
            Controls.Add(btnTimkiem);
            Controls.Add(txtTimkiem);
            Controls.Add(label1);
            Controls.Add(dgvSinhvien);
            Name = "frmDSSV";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Danh sách sinh viên ";
            Load += frmDSSV_Load;
            ((System.ComponentModel.ISupportInitialize)dgvSinhvien).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView dgvSinhvien;
        private Label label1;
        private TextBox txtTimkiem;
        private Button btnTimkiem;
        private Button BtnThemmoi;
    }
}