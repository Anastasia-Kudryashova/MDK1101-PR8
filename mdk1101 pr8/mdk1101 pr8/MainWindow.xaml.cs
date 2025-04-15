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
using System.Data;
using MySqlConnector;

namespace mdk1101_pr8
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        MySqlConnection connection;
        public DataRowView DataRow;
        public DataRowView view;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new MySqlConnection("Server = 127.0.0.1; user id=root; password=1108; database=kudryashovaaa");
            connection.Open();
            MySqlCommand command = new MySqlCommand("SELECT * FROM farm", connection);
            MySqlDataReader dataReader = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(dataReader);
            farm.ItemsSource = table.DefaultView;
        }
    }
}
