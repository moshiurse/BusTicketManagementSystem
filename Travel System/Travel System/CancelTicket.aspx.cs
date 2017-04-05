using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_System
{
    public partial class CancelTicket : System.Web.UI.Page
    {
        DataAccessOperation db = new DataAccessOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"DELETE FROM [dbo].[Reservation]
      WHERE TicketID='"+txtCancelTicket.Text+"'";
            if(db.ExecuteQuery(query)==1)
            {
                lblCancel.Text = "Your Ticket Is Canceled";
            } 
        }
    }
}