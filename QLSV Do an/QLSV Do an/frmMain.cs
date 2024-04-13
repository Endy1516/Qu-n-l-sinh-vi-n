namespace QLSV_Do_an
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }
        public void frmMain_Load(object sender, EventArgs e) 
        {
            var db = new Database();
            dgvData.DataSource = db.Selectdata(null,null);
        
        }
    }
}
