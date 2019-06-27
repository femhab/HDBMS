using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using generalClassLibrary;

public partial class Reference_Forms_Category_Ref_Form : System.Web.UI.Page
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

        Panel2.Visible = true;
        Panel1.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = true;
        
        lblSubscriberName.Text = ds.Tables[0].Rows[0]["SUBSCRIBER_NAME"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         hdbmsClass lib = new hdbmsClass();
        string msg = "";
        //decimal subscriberID = lib.GenerateTransID(ref msg);

        string categoryName = txtCategory.Text;
     
        lib.insertCategory_tbl(categoryName, ref msg);

        if (msg != "")
        {
            lbl.Text = "unable to update category table as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }
        MessageBox.Show("Successful!");
        txtCategory.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        string msg = "";
        //decimal subscriberID = lib.GenerateTransID(ref msg);

        string categoryName = dropCategory.Text;
        string SubCategoryName = txtSubCategory.Text;

        lib.insertCategory_sub_tbl(categoryName, SubCategoryName, ref msg);

        if (msg != "")
        {
            lbl.Text = "unable to update sub category table as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }
        MessageBox.Show("Successful!");

        txtSubCategory.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        string msg = "";
        //decimal subscriberID = lib.GenerateTransID(ref msg);

        string categoryName = dropCategory2.Text;
        string SubCategoryName = dropSubCategory.Text;
        string subSubCategoryName = txtSubSubCategory.Text;

        lib.insertCategory_sub_sub_tbl(categoryName, SubCategoryName,subSubCategoryName, ref msg);

        if (msg != "")
        {
            lbl.Text = "unable to update sub sub category table as a result of " + msg;
            MessageBox.Show("Registration failed!!!");
            return;
        }
        MessageBox.Show("Successful!");

        txtSubSubCategory.Text = "";
    }

    protected void dropSubCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void dropCategory2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void dropCategory2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        hdbmsClass lib = new hdbmsClass();
        DataSet ds = new DataSet();
        string msg = "";

        string category = dropCategory2.SelectedItem.ToString();
        //string subCategory = dropSubCategory.SelectedItem.ToString();


        ds = lib.fetchCategorySubByCategory(category, ref msg);

        if (msg != "")
        {
            lbl.Text = "unable to fetch category as a result of " + msg;
            MessageBox.Show("Error fetching treatment!!!");
            return;
        }

        dropSubCategory.DataSource = ds;
        dropSubCategory.DataTextField = "SUB_CATEGORY_NAME";
        dropSubCategory.DataValueField = "SN";
        dropSubCategory.DataBind();
        dropSubCategory.Items.Insert(0, "Select Sub Category Name");
        dropSubCategory.Items[0].Value = "Select";


       
    }
}