using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QAProject
{
    public partial class captainaccountcreat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(id.Text);
            string Name = name.Text;
            string NICnumber = nic.Text;
            string Address = address.Text;
            string Email = email.Text;


            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Manul Perera\\Documents\\QA Project\\QAProject\\QAProject\\App_Data\\garbagesystem.mdf\";Integrated Security=True");
            string sql = "insert into captainAccount values('" + Id + "','" + Name + "','" + NICnumber + "','" + Address + "','" + Email + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Data inserted succefully");
            }

            catch (SqlException se)
            {
                Response.Write(se);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(updateid.Text);
            string Name = updatename.Text;
            string NICnumber = updatenic.Text;
            string Address = updateaddress.Text;
            string Email = updateemail.Text;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True");
            string sql = "UPDATE captainAccount SET Name='" + Name + "',NICnumber='" + NICnumber + "',Address='" + Address + "',Email='" + Email + "' WHERE Id='" + Id + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Data updated succefully");
            }
            catch (SqlException se)
            {
                Response.Write(se);
         
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(deleteid.Text);

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True");
            string sql = "DELETE FROM captainAccount WHERE Id='" + Id + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Data deleted succefully");
            }
            catch (SqlException se)
            {
                Response.Write(se);
            }
        }
    }
}