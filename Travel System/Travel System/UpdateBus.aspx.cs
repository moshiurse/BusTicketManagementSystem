using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_System
{
    public partial class UpdateBus : System.Web.UI.Page
    {
        DataAccessOperation db = new DataAccessOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();        }

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

            GridView1.DataSource = db.GetDataTable(query);
            GridView1.DataBind();
        }

        protected void btnUpdateBus_Click(object sender, EventArgs e)
        {

            string query = @"UPDATE [dbo].[BusInfo] SET [route] = '"+ txtUpdateRoute.Text+ "', [capacity] = '" + txtUpdateCapacity.Text + "', [arrTime] = '" + txtUpdateArrTime.Text + "', [deptTime] = '" + txtUpdateDeptTime.Text + "', [busType] = '" + ddlUpdateBusType.SelectedItem.Value + "',[price] = '" + txtUpdatePrice.Text + "'  WHERE busID='" + txtUpdateId.Text+"'";

            db.ExecuteQuery(query);
            if (db.ExecuteQuery(query) == 1)
            {
                Label1.Text = "Your Data Is Updated Successfully!!!!";
            }
            

            LoadGrid();
            txtUpdateId.Text = "";
            txtUpdateRoute.Text = "";
            txtUpdateCapacity.Text = "";
            txtUpdateArrTime.Text = "";
            txtUpdateDeptTime.Text = "";
            ddlUpdateBusType.SelectedItem.Value = "";
            txtUpdatePrice.Text = "";

        }
    }
}