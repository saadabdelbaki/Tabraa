using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Tabaraa
{
    //public class inserer
    //{

    //}
    public class ClassDB
    {
        #region  ajouter des iformation  NOM,PRENOM,SEXE,CIN,N_TELEPHONE,DATE_NAISSANCE,ID_promotion

        public void Addvol(object nom, object prenom, object cin, object tél, object email, object password, object age ,object group_de_sang, object ville )
        {
            Connect connect = new Connect();
            SqlConnection cont = connect.Cnx;
            cont.Open();

            string SqlCompt = "INSERT into Compte(ID_login,login,mot_de_passe) VALUES('" + cin + "','" + email + "','" + password + "')";
            SqlCommand Compt = new SqlCommand(SqlCompt, cont);
            //Compt.Parameters.AddWithValue("@param1", a);
            Compt.ExecuteNonQuery();

            string SqlVolontaire = "INSERT into volontaire(ID_volontiaire,prenom,nom,tel,age,email,ID_groupe_sanguin,ID_ville , ID_login) VALUES('" + cin + "','" + prenom + "','" + nom + "','" + tél + "','" + age + "','" + email + "','" + group_de_sang+ "','" + ville + "','" + cin + "')";
            SqlCommand volontaire = new SqlCommand(SqlVolontaire, cont);
            //volontaire.Parameters.AddWithValue("@param1", a);
            volontaire.ExecuteNonQuery();

            cont.Close();

        }
        #endregion
    }
    public class Connect
    {
        public SqlConnection Cnx
        {
            get
            {
                return new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Youcode\source\repos\Tabaraa\Tabaraa\App_Data\DatabaseTabara.mdf;Integrated Security=True");
            }
        }
        #region connexion avec la base de donnee

        #endregion
    }
}