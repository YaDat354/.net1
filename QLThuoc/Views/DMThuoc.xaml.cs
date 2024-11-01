using DevExpress.Xpf.Core;
using DevExpress.Xpf.Grid;
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

namespace QLThuoc.Views
{
  /// <summary>
  /// Interaction logic for DMThuoc.xaml
  /// </summary>
  public partial class DMThuoc : UserControl
  {
    public DMThuoc()
    {
      InitializeComponent();
    }


    DBDataContext db;
    private void ViewDMThuoc_Loaded(object sender, RoutedEventArgs e)
    {
      db = new DBDataContext(z.ConnectionString);
      gcData.ItemsSource = db.Thuocs.ToList();
    }

    private void gvData_InvalidRowException(object sender, DevExpress.Xpf.Grid.InvalidRowExceptionEventArgs e)
    {
      e.ExceptionMode = ExceptionMode.NoAction;
    }

    private void gvData_RowUpdated(object sender, DevExpress.Xpf.Grid.RowEventArgs e)
    {
      try
      {
        if (e.RowHandle == -2147483647)
        {
          db.Thuocs.InsertOnSubmit(e.Row as Models.Thuoc);
          db.SubmitChanges();
        }
        else
        {
          db.SubmitChanges();
        }
      }
      catch (Exception ex)
      {
       DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!");
        db = new DBDataContext(z.ConnectionString);
      }

    }

    private void btnDelete_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        Models.Thuoc _Chon = gvData.FocusedRow as Models.Thuoc;
        if (_Chon != null)
        {
          if (z.DeleteQuestion())
          {
            db.Thuocs.DeleteOnSubmit(_Chon);
            db.SubmitChanges();
            gcData.ItemsSource = db.DoiTacs.ToList();
          }
        }
      }
      catch (Exception ex)
      {
       DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!");
        db = new DBDataContext(z.ConnectionString);
      }

    }

    private void gvData_ValidateRow(object sender, GridRowValidationEventArgs e)
    {
      try
      {
        List<Models.Thuoc> _Data = ((GridControl)e.OriginalSource).ItemsSource as List<Models.Thuoc>;
        Models.Thuoc _Thuoc = e.Row as Models.Thuoc;

        if (string.IsNullOrEmpty(_Thuoc.TenThuoc))
        {
          e.IsValid = false;
          e.ErrorContent = "Tên thuốc không được trống";
        }
        var _Count = (from u in _Data where u.TenThuoc == _Thuoc.TenThuoc.Trim() select u).Count();
        if (_Count > 1)
        {
          e.IsValid = false;
          e.ErrorContent = "Tên thuốc đã tồn tại";
        }
      }
      catch (Exception ex)
      {
       DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!");
      }
    }
  }
}
