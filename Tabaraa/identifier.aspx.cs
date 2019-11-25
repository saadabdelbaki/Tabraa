using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tabaraa
{
    public partial class identifier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void SqlDataSourceVille_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }

        protected void SqlDataSourceVille_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            ClassDB add = new ClassDB();
            add.Addvol(nom.Text, prenom.Text,  cin.Text, télephone.Text,  email.Text,  password.Text,  age.Text, DropDownList3.Text, DropDownList4.Text);
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
