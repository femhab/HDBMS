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

public partial class Registration_Module_Staff_Reg_Form : System.Web.UI.Page
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
        foreach(CultureInfo getculture in getcultureinfo)
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
        FileUpload1.SaveAs(Server.MapPath("Images").ToString() + @"\" + FileUpload1.FileName);
        PassportImg.ImageUrl = @"~\Images\" + FileUpload1.FileName;

        hdbmsClass lib = new hdbmsClass();
        hdbmsClass lib2 = new hdbmsClass();
        string msg = "";

        //decimal subscriberID = lib.GenerateTransID(ref msg);
        decimal subscriberID = Convert.ToDecimal(lblSubscriberID.Text);
        string subscriberName = lblSubscriberName.Text;
        string staffID = txtStaffID.Text;
        string staffName = txtStaffName.Text;
        string gender = dropGender.Text;
        DateTime dob = Convert.ToDateTime(dateDOB.Value);
        string nationality = dropNationality.Text;
        string state = dropState.Text;
        string lg = dropLG.Text;
        string address = txtAddress.Text;
        string correspondentAddress = txtCorrespondent.Text;
        string mobileNumber = txtMobileNumber.Text;
        string emailAddress = txtEmailAddress.Text;
        string department = dropDepartment.Text;
        string positionLevel = dropPosition.Text;
        DateTime registrationDate = Convert.ToDateTime(dateRegistration.Value);
        string nextOfKin = txtNOK.Text;
        string nokRelationship = dropNOKRel.Text;
        string nokAddress = txtNOKAddress.Text;
        string nokMobileNumber = txtNOKMobile.Text;
        string highestDegreeObtained = dropDegree.Text;
        string role = dropRole.Text;
        string imageUrl = PassportImg.ImageUrl;
        string userName = txtUsername.Text;
        string password = txtPassword.Text;


        lib.insertStaff_reg_tbl(subscriberID, subscriberName, staffID, staffName, gender, dob, nationality, state, lg, address, correspondentAddress, mobileNumber, emailAddress, department, positionLevel, registrationDate, nextOfKin, nokRelationship, nokAddress, nokMobileNumber, highestDegreeObtained, role, imageUrl, userName,password, ref msg);
        lib2.insertMail_reg_tbl(subscriberID, subscriberName, staffID, staffName, gender, nationality, department, mobileNumber, emailAddress, userName, password, ref msg);
        if (msg != "")
        {
            LblMessage.Text = "unable to register subscriber as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }

        else
        {
            MessageBox.Show("Successful!");
            Response.Redirect("~/Registration_Module/Staff_Reg_Form.aspx");
        }



       
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        DataSet ds = new DataSet();
        string msg = "";
        int sn = Convert.ToInt32(txtSN.Text);
        decimal subscriberID = Convert.ToDecimal(txtSubscriberID.Text);

        ds = lib.fetchSubscriberBySN_subID(sn,subscriberID,ref msg);

        if (msg != "" || ds.Tables.Count==0)
        {
            lblErrorMsg.Text = "unable to fetch subscriber as a result of " + msg;
            MessageBox.Show("Incorrect Details!!!");
            return;
        }

        Panel6.Visible = true;
        Panel5.Visible = false;
        lblSubscriberID.Text = ds.Tables[0].Rows[0]["SUBSCRIBER_ID"].ToString();
        lblSubscriberName.Text = ds.Tables[0].Rows[0]["SUBCRIBER_NAME"].ToString();
        lblSubscriberName0.Text = ds.Tables[0].Rows[0]["SUBCRIBER_NAME"].ToString();
       // string subscriberName = lblSubscriberName.Text;
    }
}
