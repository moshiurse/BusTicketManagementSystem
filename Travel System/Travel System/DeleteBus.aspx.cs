using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_System
{
   
    public partial class DeleteBus : System.Web.UI.Page
    {
        DataAccessOperation db = new DataAccessOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            string query = @"DELETE FROM [BusInfo]
      WHERE busID = '"+txtDelete.Text+"'";
            if (db.ExecuteQuery(query) == 1)
            {

            }

            Response.Redirect("ViewBus.aspx");
        }
    }
}