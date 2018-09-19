using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace ImplementingAutocompleteTextbox
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetStudents(null);
            }
        }

        private void GetStudents(string studentName)
        {
            //autocomplete not working properly.
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetStudents", con);
                cmd.CommandType = CommandType.StoredProcedure;

                if (!string.IsNullOrEmpty(studentName))
                {
                    SqlParameter parameter = new SqlParameter("@EmployeeName", studentName);
                    cmd.Parameters.Add(parameter);
                }
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                gvStudents.DataSource = rdr;
                gvStudents.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GetStudents(txtStudentName.Text);
        }
    }
}