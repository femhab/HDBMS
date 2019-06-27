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

public partial class Staff_Module_Doctors_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
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

        Panel10.Visible = true;
        Panel5.Visible = false;
        Panel1.Visible = true;
        Panel11.Visible = true;

        lblStaffname.Text = ds.Tables[0].Rows[0]["STAFF_NAME"].ToString();
        lblStaffID.Text = ds.Tables[0].Rows[0]["STAFF_ID"].ToString();
        imgPassport.ImageUrl = ds.Tables[0].Rows[0]["IMAGE_UPLOAD"].ToString();
        lblSubscriberName.Text = ds.Tables[0].Rows[0]["SUBSCRIBER_NAME"].ToString();
        lblSubscriberID.Text = ds.Tables[0].Rows[0]["SUBSCRIBER_ID"].ToString();
        lblStaffname2.Text = ds.Tables[0].Rows[0]["STAFF_NAME"].ToString();
        


    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        if (dropDiagnosis.SelectedIndex > -1)
        {
            diagnosisList.Items.Add(dropDiagnosis.SelectedItem);
            diagnosisList.ClearSelection();
        }
    }
    protected void Button19_Click(object sender, EventArgs e)
    {
        if (diagnosisList.SelectedIndex > -1)
        {
            diagnosisList.Items.RemoveAt(diagnosisList.SelectedIndex);
            diagnosisList.ClearSelection();
        }
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button20_Click(object sender, EventArgs e)
    {
        if (investigationDrop.SelectedIndex > -1)
        {
            investigationsList.Items.Add(investigationDrop.SelectedItem);
            investigationsList.ClearSelection();
        }
    }
    protected void Button21_Click(object sender, EventArgs e)
    {
        if (investigationsList.SelectedIndex > -1)
        {
            investigationsList.Items.RemoveAt(investigationsList.SelectedIndex);
            investigationsList.ClearSelection();
        }
    }
    protected void Button23_Click(object sender, EventArgs e)
    {
        if (prescriptionList.SelectedIndex > -1)
        {
            prescriptionsList.Items.Add(prescriptionList.SelectedItem);
            prescriptionsList.ClearSelection();
        }
    }
    protected void Button22_Click(object sender, EventArgs e)
    {
        if (prescriptionsList.SelectedIndex > -1)
        {
            prescriptionsList.Items.RemoveAt(prescriptionsList.SelectedIndex);
            prescriptionsList.ClearSelection();
        }
    }

    protected void Button24_Click(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        string msg = "";
        //decimal subscriberID = lib.GenerateTransID(ref msg);

        string patientID = lblPatientName.Text;
        DateTime consultationDate = Convert.ToDateTime(dateConsultaion.Value);
        string diagnosis = diagnosisList.Text;
        string investigations = investigationsList.Text;
        string prescriptions = prescriptionsList.Text;
        string remark = txtRemark.Text;
        string advice = txtAdvice.Text;
        string doctorID = lblStaffID.Text;




        lib.insertDoctor_report_tbl(patientID, consultationDate, diagnosis, investigations, prescriptions, remark, advice, doctorID, ref msg);

        if (msg != "")
        {
            lblError.Text = "unable to update  doctors report as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }
        MessageBox.Show("Successful!");
    }


    protected void dropDiagnosis_SelectedIndexChanged(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        DataSet ds = new DataSet();
        string msg = "";

        string diagnosis = dropDiagnosis.SelectedItem.ToString();
        string symptoms = symptomsTxt.Text;
        string treatment = txtTreatment.Text;

        ds = lib.fetchSymptomsByDisease(diagnosis, ref msg);

        if (msg != "")
        {
            lblError.Text = "unable to fetch treatment as a result of " + msg;
            MessageBox.Show("Error fetching treatment!!!");
            return;
        }

        symptomsTxt.Text = ds.Tables[0].Rows[0]["SYMPTOMS"].ToString();
        txtTreatment.Text = ds.Tables[0].Rows[0]["TREATMENT"].ToString();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        DataSet ds = new DataSet();
        string msg = "";
        string patientID = txtPatientID.Text;
       


        ds = lib.fetchPatientByID(patientID, ref msg);


        if (msg != "" || ds.Tables.Count == 0)
        {
            lblErrormsg.Text = "unable to fetch patient as a result of " + msg;
            MessageBox.Show("Incorrect Details!!!");
            return;
        }

        lblPatientName.Text = ds.Tables[0].Rows[0]["PATIENT_NAME"].ToString();
        txtGender.Text = ds.Tables[0].Rows[0]["GENDER"].ToString();
        


    }
}
