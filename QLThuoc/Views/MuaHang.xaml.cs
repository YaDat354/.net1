using DevExpress.Xpf.Core;
using QLThuoc.Models;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace QLThuoc.Views
{
  /// <summary>
  /// Interaction logic for MuaHang.xaml
  /// </summary>
  public partial class MuaHang : UserControl
  {
    DBDataContext db;
    public MuaHang()
    {
      InitializeComponent();
    }

    private void btnDelete_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        v_ThongTinHoaDon _Chon = gvData.FocusedRow as Models.v_ThongTinHoaDon;
        if (_Chon != null)
        {
          if (z.DeleteQuestion())
          {
            var _XoaChiTiet = from z in db.ChiTietHoaDons where z.MaHoaDon == _Chon.MaHoaDon select z;
            foreach (ChiTietHoaDon ct in _XoaChiTiet)
            {
              db.ChiTietHoaDons.DeleteOnSubmit(ct);
            }
            HoaDon hd = db.HoaDons.Where(z => z.MaHoaDon == _Chon.MaHoaDon).FirstOrDefault();
            if (hd != null)
              db.HoaDons.DeleteOnSubmit(hd);
            db.SubmitChanges();
            gvData.DeleteRow(gvData.FocusedRowHandle);
            DXMessageBox.Show("Xóa thành công", "Thông báo!", MessageBoxButton.OK, MessageBoxImage.Information);
          }
        }
      }
      catch (Exception ex)
      {
        DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!", MessageBoxButton.OK, MessageBoxImage.Error);
        db = new DBDataContext(z.ConnectionString);
      }    
    }

    private void btnThem_Click(object sender, RoutedEventArgs e)
    {
      ThemHoadon view = new ThemHoadon(true);
      view._HoaDon.NgayHoaDon = DateTime.Now;

      view.ShowDialog();
      gcData.ItemsSource = db.v_ThongTinHoaDons.Where(z => z.HoaDonMua == true).ToList();
    }

    private void btnSua_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        Models.v_ThongTinHoaDon _Chon = gvData.FocusedRow as Models.v_ThongTinHoaDon;
        if (_Chon != null)
        {
          ThemHoadon view = new ThemHoadon(true);
          view._HoaDon.MaHoaDon = _Chon.MaHoaDon;
          view._HoaDon.MaDoiTac = _Chon.MaDoiTac;
          view._HoaDon.NgayHoaDon = _Chon.NgayHoaDon;
          view._HoaDon.GhiChu = _Chon.GhiChu;
          view.ShowDialog();
          gcData.ItemsSource = db.v_ThongTinHoaDons.Where(z => z.HoaDonMua == true).ToList();
        }
      }
      catch (Exception ex)
      {
        DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!", MessageBoxButton.OK, MessageBoxImage.Error);
      }

    }

    private void ViewMuaHang_Loaded(object sender, RoutedEventArgs e)
    {
      try
      {
        db = new DBDataContext(z.ConnectionString);
        gcData.ItemsSource = db.v_ThongTinHoaDons.Where(z => z.HoaDonMua == true).ToList();
      }
      catch (Exception ex)
      {
        DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!", MessageBoxButton.OK, MessageBoxImage.Error);
      }
    }

    private void gvData_FocusedRowChanged(object sender, DevExpress.Xpf.Grid.FocusedRowChangedEventArgs e)
    {
      try
      {
        //if (db != null)
        //{
          v_ThongTinHoaDon _Chon = gvData.FocusedRow as Models.v_ThongTinHoaDon;
          if (_Chon != null)
          {
            gcDataD.ItemsSource = db.v_ThongTinChiTietHoaDons.Where(z => z.MaHoaDon == _Chon.MaHoaDon).ToList();
          }
          else
          {
            gcDataD.ItemsSource = null;
          }
        //}

      }
      catch (Exception ex)
      {
        DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!", MessageBoxButton.OK, MessageBoxImage.Error);
      }
    }
  }
}
