using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // inicializar la conexión
        SqlConnection con = new SqlConnection();
        SqlDataAdapter ada = new SqlDataAdapter();
        DataSet ds = new DataSet();
        con.ConnectionString = @"server=DESKTOP-STON6PA\SQLEXPRESS;user=usuario324;pwd=123456;database=bdivanexamen1";
        //con.Open();
        ada.SelectCommand = new SqlCommand();
        ada.SelectCommand.Connection = con;
        ada.SelectCommand.CommandText = "SELECT AVG(CASE departamento WHEN '01' THEN n.notafinal end) LP, AVG(CASE departamento WHEN '02' THEN n.notafinal end) ORU,       AVG(CASE departamento WHEN '03' THEN n.notafinal end) SZ,       AVG(CASE departamento WHEN '04' THEN n.notafinal end) CBBA,       AVG(CASE departamento WHEN '05' THEN n.notafinal end) CH,       AVG(CASE departamento WHEN '06' THEN n.notafinal end) PD,       AVG(CASE departamento WHEN '07' THEN n.notafinal end) BN,       AVG(CASE departamento WHEN '08' THEN n.notafinal end) TJ,       AVG(CASE departamento WHEN '09' THEN n.notafinal end) PT FROM persona p, nota n where p.ci = n.ci";
        ada.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
}