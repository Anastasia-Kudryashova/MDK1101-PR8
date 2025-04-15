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
using System.Data;
using MySqlConnector;

namespace mdk1101_pr8
{
    /// <summary>
    /// Логика взаимодействия для Specialization.xaml
    /// </summary>
    public partial class Specialization : Window
    {
        MySqlConnection connection1;
        public DataRowView DataRow;
        public DataRowView view;
        public Specialization()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            connection1 = new MySqlConnection("Server = 127.0.0.1; user id=root; password=1108; database=kudryashovaaa");
            connection1.Open();
            MySqlCommand command = new MySqlCommand("SELECT * FROM specialization", connection1);
            MySqlDataReader dataReader1 = command.ExecuteReader();
            DataTable table1 = new DataTable();
            table1.Load(dataReader1);
            specialization.ItemsSource = table1.DefaultView;
        }
    }
}
