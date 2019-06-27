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

public partial class Reference_Forms_Department_Ref : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        string msg = "";
        //decimal subscriberID = lib.GenerateTransID(ref msg);

        string deptID = txtDeptID.Text;
        string deptName = txtDeptName.Text;

        lib.insertDepartment_tbl(deptID, deptName, ref msg);

        if (msg != "")
        {
            lbl.Text = "unable to update department table as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }
        MessageBox.Show("Successful!");

        txtDeptID.Text = "";
        txtDeptName.Text = "";
    }
}