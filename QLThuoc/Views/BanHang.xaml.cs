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

namespace QLThuoc.Views
{
  /// <summary>
  /// Interaction logic for BanHang.xaml
  /// </summary>
  public partial class BanHang : UserControl
  {
    DBDataContext db;
    public BanHang()
    {
      InitializeComponent();
    }

    private void ViewBanHang_Loaded(object sender, RoutedEventArgs e)
    {
      try
      {
        db = new DBDataContext(z.ConnectionString);
        gcData.ItemsSource = db.v_ThongTinHoaDons.Where(z => z.HoaDonMua == false).ToList();
      }
      catch (Exception ex)
      {
        DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!", MessageBoxButton.OK, MessageBoxImage.Error);
      }
    }

    private void btnThem_Click(object sender, RoutedEventArgs e)
    {
      ThemHoadon view = new ThemHoadon(false);
      view._HoaDon.NgayHoaDon = DateTime.Now;
      view.ShowDialog();
      gcData.ItemsSource = db.v_ThongTinHoaDons.Where(z => z.HoaDonMua == false).ToList();
    }

    private void btnSua_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        Models.v_ThongTinHoaDon _Chon = gvData.FocusedRow as Models.v_ThongTinHoaDon;
        if (_Chon != null)
        {
          ThemHoadon view = new ThemHoadon(false);
          view._HoaDon.MaHoaDon = _Chon.MaHoaDon;
          view._HoaDon.MaDoiTac = _Chon.MaDoiTac;
          view._HoaDon.NgayHoaDon = _Chon.NgayHoaDon;
          view._HoaDon.GhiChu = _Chon.GhiChu;
          view.ShowDialog();
          gcData.ItemsSource = db.v_ThongTinHoaDons.Where(z => z.HoaDonMua == false).ToList();
        }
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
  }
}
