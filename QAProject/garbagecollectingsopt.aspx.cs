using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QAProject
{
    public partial class garbagecollectingsopt : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    if (FileUpload1.HasFile)
                    {
                        conn.Open();
                        string query = "INSERT INTO collectingspot(Id,Title,Image,Location) VALUES(@Id,@Title,@Img,@Location)";
                        SqlCommand sqlCommand = new SqlCommand(query, conn);
                        FileUpload1.SaveAs(Server.MapPath("~/collectingspot/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                        string linkPath = "collectingspot/" + System.IO.Path.GetFileName(FileUpload1.FileName);

                        sqlCommand.Parameters.AddWithValue("@Id", ID.Text);
                        sqlCommand.Parameters.AddWithValue("@Title", title.Text);
                        sqlCommand.Parameters.AddWithValue("@Img", linkPath);
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Retrieve the existing image path from the database based on the ID
                    string selectQuery = "SELECT ImagePath FROM garbage WHERE Id = @Id";
                    SqlCommand selectCommand = new SqlCommand(selectQuery, conn);
                    selectCommand.Parameters.AddWithValue("@Id", ID.Text);
                    string existingImagePath = (string)selectCommand.ExecuteScalar();

                    string query = "UPDATE garbage SET Image = @Img, Title = @Title, Location = @Location WHERE Id = @Id";
                    SqlCommand sqlCommand = new SqlCommand(query, conn);

                    if (FileUpload1.HasFile)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/collectingspot/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                        string linkPath = "collectingspot/" + System.IO.Path.GetFileName(FileUpload1.FileName);
                        sqlCommand.Parameters.AddWithValue("@Img", linkPath);
                    }
                    else
                    {
                        // If no new file is uploaded, use the existing image path
                        sqlCommand.Parameters.AddWithValue("@Img", existingImagePath);
                    }

                    sqlCommand.Parameters.AddWithValue("@Title", title.Text);
                    sqlCommand.Parameters.AddWithValue("@Location", location.Text);
                    sqlCommand.Parameters.AddWithValue("@Id", ID.Text);

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

        protected void Button3_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ID.Text);

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True");
            string sql = "DELETE FROM collectingspot WHERE Id='" + id + "'";
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