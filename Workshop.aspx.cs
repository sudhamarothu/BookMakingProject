using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookMakingProject
{
    public partial class Workshop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string name, email, referal,phone,age;
            //int  phone, age; Need to check why age and phone are string and not int
            name = NameValue.Text;
            email = EmailValue.Text;
            referal = RadioButton.SelectedItem.Value;
            phone = PhoneNumber.Text;
            age = AgeValue.Text;

            try
            {
                //establish database connection
                string connectionstring = "Server=localhost;Database=BookMaking;Trusted_Connection=True;";
                SqlConnection cn = new SqlConnection(connectionstring);
                cn.Open();
                
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = string.Format("INSERT INTO Workshop  VALUES('{0}','{1}','{2}',{3},'{4}')",name,phone,email,age,referal);
                cmd.ExecuteNonQuery();
                cn.Close();
              
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "window.alert('You have been registered for Book Making wokshop!');", true);
               
                //Clearing the textboxes
                NameValue.Text = "";
                EmailValue.Text="";
                RadioButton.SelectedItem.Value="";
                PhoneNumber.Text = "";
                AgeValue.Text = "";
                

            }
            catch(Exception ex)
            {
                string msg = "Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }


        }
    }
}