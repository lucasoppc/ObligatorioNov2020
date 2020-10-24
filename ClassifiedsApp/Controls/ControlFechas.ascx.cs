using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controles_ControlFechas : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            DateTime fechaActual = DateTime.Now;
            if (!IsPostBack)
            {
                //Cargo dias
                for (int dia = 1; dia <= DateTime.DaysInMonth(fechaActual.Day, fechaActual.Month); dia++)
                {
                    ddlDia.Items.Add(dia.ToString());
                }


                //Cargo mese
                string[] meses = new string[12];
                meses[0] = "Enero";
                meses[1] = "Febrero";
                meses[2] = "Marzo";
                meses[3] = "Abril";
                meses[4] = "Mayo";
                meses[5] = "Junio";
                meses[6] = "Julio";
                meses[7] = "Agosto";
                meses[8] = "Setiembre";
                meses[9] = "Octubre";
                meses[10] = "Noviembre";
                meses[11] = "Diciembre";

                ddlMes.DataSource = meses;
                ddlMes.DataBind();


                //Cargo anos
                int anoInicial = fechaActual.Year - 2;
                for (int i = 0; i < 5; i++)
                {
                    ddlAno.Items.Add((anoInicial + i).ToString());
                }


                //La primera carga es la fecha actual
                ddlAno.SelectedValue = fechaActual.Year.ToString();
                ddlDia.SelectedValue = fechaActual.Day.ToString();
                ddlMes.SelectedIndex = fechaActual.Month - 1;
            }
            

        }
        catch
        {
            throw new Exception("Error al cargar control de fecha");
        }
    }

    public DateTime FechaSeleccionada
    {
        get{return new DateTime(Convert.ToInt32(ddlAno.SelectedValue), ddlMes.SelectedIndex + 1, ddlDia.SelectedIndex + 1); }

        set
        {
            try
            {
                ddlDia.SelectedIndex = value.Day - 1;
                ddlMes.SelectedIndex = value.Month - 1;
                ddlAno.SelectedValue = Convert.ToString(value.Year);
            }
            catch(Exception ex)
            {
                throw ex;
            }
            
        }
    }

    public bool Enabled
    {
        set 
        { 
            ddlAno.Enabled = value;
            ddlMes.Enabled = value;
            ddlDia.Enabled = value;
        }
    }
}