using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;
using System.Text;
using generalClassLibrary;

public partial class Login_Module_Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (radAdmin.Checked == true)
        {
            hdbmsClass lib = new hdbmsClass();
            DataSet ds = new DataSet();
            string msg = "";
            int sn = Convert.ToInt32(txtSN.Text);
            decimal subscriberID = Convert.ToDecimal(txtSubscriberID.Text);

            ds = lib.fetchSubscriberBySN_subID(sn, subscriberID, ref msg);

            if (msg != "" || ds.Tables.Count == 0)
            {
                lblErrorMsg.Text = "unable to fetch subscriber as a result of " + msg;
                MessageBox.Show("Incorrect Details!!!");
                return;
            }

            Response.Redirect("~/Login_Module/Human_Resource_Page.aspx");
        }
        else if (radStaff.Checked == true)
        {
            hdbmsClass lib = new hdbmsClass();
            DataSet ds = new DataSet();
            string msg = "";
            string userName = txtSN.Text;
            string password = txtSubscriberID.Text;

            ds = lib.fetchStaffByUsername_Password(userName, password, ref msg);

            if (msg != "" || ds.Tables.Count == 0)
            {
                lblErrorMsg.Text = "unable to fetch staff as a result of " + msg;
                MessageBox.Show("Incorrect Details!!!");
                return;
            }

            Response.Redirect("~/Staff_Module/Doctors_Form.aspx");
        }
    }
    
}