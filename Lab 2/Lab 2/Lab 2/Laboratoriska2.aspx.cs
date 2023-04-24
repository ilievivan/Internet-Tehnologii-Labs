using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_2
{
    public partial class Laboratoriska2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                for (int i = 1; i < 32; i++)
                {
                    ddlDen.Items.Add(i.ToString());
                }

                String[] meseci = new string[] {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"
                , "Aug", "Sep", "Oct", "Nov", "Dec", };

                for (int i = 0; i < 12; i++)
                {
                    ddlMesec.Items.Add(meseci[i]);
                }

                for (int i = 0; i < 5; i++)
                {
                    ddlGodina.Items.Add((DateTime.Now.Year + i).ToString());
                }

                string vreme = "";
                for (int i = 0; i < 24; i++)
                {
                    if (i < 10)
                        vreme = "0" + i.ToString() + ":00";
                    else
                        vreme = i.ToString() + ":00";
                    ddlVreme.Items.Add(vreme);
                }
            }
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            string patnik = txtIme.Text + " " + txtPrezime.Text ;
            lblPatnik.Text = patnik;

            lblSredstvo.Text = lstSredstvo.SelectedValue;
            lblOd.Text = ddlOd.SelectedValue;
            lblDo.Text = ddlDo.SelectedValue;

            string time = "";
            time += ddlDen.SelectedValue + "." + (ddlMesec.SelectedIndex + 1).ToString()
                + "." + ddlGodina.SelectedValue;
            time += " во " + ddlVreme.SelectedValue + " часот";
            lblVreme.Text = ddlVreme.SelectedValue;

            lblZona.Text = rblZona.SelectedValue;
            lblKlasa.Text = rblKlasa.SelectedValue;

            string posluga = "";
            foreach (ListItem item in cblPosluga.Items)
            {
                if (item.Selected)
                    posluga += item.Text + " ";
            }
            lblPosluga.Text = posluga;

            if (lstSredstvo.SelectedValue == "Авион")
                imgSlika.ImageUrl = "~/plane.jpg";
            else if (lstSredstvo.SelectedValue == "Воз")
                imgSlika.ImageUrl = "~/train.jpg";


        }
    }
}