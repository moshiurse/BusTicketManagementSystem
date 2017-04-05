using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_System
{
    public partial class AddBus : System.Web.UI.Page
    {
        DataAccessOperation db = new DataAccessOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddBus_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[BusInfo]
           ([busID]
           ,[route]
           ,[capacity]
           ,[arrTime]
           ,[deptTime]
           ,[busType]
           ,[price])
     VALUES
           ('"+txtID.Text+"', '"+txtRoute.Text+"', '"+txtCapacity.Text+"' ,'"+
           txtArrTime.Text+"', '"+txtDeptTime.Text+"', '"+
           ddlbusType.SelectedItem.Value+"', '"+txtPrice.Text+"')";

            //db.ExecuteQuery(query);
            if(db.ExecuteQuery(query)== 1)
            {

            }

            Label1.Text = "your Data is Inserted Successfully!!!";
            txtID.Text = "";
            txtRoute.Text = "";
            txtCapacity.Text = "";
            txtArrTime.Text = "";
            txtDeptTime.Text = "";
            ddlbusType.SelectedItem.Value = "0";
            txtPrice.Text = "";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            
        }
    }
}