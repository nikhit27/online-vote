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
public partial class Default2 : System.Web.UI.Page
{
    SqlCommand cmd;
    String StrQry;
    SqlConnection con = new SqlConnection("server=VEERURAVI\\SERVER;uid=sa;pwd=1998;database=Voters;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtUserName.Text != "" && txtPassword.Text != "")
        {
            SqlDataReader dr;
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            StrQry = "select Role from VotingBooth where OfficerCode = '" + txtUserName.Text + "'and Password = '" + txtPassword.Text + "'";
            cmd = new SqlCommand(StrQry, con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                dr.Read();
                Session["Role"] = dr[0].ToString();
                Session["UName"] = txtUserName.Text;
                dr.Close();
                con.Close();
            }
            else
            {
                dr.Close();
                Session["Role"] = "";
                Session["UName"] = "";
                txtUserName.Text = "";
                txtPassword.Text = "";
                txtUserName.Focus();
            }
            if (Session["Role"].ToString() == "Admin")
            {
                Response.Redirect("AfterLogin.aspx");
            }
            else if (Session["Role"].ToString() == "User")
            {
                Response.Redirect("UserVote.aspx");
            }
            else if (Session["Role"].ToString() == "")
            {
                txtUserName.Focus();
            }
        }
        else {
            txtUserName.Focus();
        }
        

    }
}