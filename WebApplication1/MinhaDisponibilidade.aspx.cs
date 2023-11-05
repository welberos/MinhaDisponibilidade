using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class MinhaDisponibilidade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMostrarDiasSelec_Click(object sender, EventArgs e)
        {
            int tDiasSelec = 0;
            string diasSelecionados = "";

            foreach (ListItem item in chkDiasDiponivel.Items)
            {
                if (item.Selected)
                {
                    tDiasSelec++;
                    diasSelecionados += item.Text + ", ";
                }
            }

            if (!string.IsNullOrEmpty(diasSelecionados))
            {
                diasSelecionados = diasSelecionados.TrimEnd(' ', ','); // Remover a última vírgula e espaço em branco
                lblTDias.Text = "Total de Dias Selecionados: " + tDiasSelec.ToString();
                lblDiasSelecionados.Text = "Dias Selecionados: " + diasSelecionados;
                
            }
            else
            {
                lblDiasSelecionados.Text = "Nenhum dia selecionado. Selecione um dia da semana.";
                lblTDias.Text = "";
            }
        }
    }
}