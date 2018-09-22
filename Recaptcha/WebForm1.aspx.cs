using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Recaptcha
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string cs = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spRegisterUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramName = new SqlParameter("@Name", txtName.Text);
                    SqlParameter paramEmail = new SqlParameter("@Email", txtEmail.Text);
                    SqlParameter paramPassword = new
                        SqlParameter("@Password", txtPassword.Text);

                    cmd.Parameters.Add(paramName);
                    cmd.Parameters.Add(paramEmail);
                    cmd.Parameters.Add(paramPassword);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
                lblMessage.Text = "Registration Successful";
            }
            else
            {
                lblMessage.Text = "Word verification failed";
            }
        }
        protected void RecaptchaValidator_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = this.recaptcha.IsValid;
        }
    }

}