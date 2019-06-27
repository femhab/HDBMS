using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using generalClassLibrary;

public partial class Reference_Forms_Price_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        DataSet ds = new DataSet();
        string msg = "";
        string userName = txtUsername.Text;
        string password = txtPassword.Text;

        ds = lib.fetchStaffByUsername_Password(userName, password, ref msg);

        if (msg != "" || ds.Tables.Count == 0)
        {
            lblErrormsg.Text = "unable to fetch staff as a result of " + msg;
            MessageBox.Show("Incorrect Details!!!");
            return;
        }

        
        Panel1.Visible = true;
        Panel3.Visible = false;
        

       
        lblSubscriberName.Text = ds.Tables[0].Rows[0]["SUBSCRIBER_NAME"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        string msg = "";
        //decimal subscriberID = lib.GenerateTransID(ref msg);

        string department = dropDept.Text;
        string services = txtServices.Text;
        string price = txtPrice.Text;

        lib.insertPrice_list_tbl(department, services, price, ref msg);

        if (msg != "")
        {
            lbl.Text = "unable to update price list as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }
        MessageBox.Show("Successful!");

        txtServices.Text = "";
        txtPrice.Text = "";
    }
}