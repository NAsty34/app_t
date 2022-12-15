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
using System.Windows.Shapes;

namespace train
{
    /// <summary>
    /// Логика взаимодействия для koefficent.xaml
    /// </summary>
    public partial class koefficent : Window
    {
        public koefficent()
        {
            InitializeComponent();
            jun.Text = Main.user.Manager.JuniorMinimum.ToString();
            mid.Text = Main.user.Manager.MiddleMinimum.ToString();
            sen.Text = Main.user.Manager.SeniorMinimum.ToString();
            analiz.Text = Main.user.Manager.AnalysisCoefficient.ToString();
            ystan.Text = Main.user.Manager.InstallationCoefficient.ToString();
            tech.Text = Main.user.Manager.SupportCoefficient.ToString();
            Slog.Text = Main.user.Manager.DifficultyCoefficient.ToString();
            VremIs.Text = Main.user.Manager.TimeCoefficient.ToString();
            Perevod.Text = Main.user.Manager.ToMoneyCoefficient.ToString();
        }

        

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            new Users().Show();
            Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Main.user.Manager.JuniorMinimum = int.Parse(jun.Text);
            Main.user.Manager.MiddleMinimum = int.Parse(mid.Text);
            Main.user.Manager.MiddleMinimum = int.Parse(mid.Text);
            Main.user.Manager.SeniorMinimum = int.Parse(sen.Text);
            Main.user.Manager.AnalysisCoefficient = double.Parse(analiz.Text);
            Main.user.Manager.InstallationCoefficient = double.Parse(ystan.Text);
            Main.user.Manager.SupportCoefficient = double.Parse(tech.Text);
            Main.user.Manager.DifficultyCoefficient = double.Parse(Slog.Text);
            Main.user.Manager.TimeCoefficient = double.Parse(VremIs.Text);
            Main.user.Manager.ToMoneyCoefficient = double.Parse(Perevod.Text);
            z4_train_MihailovaEntities.getContext().SaveChanges();

            MessageBox.Show("Изменения сохранены");
        }
        
    }
}
