using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.MasterPage
{
    dtregTableAdapters.USERMST_SELECT11TableAdapter radapter = new dtregTableAdapters.USERMST_SELECT11TableAdapter();
    dtreg.USERMST_SELECT11DataTable rdt = new dtreg.USERMST_SELECT11DataTable();

    DS_FRIEND.FRIENDMST2_SELECT1DataTable FDT = new DS_FRIEND.FRIENDMST2_SELECT1DataTable();
    DS_FRIENDTableAdapters.FRIENDMST2_SELECT1TableAdapter FAdapter = new DS_FRIENDTableAdapters.FRIENDMST2_SELECT1TableAdapter();
    DS_MessageTableAdapters.MESSAGEMST2_SELECT11TableAdapter MAdapter = new DS_MessageTableAdapters.MESSAGEMST2_SELECT11TableAdapter();
    DS_Message.MESSAGEMST2_SELECT11DataTable MDT = new DS_Message.MESSAGEMST2_SELECT11DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            rdt = radapter.Getdatabyid(Convert.ToUInt16(Session["uid"]));

            lblwelcome.Text = "Welcome" + " " + rdt.Rows[0]["FName"].ToString();
            lblprofilenme.Text = rdt.Rows[0]["FName"].ToString();
            Image1.ImageUrl = rdt.Rows[0]["ProfilePic"].ToString();


            rdt = radapter.Select_Right_Panle_Display(Session["email"].ToString());
            DlistUser.DataSource = rdt;
            DlistUser.DataBind();

            rdt = radapter.Chek_Frd_Request(Session["email"].ToString());
            lnkfreq.Text = rdt.Rows.Count.ToString();


            MDT = MAdapter.Select_Email_Status(Session["email"].ToString(), 0);
            lnkmessage.Text = MDT.Rows.Count.ToString();

        }
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        FileUpload1.SaveAs(Server.MapPath("~/Image/") + FileUpload1.FileName);
        Session["image"] = "~/Image/" + FileUpload1.FileName;
        radapter.uploadimage(Convert.ToUInt16(Session["uid"]),"~/Image/"+FileUpload1.FileName);
        rdt=radapter.Getdatabyid(Convert.ToUInt16(Session["uid"]));
        Response.Redirect("Main.aspx");
    }
    protected void DlistUser_ItemCommand(object source, DataListCommandEventArgs e)
    {
        FAdapter.Insert(Session["email"].ToString(), e.CommandArgument.ToString(), 0, System.DateTime.Now);
        rdt = radapter.Select_Right_Panle_Display(Session["email"].ToString());
        DlistUser.DataSource = rdt;
        DlistUser.DataBind();
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?id=" + txtsearch.Text);

    }
    protected void lnkmessage_Click(object sender, EventArgs e)
    {

        Response.Redirect("MyMessage.aspx");
    }
}

