using DevExpress.Data.ODataLinq.Helpers;
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
using System.Windows.Shapes;

namespace QLThuoc.Views
{
  /// <summary>
  /// Interaction logic for ThemHoadon.xaml
  /// </summary>
  public partial class ThemHoadon : Window
  {
    DBDataContext db;
    bool MuaThuoc;
    public Models.HoaDon _HoaDon = new Models.HoaDon();
    
    public ThemHoadon( bool _MuaThuoc)
    {
      MuaThuoc = _MuaThuoc;
      InitializeComponent();
    }


    private void Window_Loaded(object sender, RoutedEventArgs e)
    {
      db = new DBDataContext(z.ConnectionString);
      txtGhiChu.EditValue = _HoaDon.GhiChu;
      lueDoiTac.EditValue = _HoaDon.MaDoiTac;
      dpkNgayHoaDon.EditValue = _HoaDon.NgayHoaDon;
      if(MuaThuoc)
      {
        lueDoiTac.ItemsSource = db.DoiTacs.Where(z => z.LaNhaCungCap == true).ToList();
        glueThuoc.ItemsSource = db.Thuocs.ToList();
      }  
      else
      {
        lueDoiTac.ItemsSource = db.DoiTacs.Where(z => z.LaNhaCungCap == false).ToList();
        glueThuoc.ItemsSource = db.v_ThongTinThuocCons.ToList();
      }  
      gcData.ItemsSource = db.v_ThongTinChiTietHoaDons.Where(z => z.MaHoaDon == _HoaDon.MaHoaDon).ToList();
    }

    private void gvData_CellValueChanged(object sender, DevExpress.Xpf.Grid.CellValueChangedEventArgs e)
    {
      try
      {
        v_ThongTinChiTietHoaDon tt = e.Row as v_ThongTinChiTietHoaDon;
        if (tt != null)
        {
          if (e.Cell.Property == "MaThuoc")
          {
            Models.Thuoc _Thuoc = db.Thuocs.Where(z => z.MaThuoc == tt.MaThuoc).FirstOrDefault();
            if (_Thuoc != null)
            {
              tt.TenThuoc = _Thuoc.TenThuoc;
              if (MuaThuoc) tt.DonGia = _Thuoc.DonGiaMua.GetValueOrDefault();
              else tt.DonGia = _Thuoc.DonGiaBan.GetValueOrDefault();
              tt.DonViTinh = _Thuoc.DonViTinh;
              tt.ThanhTien = tt.DonGia * tt.SoLuong;
            }
          }
          else if (e.Cell.Property == "SoLuong" || e.Cell.Property == "DonGia")
          {
            tt.ThanhTien = tt.DonGia * tt.SoLuong;
          }
        }
      }
      catch (Exception ex)
      {
       DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!", MessageBoxButton.OK, MessageBoxImage.Error);
      }
    }

    private void gvData_ValidateRow(object sender, DevExpress.Xpf.Grid.GridRowValidationEventArgs e)
    {
      try
      {
        List<Models.v_ThongTinChiTietHoaDon> _Data = ((GridControl)e.OriginalSource).ItemsSource as List<Models.v_ThongTinChiTietHoaDon>;
        Models.v_ThongTinChiTietHoaDon tt = e.Row as Models.v_ThongTinChiTietHoaDon;
        if (tt != null)
        {
          if (string.IsNullOrEmpty(tt.TenThuoc))
          {
            e.IsValid = false;
            e.ErrorContent = "Tên thuốc không được trống";
          }
          var _Count = (from u in _Data where u.MaThuoc == tt.MaThuoc select u).Count();
          if (_Count > 1)
          {
            e.IsValid = false;
            e.ErrorContent = "Mã thuốc đã tồn tại";
          }
          if (tt.SoLuong <= 0)
          {
            e.IsValid = false;
            e.ErrorContent = "Chưa nhập số lượng";
          }
          if (tt.DonGia <= 0)
          {
            e.IsValid = false;
            e.ErrorContent = "Chưa nhập đơn giá";
          }
          if (!MuaThuoc)
          {
            int tc = db.v_ThongTinThuocCons.Where(z => z.MaThuoc == tt.MaThuoc).Select(z => z.SoLuong).FirstOrDefault().GetValueOrDefault();
            if (tt.SoLuong > tc )
            {
              e.IsValid = false;
              e.ErrorContent = "Trong kho chỉ còn "+ tc +" thuốc cùng mã";
            }
          }
        }
      }
      catch (Exception ex)
      {
       DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!");
      }
    }

    private void gvData_InvalidRowException(object sender, DevExpress.Xpf.Grid.InvalidRowExceptionEventArgs e)
    {
      e.ExceptionMode = ExceptionMode.NoAction;
    }

    private void btnLuu_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        if(dpkNgayHoaDon.EditValue == null)
        {
         DXMessageBox.Show("Vui lòng chọn ngày hóa đơn", "Kiểm tra dữ liệu!", MessageBoxButton.OK, MessageBoxImage.Information);
          dpkNgayHoaDon.Focus();
          return;
        }  
        if(lueDoiTac.EditValue == null)
        {
         DXMessageBox.Show("Vui lòng chọn đối tác", "Kiểm tra dữ liệu!", MessageBoxButton.OK, MessageBoxImage.Information);
          lueDoiTac.Focus();
          return;
        }
        List<v_ThongTinChiTietHoaDon> _Data = gcData.ItemsSource as List<v_ThongTinChiTietHoaDon>;
        if(_Data.Count<1)
        {
         DXMessageBox.Show("Vui lòng nhập chi tiết", "Kiểm tra dữ liệu!", MessageBoxButton.OK, MessageBoxImage.Information);
          return;
        }
        List<v_ThongTinChiTietHoaDon> _Check = _Data.Where(z => z.SoLuong == 0 || z.DonGia == 0).ToList();
        if(_Check.Count !=0)
        {
          DXMessageBox.Show("Vui lòng nhập đủ số lượng hoặc đơn giá", "Kiểm tra dữ liệu!", MessageBoxButton.OK, MessageBoxImage.Information);
          return;
        }  

        _HoaDon.NgayHoaDon = DateTime.Parse( dpkNgayHoaDon.EditValue.ToString());
        _HoaDon.MaDoiTac =int.Parse( lueDoiTac.EditValue.ToString());
        _HoaDon.GhiChu = txtGhiChu.EditValue== null?"": txtGhiChu.EditValue.ToString();
        _HoaDon.HoaDonMua = MuaThuoc;

        HoaDon hd = db.HoaDons.Where(z => z.MaHoaDon == _HoaDon.MaHoaDon).FirstOrDefault();
        if (hd == null)
        {
          db.HoaDons.InsertOnSubmit(_HoaDon);
        }

        db.SubmitChanges();
        var _XoaChiTiet = from z in db.ChiTietHoaDons where z.MaHoaDon == _HoaDon.MaHoaDon select z;
        foreach (ChiTietHoaDon ct in _XoaChiTiet)
        {
          db.ChiTietHoaDons.DeleteOnSubmit(ct);
        }
        db.SubmitChanges();

        foreach (v_ThongTinChiTietHoaDon tt in _Data)
        {
          ChiTietHoaDon ct = new ChiTietHoaDon();
          ct.MaHoaDon = _HoaDon.MaHoaDon;
          ct.MaThuoc = tt.MaThuoc;
          ct.SoLuong = tt.SoLuong;
          ct.DonGia = tt.DonGia;
          db.ChiTietHoaDons.InsertOnSubmit(ct);
        }
          db.SubmitChanges();
       DXMessageBox.Show("Lưu thành công", "Thông báo!");
        gcData.ItemsSource = db.v_ThongTinChiTietHoaDons.Where(z => z.MaHoaDon == _HoaDon.MaHoaDon).ToList();
      }
      catch (Exception ex)
      {
       DXMessageBox.Show(ex.Message, "Có lỗi xãy ra!", MessageBoxButton.OK, MessageBoxImage.Error);
      }
    }

    private void bntXoa_Click(object sender, RoutedEventArgs e)
    {
      try
      {
        v_ThongTinChiTietHoaDon _Chon = gvData.FocusedRow as Models.v_ThongTinChiTietHoaDon;
        if (_Chon != null)
        {
          if (z.DeleteQuestion())
          {
            ChiTietHoaDon ct = db.ChiTietHoaDons.Where(z => z.MaHoaDon == _Chon.MaHoaDon && z.MaThuoc == _Chon.MaThuoc).FirstOrDefault();
            if (ct != null)
            {
              db.ChiTietHoaDons.DeleteOnSubmit(ct);
              db.SubmitChanges();
            gvData.DeleteRow(gvData.FocusedRowHandle);


              List<v_ThongTinChiTietHoaDon> _Data = gcData.ItemsSource as List<v_ThongTinChiTietHoaDon>;
              if (_Data.Count < 1)
              {
                db.HoaDons.DeleteOnSubmit(_HoaDon);
                db.SubmitChanges();
                _HoaDon = new HoaDon();
              }

              DXMessageBox.Show("Xóa thành công", "Thông báo!", MessageBoxButton.OK, MessageBoxImage.Information);
            }
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
