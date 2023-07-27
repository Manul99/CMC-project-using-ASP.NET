using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace QAProject
{
    public partial class registrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ID = int.Parse(id.Text);
            string firstName = fName.Text;
            string lastName = lName.Text;
            int mobile=int.Parse(mobileno.Text);
            string username = usernameore.Text;
            string password = pass.Text;
            string confirmPassword=cPass.Text;
            
            string confirmp=cPass.Text;

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Manul Perera\\Documents\\QA Project\\QAProject\\QAProject\\App_Data\\garbagesystem.mdf\";Integrated Security=True");
            string sql = "insert into registrationForm values('"+ID+"','" + firstName + "','" + lastName + "','" + mobile + "','" + username + "','" + password+ "','" + confirmPassword + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Data inserted succefully");
            }

            catch(SqlException se)
            {
                Response.Write(se);
            }
            


        }
    }
}