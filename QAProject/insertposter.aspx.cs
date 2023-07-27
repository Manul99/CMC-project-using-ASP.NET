using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QAProject
{
    public partial class insertposter : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    if (FileUpload1.HasFile)
                    {
                        conn.Open();
                        string query = "INSERT INTO uploadposter(Id,Poster) VALUES(@Id,@Img)";
                        SqlCommand sqlCommand = new SqlCommand(query, conn);
                        FileUpload1.SaveAs(Server.MapPath("~/Posters/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                        string linkPath = "Posters/" + System.IO.Path.GetFileName(FileUpload1.FileName);

                        sqlCommand.Parameters.AddWithValue("@Id", capid.Text);
                        sqlCommand.Parameters.AddWithValue("@Img", linkPath);
                        

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
    }
}