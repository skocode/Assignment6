using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    //On page load, this code will populate the datalists on Default.aspx with the selected information from the Automart database using  AutomartEntities.
    protected void Page_Load(object sender, EventArgs e)
    {
        AutomartModel.AutomartEntities ame = new AutomartModel.AutomartEntities();

        var loc = from l in ame.Locations
                  orderby l.LocationName
                  select new { l.LocationName, l.LocationAddress, l.LocationCity, l.LocationState, l.LocationZip };

        LocationsDL.DataSource = loc.ToList();
        LocationsDL.DataBind();

        var serv = from s in ame.AutoServices
                   orderby s.ServiceName
                   select new { s.ServiceName, s.ServicePrice };

        ServicesDL.DataSource = serv.ToList();
        ServicesDL.DataBind();
    }

    //When the registration button is clicked, the user will be redirefcted to Default2.aspx.
    protected void RegisterBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
}