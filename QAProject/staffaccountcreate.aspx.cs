using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


namespace QAProject
{
    public partial class staffaccountcreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(ID.Text);
            string Name = name.Text;
            string NICnumber= nic.Text;
            string Address =address.Text;
            string Email=email.Text;
           

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Manul Perera\\Documents\\QA Project\\QAProject\\QAProject\\App_Data\\garbagesystem.mdf\";Integrated Security=True");
            string sql = "insert into staffAccount values('" + Id + "','" + Name + "','" + NICnumber + "','" + Address + "','" + Email + "')";
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

            int Id = int.Parse(updateID.Text);
            string Name = updatename.Text;
            string NICnumber = updatenic.Text;
            string Address = updateaddress.Text;
            string Email = updateemail.Text;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True");
            string sql = "UPDATE staffAccount SET Name='"+Name+"',NICnumber='"+NICnumber+"',Address='"+Address+"',Email='"+Email+"' WHERE Id='"+Id+"'";
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

            int Id = int.Parse(deleteID.Text);
            
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True");
            string sql = "DELETE FROM staffAccount WHERE Id='"+Id+"'";
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            int? ID= null;
            name.Text = string.Empty;
            nic.Text = string.Empty;
            address.Text = string.Empty;
            email.Text = string.Empty;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int? updateID = null;
            updatename.Text= string.Empty;
            updatenic.Text= string.Empty;
            updateaddress.Text= string.Empty;
            updateemail.Text= string.Empty;
        }
    }
}