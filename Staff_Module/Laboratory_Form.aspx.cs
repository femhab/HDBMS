using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using generalClassLibrary;

public partial class Staff_Module_Laboratory_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button15_Click(object sender, EventArgs e)
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
        Panel5.Visible = false;
        Panel2.Visible = true;
        Panel6.Visible = true;
        Panel7.Visible = true;
        Panel9.Visible = true;

        lblStaffname.Text = ds.Tables[0].Rows[0]["STAFF_NAME"].ToString();
        lblStaffID.Text = ds.Tables[0].Rows[0]["STAFF_ID"].ToString();
        imgPassport.ImageUrl = ds.Tables[0].Rows[0]["IMAGE_UPLOAD"].ToString();
        lblSubscriberName.Text = ds.Tables[0].Rows[0]["SUBSCRIBER_NAME"].ToString();
        lblStaffname2.Text = ds.Tables[0].Rows[0]["STAFF_NAME"].ToString();
    }
    protected void Button12_Click(object sender, EventArgs e)
    {

    }
}