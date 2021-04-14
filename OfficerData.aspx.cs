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
        strQry = "insert into VotingBooth(State,District,Mandal,Village,BoothNo,OfficerCode,OfficerName,Password,Role) values('" + txtstate.Text + "','" + ddlDistrict.Text + "','" + txtMandal.Text + "','" + txtVillage.Text + "','" + txtBoothNo.Text + "','" + txtOfficerCode.Text + "','" + txtOfficerName.Text + "','" + txtPassword.Text + "','" + ddlRole.Text + "')";
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
        txtstate.Text = "";
        ddlDistrict.Text = "";
        txtMandal.Text = "";
        txtVillage.Text = "";
        txtBoothNo.Text = "";
        txtOfficerCode.Text = "";
        txtOfficerName.Text = "";
        txtPassword.Text = "";
        ddlRole.Text = "";
        txtstate.Focus();
    }
    protected void btnFind_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtOfficerCode.Text == null)
            {
                lblError.Text = "Please Enter a record in the Officer Code.";
            }
            else
            {
                SqlDataReader dr;
                strQry = "select State,District,Mandal,Village,BoothNo,OfficerName,Password,Role from VotingBooth where OfficerCode=" + txtOfficerCode.Text.ToString();
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
                    txtstate.Text = dr[0].ToString();
                    ddlDistrict.Text = dr[1].ToString();
                    txtMandal.Text = dr[3].ToString();
                    txtBoothNo.Text = dr[4].ToString();
                    txtOfficerName.Text = dr[6].ToString();
                    txtPassword.Text = dr[7].ToString();
                    ddlRole.Text = dr[8].ToString();
                    lblError.Text = " ";
                }
                else
                {
                    ClearAll();
                }

                dr.Close();
                con.Close();
            }

        }
        catch (Exception execption)
        {
            lblError.Text = "Record does not Exist!";
            txtOfficerCode.Text = "";
            txtstate.Focus();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        strQry = "update Voters1 set State='" + txtstate.Text.ToString() + "',District='" + ddlDistrict.Text.ToString() + "',Mandal='" + txtMandal.Text.ToString() + "',Village='" + txtVillage.Text.ToString() + "',BoothNo='" + txtBoothNo.Text.ToString() + "',OfficerCode='" + txtOfficerCode.Text.ToString() + "',OfficerName='" + txtOfficerName.Text.ToString() + "',Password='" + txtPassword.Text.ToString() + "',Role='" + ddlRole.Text.ToString();

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
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        strQry = "delete from VotingBooth where OfficerCode='" + int.Parse(txtOfficerCode.Text).ToString() + "'";

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
}