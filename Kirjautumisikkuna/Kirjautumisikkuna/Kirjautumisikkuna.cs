using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient; 


namespace Kirjautumisikkuna
{
    public partial class Kirjautumisikkuna : Form
    {
        public Kirjautumisikkuna()
        {
            InitializeComponent();
        }

        private void KirjauduPainike_Click(object sender, EventArgs e)
        {
            Yhdista tietokantaan = new Yhdista(); 
            DataTable taulu = new DataTable();
            MySqlDataAdapter adapteri = new MySqlDataAdapter; 
            MySqlCommand komento  = new MySqlCommand();

            String kysely = "SELECT kayttajanimi, salasana FROM asiakkaat WHERE kayttajanimi = @kn AND salasana = @ss"; 

            komento.CommandText = kysely;
            komento.Connection = tietokantaan.OtaYhteys();

            komento.Parameters.Add("@kn", MySqlDbType.VarChar).Value = KayttajaTB.Text;
            komento.Parameters.Add("@ss", MySqlDbType.VarChar).Value = SalasanaTB.Text;

            adapteri.SelectCommand = komento;
            adapteri.Fill(taulu); 

            if(taulu.Rows.Count > 0)
            {
                this.Hide();
                Paaikkuna plomake = new Paaikkuna();
                plomake.Show(); 
            }

            else
            {
                if (KayttajaTB.Text.Trim().Equals(""))
                {
                    MessageBox.Show("Syötä käyttäjätunnus kirjautuaksesi", "Käyttäjäntunnus on tyhjä", MessageBoxButtons.OK, MessageBoxIcon.Error); 
                }
                else if (SalasanaTB.Text.Trim().Equals(""))
                {
                    MessageBox.Show("Syötä salasana kirjautuaksesi", "Salasana on tyhjä", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

                else
                {
                    MessageBox.Show("Käyttäjätunnusta tai salasanaa ei löydy", "Tietoja ei löydy", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                    
            }
        }


    }
}
