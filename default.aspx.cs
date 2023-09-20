using System;
using System.Data;

namespace CalculatorApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            var button = (System.Web.UI.WebControls.Button)sender;
            var buttonText = button.Text;

            if (buttonText == "=")
            {
                // Hesaplama işlemini gerçekleştir ve sonucu göster
                try
                {
                    var result = new DataTable().Compute(txtDisplay.Text, null);
                    txtDisplay.Text = result.ToString();
                }
                catch (Exception)
                {
                    txtDisplay.Text = "Hata";
                }
            }
            else if (buttonText == "C")
            {
                // Temizle düğmesine basıldığında ekranı temizle
                txtDisplay.Text = "";
            }
            else
            {
                // Tuşa basılan değeri ekrana ekleyin
                txtDisplay.Text += buttonText;
            }
        }
    }
}
