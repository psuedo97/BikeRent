using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Services.Description;

namespace BikeRent
{
    public partial class ShowData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            

            SqlConnection conn = new SqlConnection();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            try
            {

                string connString = "Data Source=DESKTOP-H4VJE8D;Initial Catalog =BikeData;User Id=sa;Password=start";

                string query = "select * from Bikelistings";

                conn = new SqlConnection(connString);
                cmd = new SqlCommand(query, conn);
                //cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                GridView1.DataSource = reader;
                GridView1.DataBind();
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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}