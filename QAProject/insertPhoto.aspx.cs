using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;


namespace QAProject
{
    public partial class insertPhoto : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void location_TextChanged(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    if (fileUploadControl.HasFile)
                    {
                        conn.Open();
                        string query = "INSERT INTO garbage(Id,ImagePath,Explanation,Location) VALUES(@Id,@Img,@Explanation,@Location)";
                        SqlCommand sqlCommand = new SqlCommand(query, conn);
                        fileUploadControl.SaveAs(Server.MapPath("~/upload/") + System.IO.Path.GetFileName(fileUploadControl.FileName));
                        string linkPath = "upload/" + System.IO.Path.GetFileName(fileUploadControl.FileName);

                        sqlCommand.Parameters.AddWithValue("@Id", Id.Text);
                        sqlCommand.Parameters.AddWithValue("@Img", linkPath);
                        sqlCommand.Parameters.AddWithValue("@Explanation", explain.InnerText);
                        sqlCommand.Parameters.AddWithValue("@Location", location.Text);

                        sqlCommand.ExecuteNonQuery();
                        conn.Close();


                    }
                }

                System.Windows.Forms.MessageBox.Show("Added succefully");
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("Add Failed");
            }

        }

        protected void update_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Id.Text);
            string explanation = explain.InnerText;
            string Location = location.Text;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True") ;
            string sql = "UPDATE garbage SET Explanation='" + explanation + "',Location='" + Location + "' WHERE Id='"+id+"'";
            SqlCommand cmd=new SqlCommand(sql, con);
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

        

        protected void update_Click1(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Retrieve the existing image path from the database based on the ID
                    string selectQuery = "SELECT ImagePath FROM garbage WHERE Id = @Id";
                    SqlCommand selectCommand = new SqlCommand(selectQuery, conn);
                    selectCommand.Parameters.AddWithValue("@Id", Id.Text);
                    string existingImagePath = (string)selectCommand.ExecuteScalar();

                    string query = "UPDATE garbage SET ImagePath = @Img, Explanation = @Explanation, Location = @Location WHERE Id = @Id";
                    SqlCommand sqlCommand = new SqlCommand(query, conn);

                    if (fileUploadControl.HasFile)
                    {
                        fileUploadControl.SaveAs(Server.MapPath("~/upload/") + System.IO.Path.GetFileName(fileUploadControl.FileName));
                        string linkPath = "upload/" + System.IO.Path.GetFileName(fileUploadControl.FileName);
                        sqlCommand.Parameters.AddWithValue("@Img", linkPath);
                    }
                    else
                    {
                        // If no new file is uploaded, use the existing image path
                        sqlCommand.Parameters.AddWithValue("@Img", existingImagePath);
                    }

                    sqlCommand.Parameters.AddWithValue("@Explanation", explain.InnerText);
                    sqlCommand.Parameters.AddWithValue("@Location", location.Text);
                    sqlCommand.Parameters.AddWithValue("@Id", Id.Text);

                    int rowsAffected = sqlCommand.ExecuteNonQuery();
                    conn.Close();

                    if (rowsAffected > 0)
                    {
                        System.Windows.Forms.MessageBox.Show("Updated successfully");
                    }
                    else
                    {
                        System.Windows.Forms.MessageBox.Show("No records found for the provided ID");
                    }
                }
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("Update failed: " + ex.Message);
            }


        }

        protected void delete_Click1(object sender, EventArgs e)
        {
            int id = int.Parse(Id.Text);

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True");
            string sql = "DELETE FROM garbage WHERE Id='" + id + "'";
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