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
    /// Логика взаимодействия для Products.xaml
    /// </summary>
    public partial class Products : Window
    {
        MySqlConnection connection2;
        public DataRowView DataRow;
        public DataRowView view;
        public Products()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            connection2 = new MySqlConnection("Server = 127.0.0.1; user id=root; password=1108; database=kudryashovaaa");
            connection2.Open();
            MySqlCommand command = new MySqlCommand("SELECT * FROM products", connection2);
            MySqlDataReader dataReader2 = command.ExecuteReader();
            DataTable table2 = new DataTable();
            table2.Load(dataReader2);
            products.ItemsSource = table2.DefaultView;
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            connection2.Close();
        }
    }
}
