using DevExpress.Xpf.Core;
using DevExpress.Xpf.Grid;
using QLThuoc.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace QLThuoc.Views
{
  /// <summary>
  /// Interaction logic for DoiTac.xaml
  /// </summary>
  public partial class DoiTac : UserControl
  {
    public DoiTac()
    {
      InitializeComponent();
    }

    DBDataContext db;

    private void ViewDoiTac_Loaded(object sender, RoutedEventArgs e)
    {
      db = new DBDataContext(z.ConnectionString);
      gcData.ItemsSource = db.DoiTacs.ToList();
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
          db.DoiTacs.InsertOnSubmit(e.Row as Models.DoiTac);
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

    private void gvData_ValidateRow(object sender, GridRowValidationEventArgs e)
    {
      try
      {
        List<Models.DoiTac> _Data = ((GridControl)e.OriginalSource).ItemsSource as List<Models.DoiTac>;
        Models.DoiTac _DoiTac = e.Row as Models.DoiTac;
        
        if (string.IsNullOrEmpty(_DoiTac.TenDoiTac))
        {
          e.IsValid = false;
          e.ErrorContent = "Tên đối tác không được trống";
        }
        var _Count = (from u in _Data where u.TenDoiTac == _DoiTac.TenDoiTac.Trim() select u).Count();
        if (_Count > 1)
        {
          e.IsValid = false;
          e.ErrorContent = "Tên đối tác đã tồn tại";
        }
      }
      catch (Exception ex)
      {
       DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!");
      }
    }

    private void btnDelete_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        Models.DoiTac _Chon = gvData.FocusedRow as Models.DoiTac;
        if (_Chon != null)
        {
          if (z.DeleteQuestion())
          {
            db.DoiTacs.DeleteOnSubmit(_Chon);
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
  }
}
