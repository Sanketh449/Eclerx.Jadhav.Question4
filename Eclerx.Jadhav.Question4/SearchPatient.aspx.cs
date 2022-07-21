using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Eclerx.Jadhav.Question4
{
    public partial class SearchPatient : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlDataAdapter adapter = null;
        private DataSet ds = null;
        
       
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void BindGrid()
        {
            using (con = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb; Initial Catalog=HR; Integrated Security=true"))
            {
                using (adapter = new SqlDataAdapter("usp_SearchPatients", con))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adapter.SelectCommand.Parameters.AddWithValue("@DoctorName", TxtSearchDoctor.Text);

                    ds = new DataSet();
                    adapter.Fill(ds, "PatientInformation");

                    GridDetails.DataSource = ds.Tables["PatientInformation"];
                    GridDetails.DataBind();
                }
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            this.BindGrid();
        }
    }
}