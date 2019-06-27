using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using generalClassLibrary;

public partial class Registration_Module_Subscriber_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        FileUpload.SaveAs(Server.MapPath("Images").ToString() + @"\" + FileUpload.FileName);
        PassportImg.ImageUrl = @"~\Images\" + FileUpload.FileName;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        string msg = "";
        //decimal subscriberID = lib.GenerateTransID(ref msg);
        decimal subscriberID = Convert.ToDecimal(txtSubscriberID.Text);
        string subscriberName = txtSubscriberName.Text;
        string description = txtDescription.Text;
        decimal amount = Convert.ToDecimal(txtAmount.Text);
        decimal paid = Convert.ToDecimal(txtPaid.Text);
        decimal balance = Convert.ToDecimal(txtBalance.Text);
        DateTime subscriptionDate =Convert.ToDateTime(dateSubscriptionDate.Value);
        DateTime expiryDate = Convert.ToDateTime(dateExpiryDate.Value);
        string subscriberAddress = txtSubscriberAddress.Text;
        string phoneNumber = txtPhoneNumber.Text;

        lib.insertSubscriber_tbl(subscriberID,subscriberName,description,amount,paid,balance,subscriptionDate,expiryDate,subscriberAddress,phoneNumber,ref msg);
        if(msg!="")
        {
            LblMessage.Text = "unable to register subscriber as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }
        MessageBox.Show("Successful!");
    }
}