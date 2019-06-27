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

public partial class Registration_Module_Patient_Reg_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dropNationality.DataSource = country_name_list();
            dropNationality.DataBind();
        }
    }
    public static List<string> country_name_list()
    {
        List<string> Culturelist = new List<string>();
        CultureInfo[] getcultureinfo = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
        foreach (CultureInfo getculture in getcultureinfo)
        {
            RegionInfo getregininfo = new RegionInfo(getculture.LCID);
            if (!(Culturelist.Contains(getregininfo.EnglishName)))
            {
                Culturelist.Add(getregininfo.EnglishName);
            }
        }

        Culturelist.Sort();
        return Culturelist;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload2.SaveAs(Server.MapPath("Images").ToString() + @"\" + FileUpload2.FileName);
        PassportImg.ImageUrl = @"~\Images\" + FileUpload2.FileName;

        hdbmsClass lib = new hdbmsClass();
        string msg = "";
        //decimal subscriberID = lib.GenerateTransID(ref msg);
        decimal subscriberID = Convert.ToDecimal(lblSubscriberID.Text);
        string subscriberName = lblSubscriberName.Text;
        string patientID = txtPatientID.Text;
        string patientName = txtPatientName.Text;
        string gender = dropGender.Text;
        DateTime dob = Convert.ToDateTime(dateDOB.Value);
        string nationality = dropNationality.Text;
        string state = dropState.Text;
        string lg = dropLG.Text;
        string address = txtAddress.Text;
        string mobileNumber = txtMobileNumber.Text;
        string emailAddress = txtEmailAddress.Text;
        string bloodGroup = dropBloodGroup.Text;
        string genotype = dropGenotype.Text;
        DateTime registrationDate = Convert.ToDateTime(dateRegistration.Value);
        string nextOfKin = txtNOK.Text;
        string nokRelationship = dropNOKRel.Text;
        string nokAddress = txtNOKAddress.Text;
        string nokMobileNumber = txtNOKMobile.Text;
        string staffIncharge = lblStaffName.Text;
        DateTime dod = Convert.ToDateTime(dateDOD.Value);
        string imageUrl = PassportImg.ImageUrl;


        lib.insertPatient_reg_tbl( subscriberID, subscriberName, patientID,  patientName,  gender, dob, nationality, state, lg, address, mobileNumber, emailAddress, bloodGroup,  genotype, registrationDate, nextOfKin,  nokRelationship,  nokAddress, nokMobileNumber,staffIncharge, dod,imageUrl, ref msg);
        if (msg != "")
        {
            LblMessage.Text = "unable to register subscriber as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }
        MessageBox.Show("Successfully Registered! You now have an ID");



        /*DataSet ds = new DataSet();
        
        string thepatientID = txtPatientID.Text;


        ds = lib.fetchPatientByPatientID(thepatientID, ref msg);

        if (msg != "" || ds.Tables.Count == 0)
        {
            lblErrormsg.Text = "unable to fetch patient details as a result of " + msg;
            MessageBox.Show("Incorrect Details!!!");
            return;
        }

        Response.Redirect("~/Staff_Module/Patients_Form.aspx");
         
        lblPatientName.Text = ds.Tables[0].Rows[0]["PATIENT_NAME"].ToString();
        lblPatientID.Text = ds.Tables[0].Rows[0]["PATIENT_ID"].ToString();
        lblGender.Text = ds.Tables[0].Rows[0]["GENDER"].ToString();
        lblPhoneNumber.Text = ds.Tables[0].Rows[0]["MOBILE_NUMBER"].ToString(); 
        lblEmailAddress.Text = ds.Tables[0].Rows[0]["EMAIL_ADDRESS"].ToString(); 
         lblBloodGroup.Text = ds.Tables[0].Rows[0]["BLOOD_GROUP"].ToString(); 
         */

        Response.Redirect("~/Staff_Module/Patients_Form.aspx");

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

        Panel2.Visible = true;
        Panel5.Visible = false;
        lblSubscriberID.Text = ds.Tables[0].Rows[0]["SUBSCRIBER_ID"].ToString();
        lblSubscriberName.Text = ds.Tables[0].Rows[0]["SUBSCRIBER_NAME"].ToString();
        lblSubscriberName0.Text = ds.Tables[0].Rows[0]["SUBSCRIBER_NAME"].ToString();
        lblStaffName.Text = ds.Tables[0].Rows[0]["STAFF_NAME"].ToString();


    }
}