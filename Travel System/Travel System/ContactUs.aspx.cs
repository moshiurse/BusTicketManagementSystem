using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_System
{
    public partial class ContactUs : System.Web.UI.Page
    {
        DataAccessOperation db = new DataAccessOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitContact_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Contact]
           ([ContactEmail]
           ,[ContactType]
           ,[ContactOpinion])
     VALUES
           ('"+txtContactEmail.Text+"', '"+ddlContactType.SelectedItem.Value+"', '"+txtContactOpinion.Text+"')";
            db.ExecuteQuery(query);

            txtContactEmail.Text = "";
            txtContactOpinion.Text = "";
            ddlContactType.SelectedItem.Value = "";
        }
    }
}