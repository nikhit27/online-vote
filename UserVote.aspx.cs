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
        lblUserName.Text = Session["UName"].ToString();
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
                strQry = "select Name,Occupation,AadharNo,District,Phone,Age,Gender,Email from Voters1 where AadharNo='" + txtAadharNo.Text.ToString()+ "' and voted=0";
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
                    txtAadharNo.Text = dr[2].ToString();
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
                    lblError.Text = "";
                    btnVote.Enabled = true;
                }
                else
                {
                    ClearAll();
                    btnVote.Enabled = false;
                    lblError.Text = "Error";
                    txtAadharNo.Focus();
                    //MessageBox.Show("Record is not Existed, Please Try Again"); 
                }
                dr.Close();
                con.Close();
            }
        }
        catch (Exception execption)
        {
            txtAadharNo.Text = "";
            txtAadharNo.Focus();
            lblError.Text = "Execption";
        }
    }

    
    
    private void ClearAll()
    {
        txtAadharNo.Text = "";
        txtAge.Text = "";
        txtEmail.Text = "";
        txtName.Text = "";
        txtOccupation.Text = "";
        txtPhoneNo.Text = "";
        txtName.Focus();
    }



    protected void btnVote_Click(object sender, EventArgs e)
    {
        String strQry;
        //SqlDataReader dr;
        strQry = "update Voters1 set Voted=1 where AadharNo='" + txtAadharNo.Text + "'";
        btnVote.Enabled =false;
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        cmd = new SqlCommand(strQry, con);
        cmd.ExecuteNonQuery();
    }


    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("LoginForm.aspx");
    }
}
