using System;
using System.Web.Services;

public partial class index : System.Web.UI.Page
{
    private static string sequence = "";
    private static string[] returner = new string[4] { "Result", "Success", "Failed", "Warning" };
    private static Random random;
    protected void Page_Load(object sender, EventArgs e) { random = new Random(); }

    [WebMethod]
    public static string Submit(string S)
    {
        sequence += S;
        int returnval = random.Next(returner.Length);
        return returner[returnval];
    }
}