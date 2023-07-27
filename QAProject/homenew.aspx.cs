using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QAProject
{
    public partial class homenew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Retrieve data from the database and store it in a collection (e.g., List<DataItem>)
                List<dynamic> dataItems = RetrieveDataFromDatabase();

                // Set the data source for the Repeater control
                repeater.DataSource = dataItems;

                // Bind the data to the Repeater control
                repeater.DataBind();
            }

        }

        private List<dynamic> RetrieveDataFromDatabase()
        {
            // Retrieve data from the database and return it as a List<DataItem>
            // Modify this method to fit your database structure and retrieval logic

            List<dynamic> dataItems = new List<dynamic>();

            // Retrieve data from the database
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Manul Perera\Documents\QA Project\QAProject\QAProject\App_Data\garbagesystem.mdf"";Integrated Security=True";
            string query = "SELECT Id, Poster FROM uploadposter";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            int id = (int)reader["Id"];
                            string poster = (string)reader["Poster"];
                           

                            DataItem dataItem = new DataItem(id, poster);
                            dataItems.Add(dataItem);
                        }
                    }
                }
            }

            return dataItems;
        }

        protected void repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        public class DataItem
        {
            public int Id { get; set; }
            public string Poster { get; set; }
           

            public DataItem(int id, string poster)
            {
                Id = id;
                Poster = poster;
                
            }
        }
    }

       
    
}