using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;
using System.IO;
using System.Xml;
using System.Xml.Xsl;
using static _4thHandIn.Underside;

namespace _4thHandIn
{
    public partial class Forside : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(@"data source = LAPTOP-9VKICUOP; integrated security = true; database = MovieOmdb");

        SqlCommand cmd = null;
        SqlDataReader rdr = null;
        string sqlsel = "";

        protected void Page_Load(object sender, EventArgs e)
        {


            //skal kun kører når ny XML fil project4.xml modtages.
            // if the XML uses a namespace the XSLT must refer to this namespace
            //string sourcefile = Server.MapPath("Project4.xml");
            //string xslfile = Server.MapPath("Commercial.xslt");
            //string destinationfile = Server.MapPath("MyCommercial.xml");

            ////XML
            //FileStream fs = new FileStream(destinationfile, FileMode.Create);
            //XslCompiledTransform xct = new XslCompiledTransform();
            //xct.Load(xslfile);
            //xct.Transform(sourcefile, null, fs);
            //fs.Close();

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now);
            Response.Cache.SetNoServerCaching();
            Response.Cache.SetNoStore();


            


            MyShowPoster();

        }

        public void MyShowPoster()
        {
            try {
                conn.Open();
                sqlsel = "select top 4 Id, MovieName, Year, Viewed from MovieTable order by Viewed desc";
                cmd = new SqlCommand(sqlsel, conn);

                rdr = cmd.ExecuteReader();

                string s = "";

                List<string> urls = new List<string>();
                List<string> myTitle = new List<string>();
                List<string> myYear = new List<string>();
                if (rdr.HasRows) {
                    while (rdr.Read()) {
                        int movId = rdr.GetInt32(0);
                        string movTitle = rdr.GetString(1);
                        int movYear = rdr.GetInt32(2);
                        int movViewed = rdr.GetInt32(3);

                        // string posterUrl = MovieUtils.GetPosterUrlFromOmdb(movTitle);
                        MovieInfo info = GetPosterUrl(movTitle);

                        urls.Add(info.ImageUrl);
                        myTitle.Add(info.LabelTitel);
                        myYear.Add(info.LabelPosterYear);
                        //s = s + "The Movie ID is: "+ movId + ", The Title is: "+ movTitle + ", The year: ("+ movYear + "), it has been viewed "+ movViewed + " times<br>";
                    }

                    ImagePoster1.ImageUrl = urls[0];
                    ImagePoster2.ImageUrl = urls[1];
                    ImagePoster3.ImageUrl = urls[2];
                    ImagePoster4.ImageUrl = urls[3];

                    Label1Poster.Text = myTitle[0];
                    Label2Poster.Text = myTitle[1];
                    Label3Poster.Text = myTitle[2];
                    Label4Poster.Text = myTitle[3];

                    LabelPoster1.Text = myYear[0];
                    LabelPoster2.Text = myYear[1];
                    LabelPoster3.Text = myYear[2];
                    LabelPoster4.Text = myYear[3];


                }
                else {
                    s = "No rows found.";
                }



            }
            catch (Exception ex) {
              
            }
            finally {
                conn.Close();
            }


        }






        protected void TextBox_TextChanged(object sender, EventArgs e)
        {
            if (TextBoxInput.Text == "Search") {
                TextBoxInput.Text = "";

                TextBoxInput.ForeColor = Color.Black;
            }
        }

        protected void ButtonJoke_Click(object sender, EventArgs e)
        {
            WebRequest request = HttpWebRequest.Create("http://api.icndb.com/jokes/random");
            WebResponse response = request.GetResponse();
            StreamReader reader = new StreamReader(response.GetResponseStream());

            string Joke_JSON = reader.ReadToEnd();
            Joke myJoke = Newtonsoft.Json.JsonConvert.DeserializeObject<Joke>(Joke_JSON);
            LabelJoke.Text = myJoke.Value.Joke;
        }

        public class Value
        {
            public int Id { get; set; }
            public string Joke { get; set; }
        }

        public class Joke
        {
            public string Type { get; set; }
            public Value Value { get; set; }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["myMovie"] = DropDownList1.SelectedValue;
            Response.Redirect("~/Underside.aspx");

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["myMovie"] = DropDownList2.SelectedValue;
            Response.Redirect("~/Underside.aspx");

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["myMovie"] = DropDownList3.SelectedValue;
            Response.Redirect("~/Underside.aspx");

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["myMovie"] = DropDownList4.SelectedValue;
            Response.Redirect("~/Underside.aspx");

        }




        public MovieInfo GetPosterUrl(string movieName)
        {
            MovieInfo movieInfo = new MovieInfo();
            WebClient client = new WebClient();
            string result = "";
            string myTitle = "";
            string mySelection = "";
            // if the textbox is not a empty string then go, else make mySelection = to the session["myMovie"]
            if (movieName != "") mySelection = movieName.Replace(' ', '+');
            else mySelection = (string)Session["myMovie"];

            result = client.DownloadString("http://www.omdbapi.com/?t=" + mySelection + "&apikey=" + TokenClass.token);
            movieInfo.LabelResults = result;

            string[] separatingChars = { "\":\"", "\",\"", "\":[{\"", "\"},{\"", "\"}]\"", "{\"", "\"}" };
            string[] mysplit = result.Split(separatingChars, System.StringSplitOptions.RemoveEmptyEntries);

            if (mysplit[1] != "False") {
                movieInfo.LabelYear += "Movie found";
                for (int i = 0; i < mysplit.Length; i++) {
                    if (mysplit[i] == "Poster") {
                        movieInfo.ImageUrl = mysplit[++i];
                        break;
                    }
                }


                for (int i = 0; i < mysplit.Length; i++) {
                    if (mysplit[i] == "Title") {
                        movieInfo.LabelTitel = mysplit[++i];
                        break;
                    }
                }

                for (int i = 0; i < mysplit.Length; i++) {
                    if (mysplit[i] == "Year") {
                        movieInfo.LabelPosterYear = "(" + mysplit[++i] + ")";
                        break;
                    }
                }

            }
            return movieInfo;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["myMovie"] = Label1Poster.Text;
            Response.Redirect("~/Underside.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["myMovie"] = Label2Poster.Text;
            Response.Redirect("~/Underside.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["myMovie"] = Label3Poster.Text;
            Response.Redirect("~/Underside.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["myMovie"] = Label4Poster.Text;
            Response.Redirect("~/Underside.aspx");
        }
    }
}