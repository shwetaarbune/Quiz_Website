using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace Quizwebsite
{
    public partial class form7 : System.Web.UI.Page
    {
        MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;database=quiz;username=root;password=Shweta@456");
        string submittedanswer;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            submittedanswer = "Print";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            submittedanswer = "Sort";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            submittedanswer = "Look-up";
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            submittedanswer = "All of the above";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand(@"INSERT INTO `quiz`.`submit_ans`
(`SA`)
VALUES
('" + submittedanswer + "')", connection);
            connection.Open();
            int v = cmd.ExecuteNonQuery();
            connection.Close();
            Response.Write("<script>alert('Your Answer submitted successfully')</script>");
            MySqlCommand extractQuery = new MySqlCommand("SELECT submit_ans.SA, answer_table.Answer FROM answer_table INNER JOIN (SELECT SA FROM submit_ans order by ID DESC LIMIT 1) AS submit_ans ON submit_ans.SA=answer_table.Answer", connection);
            MySqlDataAdapter sda = new MySqlDataAdapter(extractQuery);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                MySqlCommand valuequery = new MySqlCommand(@"INSERT INTO `quiz`.`compare`
(
`value`)
VALUES
('correct')", connection);
                connection.Open();
                valuequery.ExecuteNonQuery();
                connection.Close();

            }
            else
            {

                MySqlCommand valuequery = new MySqlCommand(@"INSERT INTO `quiz`.`compare`
(
`value`)
VALUES
('Incorrect')", connection);
                connection.Open();
                valuequery.ExecuteNonQuery();
                connection.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MySqlConnection connection = new MySqlConnection("datasource=localhost;database=quiz;port=3306;username=root;password=Shweta@456");
            MySqlCommand showQuery = new MySqlCommand("SELECT value FROM compare order by ID DESC limit 1 ", connection);
            MySqlDataAdapter sba = new MySqlDataAdapter(showQuery);
            DataTable dt = new DataTable();
            sba.Fill(dt);
            Response.Write("your answer is " + dt.Rows[0][0]);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("form8.aspx");
        }
    }
}