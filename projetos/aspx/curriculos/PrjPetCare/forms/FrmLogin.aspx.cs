using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjPetCare.forms
{
    public partial class FrmLogin : System.Web.UI.Page
    {
        ClasseConexao ClsCon;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEntrar_Click(object sender, EventArgs e)
        {
            ClsCon = new ClasseConexao();
            dt = new DataTable();

            if (DdlTipo.SelectedItem.Text == "Administrador")
            {
                string user = TxtUser.Text;
                string senha = TxtSenha.Text;
                dt = ClsCon.executarSQL("exec usp_Login_ADM '" + user + "','" + senha + "'");

                if (dt.Rows.Count > 0)
                {
                    Session["login"] = 1;
                    Response.Redirect("FrmCurriculos.aspx");
                }
                else
                {

                }
            }
            else if (DdlTipo.SelectedItem.Text == "RH")
            {
                string user = TxtUser.Text;
                string senha = TxtSenha.Text;
                dt = ClsCon.executarSQL("exec usp_Login_ADM '" + user + "','" + senha + "'");

                if (dt.Rows.Count > 0)
                {
                    Session["login"] = 1;
                    Response.Redirect("FrmCurriculos.aspx");
                }
                else
                {

                }
            }
        }
    }
}