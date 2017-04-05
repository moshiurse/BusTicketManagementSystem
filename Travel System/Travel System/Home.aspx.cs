using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_System
{
    public partial class Home : System.Web.UI.Page
    {
        DataAccessOperation db = new DataAccessOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadGrid();
            }
        }

        public void LoadGrid()
        {
            string query = @"SELECT [busID]
                              ,[route]
                              ,[capacity]
                              ,[arrTime]
                              ,[deptTime]
                              ,[busType]
                              ,[price]
                          FROM [dbo].[BusInfo]";

            busInfoGrid.DataSource = db.GetDataTable(query);
            busInfoGrid.DataBind();
        }



        protected void busInfoGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"SELECT [busID]
      ,[route]
      ,[capacity]
      ,[arrTime]
      ,[deptTime]
      ,[busType]
      ,[price]
  FROM [dbo].[BusInfo] WHERE busId='" + txtSearch.Text + "'";

            db.ExecuteQuery(query);
            if (db.ExecuteQuery(query) == 1)
            {

            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}