using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Hardver
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private double convert(double capacity, string capacityType, double speed, string speedType)
        {
            double result = 0;

            switch (capacityType)
            {
                case "Mb":
                    switch (speedType)
                    {
                        case "mbps":
                            result = capacity / (speed / 8);
                            break;
                        case "Kbps":
                            result = capacity / (speed / 1000);
                            break;
                        case "Mbps":
                            result = capacity / speed;
                            break;
                        case "Gbps":
                            result = capacity / (speed * 1000);
                            break;
                    }
                    break;
                    case "Gb":
                        switch (speedType)
                        {
                            case "mbps":
                                result = capacity / (speed / 1000 / 8);
                                break;
                            case "Kbps":
                                result = capacity / (speed / 1000 / 1000);
                                break;
                            case "Mbps":
                                result = capacity / (speed / 1000);
                                break;
                            case "Gbps":
                                result = capacity / speed;
                                break;
                        }
                        break;
                    case "Tb":
                        switch (speedType)
                        {
                            case "mbps":
                                result = capacity / (speed / 1000 / 1000 / 8);
                                break;
                            case "Kbps":
                                result = capacity / (speed / 1000 / 1000 / 1000);
                                break;
                            case "Mbps":
                                result = capacity / (speed / 1000 / 1000);
                                break;
                            case "Gbps":
                                result = capacity / (speed / 1000);
                                break;
                        }
                        break;
            }

            return Math.Floor(result);
        }

        private string convertSecondToMinute(double second)
        {
            if (second < 60)
            {
                return $"{second} másodperc";
            }
            else
            {
                double minutes = Math.Floor(second / 60);
                double seconds = second - minutes * 60;
                return $"{minutes} perc {seconds} másodperc";
            }
        }

        private void btnCalculate_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                double capacity = double.Parse(txtCapacity.Text);
                double speed = double.Parse(lblSpeed.Content.ToString());
                string capacityType = cboCapacity.Text;
                string speedType = cboSpeed.Text;
                if(capacity < 0 || capacity > 5000)
                {
                    MessageBox.Show("Csak 0 és 5000 közötti értéket adhat meg kapacitásnak!");
                    return;
                }
                string result = convertSecondToMinute(convert(capacity, capacityType, speed, speedType));

                lblResult.Content = $"Eredmény: {result}";
            }
            catch (Exception)
            {
                MessageBox.Show("Kérem töltse ki a mezőket helyesen és számokat írjon be a helyükre!");
                throw;
            }
        }
    }
}
