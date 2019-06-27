using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using generalClassLibrary;
using System.Data;
using System.Text;
using System.IO;
using System.Drawing;

public partial class Messaging_Module_createAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        // CODE TO CREATE/ADD NEW RECORD FOR MESSAGING:
        hdbmsClass lib = new hdbmsClass();
        decimal subID = Convert.ToDecimal(scbsciberDropDownList1.SelectedValue);
        string subName = scbsciberDropDownList1.SelectedItem.ToString();
        string staffID = txtStaffID.Text;
        string staffName = txtStaffName.Text;
        string username = txtUsername.Text;
        string nationality = dropNationality.SelectedItem.ToString();
        string gender = genderDropDownList2.SelectedItem.ToString();
        string email = txtEmail.Text;
        string pwd = txtPwd.Text;
        string mobileNo = txtMobileNo.Text;
        string dept = deptDropDownList3.SelectedItem.ToString();
        DateTime regDate = DateTime.Now;
        string msg = "";
        lib.insertMailRegTbl(subID, subName, staffID, staffName, gender, nationality, mobileNo, email, dept, username, pwd, regDate, ref msg);
        if(msg!="")
        {
            lblMsg.Text="Unable to create new user as a result of "+msg;
           return;
        }
        MessageBox.Show("Messaging Account was created Successfully!!!");
    }
}