using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_System
{
    public partial class Booking : System.Web.UI.Page
    {
        DataAccessOperation db = new DataAccessOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Reservation]
           ([Seat]
           ,[Date]
           ,[CustomerName]
           ,[BusID]
           ,[CustomerEmail]
           ,[CustomerPhone])
     VALUES
           ('"+ddlSeat.SelectedItem.Value+"','"+txtDate.Text+"','"+txtCusName.Text+"','"+
           ddlBusId.SelectedItem.Value+ "','"+txtCusEmail.Text+"','"+txtCusPhone.Text+"')";

            //db.ExecuteQuery(query);
            if (db.ExecuteQuery(query) == 1)
            {

            }

            //txtCusName.Text = "";
            //txtCusEmail.Text = "";
            //txtCusPhone.Text = "";


            lblBusNo.Text = ddlBusId.SelectedItem.Value;
            lblSeatNo.Text = ddlSeat.SelectedItem.Value;
            lblDateNo.Text = txtDate.Text;
            lblCustomerName.Text = txtCusName.Text;
            lblCustomerEmail.Text = txtCusEmail.Text;
            lblCustomerPhone.Text = txtCusPhone.Text;
        }

        protected void txtCusName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}