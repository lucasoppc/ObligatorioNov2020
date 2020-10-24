using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> lista = new List<string>();
        lista.Add("Hola");
        lista.Add("Hola");
        lista.Add("Hola");
        lista.Add("Hola");
        lista.Add("Hola");
        gvAvisos.DataSource = lista;
        gvAvisos.DataBind();

        ddlCategoria.Items.Add("Hola");
        ddlCategoria.Items.Add("Hola");
        ddlCategoria.Items.Add("Hola");
    }
}