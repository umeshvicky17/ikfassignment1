using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static String cnstr = "Server=UMESH-PC\\sqlexpress;database=crudedb;Integrated security = true";
        SqlConnection mycnn = new SqlConnection(cnstr);

        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand mycmd = new SqlCommand();
                mycnn.Open();
                mycmd.Connection = mycnn;
                mycmd.CommandType = CommandType.StoredProcedure;
                mycmd.Parameters.AddWithValue("@p1", TextBox1.Text);
                mycmd.Parameters.AddWithValue("@p2", TextBox2.Text);
                mycmd.Parameters.AddWithValue("@p3", DropDownList1.Text);
                String qual = null;
                for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                {
                    if (CheckBoxList1.Items[i].Selected)
                        qual += CheckBoxList1.Items[i].Text;
                }
                mycmd.Parameters.AddWithValue("@p4", qual);
                mycmd.Parameters.AddWithValue("@p5", TextBox5.Text);
                mycmd.CommandText = "insertEmpRecord";
                mycmd.ExecuteNonQuery();
                Label6.Text = ("empyee record added");
                mycnn.Close();

            }
            catch (SqlException ss)
            {
                string msg=ss.Message;
                Label6.Text = (" wrong ");

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand mycmd = new SqlCommand();
                mycnn.Open();
                mycmd.Connection = mycnn;
                mycmd.CommandType = CommandType.StoredProcedure;
                mycmd.Parameters.AddWithValue("@p1", TextBox4.Text);


                mycmd.CommandText = "SearchEmp";
                SqlDataReader rd = mycmd.ExecuteReader();


                if (rd.HasRows)
                {
                    rd.Read();
                   TextBox1.Text = rd.GetInt32(0).ToString();
                    TextBox2.Text = rd.GetString(1);
                    DropDownList1.Text = rd.GetString(2);
                 
                    TextBox5.Text = rd.GetDateTime(4).ToString();
                   

                }

            }
            catch (SqlException ss)
             
            {
              string msg=ss.Message;
                Label6.Text = (" wrong ");

            }
            mycnn.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand mycmd = new SqlCommand();
                mycnn.Open();
                mycmd.Connection = mycnn;
                mycmd.CommandType = CommandType.StoredProcedure;
                mycmd.Parameters.AddWithValue("@p1", TextBox1.Text);
                mycmd.Parameters.AddWithValue("@p2", DropDownList1.Text);
                String qual=null;
                for(int i=0;i<CheckBoxList1.Items.Count;i++)
                {
                    if(CheckBoxList1.Items[i].Selected)
                    qual += CheckBoxList1.Items[i].Text;
                }
                mycmd.Parameters.AddWithValue("@p3", qual);
                mycmd.CommandText = "updateEmpRecord";
                mycmd.ExecuteNonQuery();
                Label6.Text = ("empyee record updated");

            }
            catch (SqlException ss)
            {
              string msg=ss.Message;
                Label6.Text = (" wrong ");
            }
            mycnn.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand mycmd = new SqlCommand();
                mycnn.Open();

                mycmd.Connection = mycnn;
                mycmd.CommandType = CommandType.StoredProcedure;
                mycmd.Parameters.AddWithValue("@p1", TextBox4.Text);

                mycmd.CommandText = "DeleteEmpRecord";
                mycmd.ExecuteNonQuery();
                Label6.Text = ("empyee record deleted");

            }
            catch (SqlException ss)
            {
                string msg=ss.Message;
                Label6.Text = (" wrong ");
            }
            mycnn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand mycmd = new SqlCommand();
                mycnn.Open();
                mycmd.Connection = mycnn;
                mycmd.CommandType = CommandType.StoredProcedure;



                mycmd.CommandText = "ShowEmpRecords";
                SqlDataAdapter adp = new SqlDataAdapter();
                adp.SelectCommand = mycmd;
                DataSet ds = new DataSet();
                adp.Fill(ds, "Emp");
              DropDownList1.DataSource= ds.Tables["Emp"];
               GridView1.DataSource = ds.Tables["Emp"];
                GridView1.DataBind();
            

            }
            catch (SqlException ss)
            {
                string msg=ss.Message;
                Label6.Text = (" wrong ");
            }
            mycnn.Close();
        }
    }
}
