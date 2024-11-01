using DevExpress.Xpf.Core;
using QLThuoc.Models;
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

namespace QLThuoc.Views.BaoCao
{
  /// <summary>
  /// Interaction logic for DoanhThu.xaml
  /// </summary>
  public partial class DoanhThu : UserControl
  {
    DBDataContext db;
    public DoanhThu()
    {
      InitializeComponent();
    }

    private void btnXem_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        gcData.ItemsSource = db.v_BaoCaoDanhThus.ToList();
      }

      catch (Exception ex)
      {
        DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!");
        db = new DBDataContext(z.ConnectionString);
      }
    } 

    private void ViewDoanhThu_Loaded(object sender, RoutedEventArgs e)
    {
      try
      {
        db = new DBDataContext(z.ConnectionString);
        gcData.ItemsSource = db.v_BaoCaoDanhThus.ToList();
      }
      catch (Exception ex)
      {
        DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!");
        db = new DBDataContext(z.ConnectionString);
      }
    }
  }
}
