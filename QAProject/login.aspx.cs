using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace QAProject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                string username = loginUsername.Text;
                string password = loginPassword.Text;

                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Manul Perera\\Documents\\QA Project\\QAProject\\QAProject\\App_Data\\garbagesystem.mdf\";Integrated Security=True");
                string sql = "SELECT COUNT(*) FROM registrationForm WHERE username = @username AND password = @password";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                try
                {
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    if (count > 0)
                    {
                        // Successful login, redirect to the next page
                        Response.Redirect("GTFPage.aspx");
                    }
                    else
                    {
                        // Invalid login, display alert message
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid username or password.');", true);
                    }
                }
                catch (SqlException se)
                {
                    Response.Write(se);
                }
                finally
                {
                    con.Close();
                }
            }

        }
    
}