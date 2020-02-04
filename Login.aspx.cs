using System;
using BusApp;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingSystem
{
    public partial class Login : System.Web.UI.Page
    {
        public static string userName, passcode;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void userId_TextChanged(object sender, EventArgs e)
        {

        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            Customer customer = new Customer(userId.Text,password.Text);
            CustomerRepository customerRepository = new CustomerRepository();
            int count = customerRepository.LogIn(customer);
            if (count == 1)
                Response.Write("Logged in ");
            else
                Response.Write("in valid");
        }
    }
}