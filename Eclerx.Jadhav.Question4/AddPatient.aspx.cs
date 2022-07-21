using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Eclerx.Jadhav.Question4
{
    public partial class AddPatient : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb; Initial Catalog=HR; Integrated Security=true"))
            {
                using (cmd = new SqlCommand("usp_AddNewPatient", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PatientId", TxtPatientId.Text);
                    cmd.Parameters.AddWithValue("@PatientName", TxtPatientName.Text);
                    cmd.Parameters.AddWithValue("@Gender", DdlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@Age", TxtAge.Text);
                    cmd.Parameters.AddWithValue("@ContactNumber", TxtContactNumber.Text);
                    cmd.Parameters.AddWithValue("@DoctorName", TxtDoctorName.Text);


                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    cmd.ExecuteNonQuery();
                    Label1.Text = "Patient Added";

                }
            }
        }

    }
}
