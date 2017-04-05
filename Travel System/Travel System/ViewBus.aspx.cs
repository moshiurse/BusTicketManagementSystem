using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_System
{
    public partial class ViewBus : System.Web.UI.Page
    {
        DataAccessOperation db = new DataAccessOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadGrid();
            }

        }

        public void EditBusInfo()
        {

        }

        public void deleteBusInfo()
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadGrid();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadGrid();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

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

            GridView1.DataSource = db.GetDataTable(query);
            GridView1.DataBind();
        }
    }
}