using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace BikeRent
{
    public partial class BikeForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SaveData()
        {
            SqlConnection conn = new SqlConnection();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();

            try
            {
                
                string connString = "Data Source=DESKTOP-H4VJE8D;Initial Catalog =BikeData;User Id=sa;Password=start";

                string query = "insert into BikeListings(Name,Brand, Rent, ImageUrl) values ('"+name.Value+"','" + brand.Value + "','" + rent.Value + "','" + myfile.Value + "')";

                conn = new SqlConnection(connString);
                cmd = new SqlCommand(query, conn);
                //cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                int m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    Response.Write("<script>alert('Data Inserted')</script>");
                }
                else
                {
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
                conn.Dispose();
                da.Dispose();

            }
        }

        protected void btnSaveClick(object sender, EventArgs e)
        {
            SaveData();
        }
    }
}