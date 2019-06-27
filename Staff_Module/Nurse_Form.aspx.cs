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

public partial class Staff_Module_Nurse_Form : System.Web.UI.Page
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

        Panel6.Visible = true;
        Panel5.Visible = false;
        Panel1.Visible = true;
        Panel2.Visible = true;
        Panel7.Visible = true;
        Panel11.Visible = true;
        
        lblStaffname.Text = ds.Tables[0].Rows[0]["STAFF_NAME"].ToString();
        lblStaffID.Text = ds.Tables[0].Rows[0]["STAFF_ID"].ToString();
        imgPassport.ImageUrl = ds.Tables[0].Rows[0]["IMAGE_UPLOAD"].ToString();
        lblSubscriberName.Text = ds.Tables[0].Rows[0]["SUBSCRIBER_NAME"].ToString();
        lblStaffname2.Text = ds.Tables[0].Rows[0]["STAFF_NAME"].ToString();
      
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("results").ToString() + @"\" + FileUpload1.FileName);

        hdbmsClass lib = new hdbmsClass();
        string msg = "";
        //decimal subscriberID = lib.GenerateTransID(ref msg);

        string patientID = lblPatientID.Text;
        string patientName = lblPatientName.Text;  
        DateTime testDate = Convert.ToDateTime(dateTest.Value);
        string bodyTemperature = txtBodyTemperature.Text;
        string bodyPressure = txtBodyPressure.Text;
        string pulseRate = txtPulseRate.Text;
        string heartRate = txtHeartRate.Text;
        string respiration = txtRespiration.Text;
        string oxygenSaturation = txtOxygenSaturation.Text;
        string staffID = lblStaffID.Text;
        string hospitalName = lblSubscriberName.Text;



        lib.insertVital_Signs_tbl(patientID, patientName, testDate, bodyTemperature, bodyPressure, pulseRate, heartRate, respiration, oxygenSaturation, staffID, hospitalName, ref msg);
        
        if (msg != "")
        {
            lblMessage.Text = "unable to update vital signs report as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }
        MessageBox.Show("Successful!");
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        FileUpload2.SaveAs(Server.MapPath("results").ToString() + @"\" + FileUpload2.FileName);

        hdbmsClass lib = new hdbmsClass();
        string msg = "";
        //decimal subscriberID = lib.GenerateTransID(ref msg);

        string patientID = lblPatientID.Text;
        string patientName = lblPatientName.Text;  
        DateTime testDate = Convert.ToDateTime(RegDate.Value);
        string staffID = lblStaffID.Text;
        string doctorID = lblDoctorID.Text;
        string hospitalName = lblSubscriberName.Text;



        lib.insertWard_round_tbl(patientID, patientName, testDate, staffID, doctorID, hospitalName, ref msg);
        
        if (msg != "")
        {
            lblMessage.Text = "unable to update vital signs report as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }
        MessageBox.Show("Successful!");
    }
}