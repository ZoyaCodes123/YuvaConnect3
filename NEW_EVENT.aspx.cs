using System;
using System.Configuration;
using System.Data.SqlClient;

namespace YuvaConnect
{
    public partial class NEW_EVENT : System.Web.UI.Page
    {
        protected void AddEvent_Click(object sender, EventArgs e)
        {
            // Retrieve form data
            string eventName = TextBox1.Text;
            string stream = TextBox2.Text;
            string branch = TextBox3.Text;
            string location = TextBox4.Text;
            string info = TextBox5.Text;
            string startDate = TextBox6.Text;
            string endDate = TextBox7.Text;
            string startTime = TextBox8.Text;
            string endTime = TextBox9.Text;
            string startDay = TextBox10.Text;
            string endDay = TextBox11.Text;
            string imageUrl = TextBox12.Text;

            // Database connection string from Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["YUVA_CONNECTConnectionString"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Insert query
                    string query = @"INSERT INTO EVENTS 
                                    (EVENT_NAME, STREAM, BRANCH, LOCATION, INFO, STARTDATE, ENDDATE, STARTTIME, ENDTIME, STARTDAY, ENDDAY, IMAGEURL)
                                    VALUES 
                                    (@EventName, @Stream, @Branch, @Location, @Info, @StartDate, @EndDate, @StartTime, @EndTime, @StartDay, @EndDay, @ImageUrl)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Add parameters
                        cmd.Parameters.AddWithValue("@EventName", eventName);
                        cmd.Parameters.AddWithValue("@Stream", stream);
                        cmd.Parameters.AddWithValue("@Branch", branch);
                        cmd.Parameters.AddWithValue("@Location", location);
                        cmd.Parameters.AddWithValue("@Info", info);
                        cmd.Parameters.AddWithValue("@StartDate", Convert.ToDateTime(startDate));
                        cmd.Parameters.AddWithValue("@EndDate", Convert.ToDateTime(endDate));
                        cmd.Parameters.AddWithValue("@StartTime", TimeSpan.Parse(startTime));
                        cmd.Parameters.AddWithValue("@EndTime", TimeSpan.Parse(endTime));
                        cmd.Parameters.AddWithValue("@StartDay", startDay);
                        cmd.Parameters.AddWithValue("@EndDay", endDay);
                        cmd.Parameters.AddWithValue("@ImageUrl", imageUrl);

                        // Execute query
                        cmd.ExecuteNonQuery();
                    }
                }

                // Redirect to events.aspx after successful insertion
                Response.Redirect("events.aspx");
            }
            catch (Exception ex)
            {
                // Handle errors (optional: display error to the user)
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
        }
    }
}
