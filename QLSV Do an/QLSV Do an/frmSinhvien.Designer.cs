namespace QLSV_Do_an
{
    partial class frmSinhvien
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
            label1 = new Label();
            txtHo = new TextBox();
            label2 = new Label();
            txtTendem = new TextBox();
            label3 = new Label();
            txtTen = new TextBox();
            label4 = new Label();
            mtbNgaysinh = new MaskedTextBox();
            label5 = new Label();
            rbtNam = new RadioButton();
            rbtNu = new RadioButton();
            label6 = new Label();
            txtQuequan = new TextBox();
            label7 = new Label();
            txtDiachi = new TextBox();
            label8 = new Label();
            txtEmail = new TextBox();
            label9 = new Label();
            txtSDT = new TextBox();
            button1 = new Button();
            button2 = new Button();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(87, 58);
            label1.Name = "label1";
            label1.Size = new Size(29, 20);
            label1.TabIndex = 0;
            label1.Text = "Họ";
            // 
            // txtHo
            // 
            txtHo.Location = new Point(173, 55);
            txtHo.Name = "txtHo";
            txtHo.Size = new Size(237, 27);
            txtHo.TabIndex = 1;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(87, 104);
            label2.Name = "label2";
            label2.Size = new Size(66, 20);
            label2.TabIndex = 0;
            label2.Text = "Tên đệm";
            // 
            // txtTendem
            // 
            txtTendem.Location = new Point(173, 101);
            txtTendem.Name = "txtTendem";
            txtTendem.Size = new Size(237, 27);
            txtTendem.TabIndex = 1;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(87, 154);
            label3.Name = "label3";
            label3.Size = new Size(32, 20);
            label3.TabIndex = 0;
            label3.Text = "Tên";
            // 
            // txtTen
            // 
            txtTen.Location = new Point(173, 151);
            txtTen.Name = "txtTen";
            txtTen.Size = new Size(237, 27);
            txtTen.TabIndex = 1;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(87, 204);
            label4.Name = "label4";
            label4.Size = new Size(74, 20);
            label4.TabIndex = 0;
            label4.Text = "Ngày sinh";
            // 
            // mtbNgaysinh
            // 
            mtbNgaysinh.Location = new Point(173, 204);
            mtbNgaysinh.Mask = "00/00/0000";
            mtbNgaysinh.Name = "mtbNgaysinh";
            mtbNgaysinh.Size = new Size(125, 27);
            mtbNgaysinh.TabIndex = 2;
            mtbNgaysinh.ValidatingType = typeof(DateTime);
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(87, 248);
            label5.Name = "label5";
            label5.Size = new Size(65, 20);
            label5.TabIndex = 0;
            label5.Text = "Giới tính";
            // 
            // rbtNam
            // 
            rbtNam.AutoSize = true;
            rbtNam.Checked = true;
            rbtNam.Location = new Point(181, 244);
            rbtNam.Name = "rbtNam";
            rbtNam.Size = new Size(62, 24);
            rbtNam.TabIndex = 3;
            rbtNam.TabStop = true;
            rbtNam.Text = "Nam";
            rbtNam.UseVisualStyleBackColor = true;
            // 
            // rbtNu
            // 
            rbtNu.AutoSize = true;
            rbtNu.Location = new Point(338, 244);
            rbtNu.Name = "rbtNu";
            rbtNu.Size = new Size(50, 24);
            rbtNu.TabIndex = 3;
            rbtNu.Text = "Nữ";
            rbtNu.UseVisualStyleBackColor = true;
            rbtNu.CheckedChanged += radioButton2_CheckedChanged;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(87, 292);
            label6.Name = "label6";
            label6.Size = new Size(73, 20);
            label6.TabIndex = 0;
            label6.Text = "Quê quán";
            // 
            // txtQuequan
            // 
            txtQuequan.Location = new Point(173, 289);
            txtQuequan.Name = "txtQuequan";
            txtQuequan.Size = new Size(237, 27);
            txtQuequan.TabIndex = 1;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(87, 339);
            label7.Name = "label7";
            label7.Size = new Size(55, 20);
            label7.TabIndex = 0;
            label7.Text = "Địa chỉ";
            // 
            // txtDiachi
            // 
            txtDiachi.Location = new Point(173, 336);
            txtDiachi.Name = "txtDiachi";
            txtDiachi.Size = new Size(237, 27);
            txtDiachi.TabIndex = 1;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(87, 379);
            label8.Name = "label8";
            label8.Size = new Size(46, 20);
            label8.TabIndex = 0;
            label8.Text = "Email";
            // 
            // txtEmail
            // 
            txtEmail.Location = new Point(173, 376);
            txtEmail.Name = "txtEmail";
            txtEmail.Size = new Size(237, 27);
            txtEmail.TabIndex = 1;
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Location = new Point(87, 421);
            label9.Name = "label9";
            label9.Size = new Size(36, 20);
            label9.TabIndex = 0;
            label9.Text = "SĐT";
            // 
            // txtSDT
            // 
            txtSDT.Location = new Point(173, 418);
            txtSDT.Name = "txtSDT";
            txtSDT.Size = new Size(237, 27);
            txtSDT.TabIndex = 1;
            // 
            // button1
            // 
            button1.Location = new Point(131, 484);
            button1.Name = "button1";
            button1.Size = new Size(94, 29);
            button1.TabIndex = 4;
            button1.Text = "Lưu";
            button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            button2.Location = new Point(301, 484);
            button2.Name = "button2";
            button2.Size = new Size(94, 29);
            button2.TabIndex = 4;
            button2.Text = "Hủy";
            button2.UseVisualStyleBackColor = true;
            // 
            // frmSinhvien
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(543, 588);
            Controls.Add(button2);
            Controls.Add(button1);
            Controls.Add(rbtNu);
            Controls.Add(rbtNam);
            Controls.Add(mtbNgaysinh);
            Controls.Add(txtSDT);
            Controls.Add(txtEmail);
            Controls.Add(txtDiachi);
            Controls.Add(txtQuequan);
            Controls.Add(txtTen);
            Controls.Add(txtTendem);
            Controls.Add(txtHo);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label9);
            Controls.Add(label8);
            Controls.Add(label7);
            Controls.Add(label6);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Name = "frmSinhvien";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "frmSinhvien";
            Load += frmSinhvien_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private TextBox txtHo;
        private Label label2;
        private TextBox txtTendem;
        private Label label3;
        private TextBox txtTen;
        private Label label4;
        private MaskedTextBox mtbNgaysinh;
        private Label label5;
        private RadioButton rbtNam;
        private RadioButton rbtNu;
        private Label label6;
        private TextBox txtQuequan;
        private Label label7;
        private TextBox txtDiachi;
        private Label label8;
        private TextBox txtEmail;
        private Label label9;
        private TextBox txtSDT;
        private Button button1;
        private Button button2;
    }
}