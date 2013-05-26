using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        try
        {
            // Form Validation - Checks for blank required fields and password matching
            if (FirstNameTxt.Text == "")
            {
                FNErrorLbl.Text = "* Required Field";
                return;
            }
            else
            {FNErrorLbl.Text = "";}

            if (LastNameTxt.Text == "")
            {
                LNErrorLbl.Text = "* Required Field";
                return;
            }
            else {LNErrorLbl.Text = "";}

            if (EmailTxt.Text == "")
            {
                EMErrorLbl.Text = "* Required Field";
                return;
            }
            else {EMErrorLbl.Text = "";}

            if (LicenseTxt.Text == "")
            {
                LPErrorLbl.Text = "* Required Field";
                return;
            }
            else { LPErrorLbl.Text = ""; }

            if (PasswordTxt.Text == "")
            {
                PWErrorLbl.Text = "* Required Field";
                return;
            }
            else { PWErrorLbl.Text = ""; }

            if (PasswordConfirmTxt.Text == "")
            {
                PWCErrorLbl.Text = "* Required Field";
                return;
            }
            else { PWCErrorLbl.Text = ""; }

            if (PasswordTxt.Text != PasswordConfirmTxt.Text)
            {
                PWErrorLbl.Text = "* Passwords Must Match";
                PWCErrorLbl.Text = "* Passwords Must Match";
                return;
            }
            else 
            {
                PWErrorLbl.Text = "";
                PWCErrorLbl.Text = "";            
            }
            // End Form Validation

            // Writes user-entered information into the AutoMart database using the AutoMartEntities ADO.Net Data Entities Component then redirects to Default3.aspx
            AutomartModel.AutomartEntities ame = new AutomartModel.AutomartEntities();

            AutomartModel.Person p = new AutomartModel.Person();
            p.FirstName = FirstNameTxt.Text;
            p.LastName = LastNameTxt.Text;
            ame.People.AddObject(p);

            AutomartModel.RegisteredCustomer rc = new AutomartModel.RegisteredCustomer();
            rc.Email = EmailTxt.Text;
            rc.CustomerPassword = PasswordTxt.Text;
            ame.RegisteredCustomers.AddObject(rc);

            AutomartModel.vehicle v = new AutomartModel.vehicle();
            v.LicenseNumber = LicenseTxt.Text;
            v.VehicleMake = MakeTxt.Text;
            v.VehicleYear = YearTxt.Text;
            ame.vehicles.AddObject(v);

            ame.SaveChanges();

            Response.Redirect("Default3.aspx");
        }

        catch
        {
            ErrorLbl.Text = "Registration failed. Please check your entries and try again.";
        }
    }
}