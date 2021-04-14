using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    String strQry;
    SqlConnection con = new SqlConnection("server=VEERURAVI\\SERVER;uid=sa;pwd=1998;database=Voters;");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {
            if (Session["UName"] == "")
            {
                Response.Redirect("LoginForm.aspx");
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        String genders;
        if (rbtnMale.Checked == true)
        {
            genders = "Male";
        }
        else
        {
            genders = "Female";
        }

        strQry = "insert into Voters1(Name,Occupation,AadharNo,District,Phone,Age,Gender,Email,Password,Password1) values('" + txtName.Text + "','" + txtOccupation.Text + "','" + txtAadharNo.Text + "','" + ddlDistrict.Text + "','" + txtPhoneNo.Text + "','" + txtAge.Text + "','" + genders + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtPassword1.Text + "')";
        //MsgBox(strQry);        did not add the gender 
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        cmd = new SqlCommand(strQry, con);
        cmd.ExecuteNonQuery();
        con.Close();
        ClearAll();
    }
    private void ClearAll()
    {
        txtAadharNo.Text = "";
        txtAge.Text = "";
        txtEmail.Text = "";
        txtName.Text = "";
        txtOccupation.Text = "";
        txtPassword.Text = "";
        txtPassword1.Text = "";
        txtPhoneNo.Text = "";
        rbtnMale.Checked = false;
        rbtnFemale.Checked = false;
        txtName.Focus();
    }

    protected void btnFind_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtAadharNo.Text == null)
            {
                lblError.Text = "Please Enter a record in the Aadhar No.";
            }
            else
            {
                SqlDataReader dr;
                String gender;
                strQry = "select Name,Occupation,AadharNo,District,Phone,Age,Gender,Email,Password,Password1 from Voters1 where AadharNo=" + txtAadharNo.Text.ToString();
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }



                con.Open();


                cmd = new SqlCommand(strQry, con);
                dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    dr.Read();
                    txtName.Text = dr[0].ToString();
                    txtOccupation.Text = dr[1].ToString();
                    //txtAadharNo.Text = "";
                    ddlDistrict.Text = dr[3].ToString();
                    txtPhoneNo.Text = dr[4].ToString();
                    txtAge.Text = dr[5].ToString();
                    gender = dr[6].ToString();
                    if (gender == "Male")
                    {
                        rbtnMale.Checked = true;
                    }
                    else
                    {
                        rbtnFemale.Checked = true;
                    }
                    txtEmail.Text = dr[7].ToString();
                    txtPassword.Text = dr[8].ToString();
                    txtPassword1.Text = dr[9].ToString();
                    lblError.Text = "";
                }
                else
                {
                    ClearAll();
                    //MessageBox.Show("Record is not Existed, Please Try Again"); 
                }

                dr.Close();
                con.Close();
            }

        }
        catch (Exception execption)
        {
            lblError.Text = "Record does not Exist!";
            txtAadharNo.Text = "";
            txtAadharNo.Focus();


        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        String gender;
        if (rbtnMale.Checked == true)
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }


        strQry = "update Voters1 set sname='" + txtName.Text.ToString() + "',Occupation='" + txtOccupation.Text.ToString() + "',District='" + ddlDistrict.Text.ToString() + "',Phone='" + txtPhoneNo.Text.ToString() + "',Age='" + txtAge.Text.ToString() + "',Gender='" + gender + "',Email='" + txtEmail.Text.ToString() + "',Password='" + txtPassword.Text.ToString() + "',Re-Enter Password='" + txtPassword1.Text.ToString() + "' where AadharNo=" + txtAadharNo.Text.ToString();

        //MessageBox.Show(strQry);

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }



        con.Open();
        cmd = new SqlCommand(strQry, con);
        cmd.ExecuteNonQuery();
        con.Close();
        ClearAll();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        strQry = "delete from Voters1 where AadharNo='" + int.Parse(txtAadharNo.Text).ToString() + "'";

        //MessageBox.Show(strQry);

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }



        con.Open();
        cmd = new SqlCommand(strQry, con);
        cmd.ExecuteNonQuery();
        con.Close();
        ClearAll();
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearAll();
    }
}