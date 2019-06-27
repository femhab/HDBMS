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

public partial class Messaging_Module_Mailing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnMessage_Click(object sender, EventArgs e)
    {
        //insertMessaging_Tbl
        hdbmsClass lib = new hdbmsClass();
        string msg = "";
        string senderID = txtSenderID.Text;
        string recieverID = txtReceiverID.Text;
        string message = txtMessage.Text;
        DateTime msgDate = DateTime.Now;
        string department = "DEPARTMENT";
        string sub = "SUBSCRIBER";
        decimal subID =Convert.ToDecimal(234);
        lib.insertMessaging_Tbl(senderID, recieverID, message, msgDate, department, subID, sub, ref msg);
        if(msg!="")
        {
            MessageBox.Show("Unable to send message because "+ msg);
            return;
        }
        MessageBox.Show("Message Sent !!!");
    }
}