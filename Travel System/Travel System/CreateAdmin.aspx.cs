using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_System
{
    public partial class CreateAdmin : System.Web.UI.Page
    {
        DataAccessOperation db = new DataAccessOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAdmin_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Admin]
           ([username]
           ,[password]
           ,[email])
     VALUES
           ('" + txtAdminUser.Text + "', '" + txtAdminPass.Text + "', '" + txtAdminEmail.Text + "')";
            db.ExecuteQuery(query);
            if (db.ExecuteQuery(query) == 1)
            {

            }
        }
    }
}