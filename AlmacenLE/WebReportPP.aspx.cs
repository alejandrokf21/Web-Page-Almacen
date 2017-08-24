using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenLE
{
    public partial class WebReportPP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Datos.AlmacenEntities m = new Datos.AlmacenEntities())
            {
            }
        }
    }
}