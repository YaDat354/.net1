   M S B A M L   `   `   `  ����B  >QLThuoc, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:QLThuoc.ModelsQLThuoc.Models  5          QLThuoc.Views.MuaHang   5      a ]DevExpress.Xpf.Core.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5      a ]DevExpress.Xpf.Grid.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v20.1.Core, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5	      ] YDevExpress.Mvvm.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aAdxmvvm2http://schemas.devexpress.com/winfx/2008/xaml/mvvm   5
      e	 aDevExpress.Xpf.Controls.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui 	 5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006 	 5      )Modelsclr-namespace:QLThuoc.Models 	 5      -   5          >�Name$  ViewMuaHang��5      
����p��.��5      1 	 +DevExpress.Xpf.WindowsUI.PageAdornerControl  < 	 6DevExpress.Xpf.WindowsUI.Base.veHeaderedContentControl   Header$ Hóa đơn mua thuốc��6      ShowBackButton . .��5      �  � RowDefinitions 5      �� 5   
   $
��Auto �6   �� 5   
   $	��350 �6   �� 5   
   $��* �6   .+�5      %  DevExpress.Xpf.Grid.GridControl  -   5          Name$ gcData��5   	   $��1��5   	   $��2q�5   	   )  #DevExpress.Xpf.Grid.DataControlBase   SelectionMode$
 Cell=�5   	      View 5   
   #  DevExpress.Xpf.Grid.TableView  5      -   5          Name$ gvData��5          	PasteMode$ Append=�5!      &   DevExpress.Xpf.Grid.DataViewBase	   SearchDelay$	 10��5"      
   SearchPanelFindFilter$
 Contains=�5$         ShowAutoFilterRow . "   ShowCriteriaInAutoFilterRow . &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .     ShowSearchPanelMode$ Never=�5(         Columns. 5*   
   $  DevExpress.Xpf.Grid.GridColumn  $	  DevExpress.Xpf.Grid.ColumnBase 	  	FieldName$ 
NgayHoaDon��6   $
  DevExpress.Xpf.Grid.BaseColumn 
  Header)  #DevExpress.Xpf.Core.ObjectConverter$ Ngày hóa đơn 60    	  EditSettings 5+      6  0DevExpress.Xpf.Editors.Settings.DateEditSettings  5,      6  0DevExpress.Xpf.Editors.Settings.TextEditSettings   Mask$ 
dd/MM/yyyy��6#   5.        5/   
   $ 	TenDoiTac��6   $ Tên nhà cung cấp 6/    
  Width2  ,DevExpress.Xpf.Grid.GridColumnWidthConverter$	 150 6I     50   
   $ DiaChi��6   $" Địa chỉ nhà cung cấp 6,   $	 120 6J     51   
   $ 	DienThoai��6   $% Điện thoại nhà cung cấp 60   $ 80 6Q     52   
   $ 	ThanhTien��6   $ Tổng tiền  6/   $	 120 6C    53        54      $ n0��6#      MaskType$ Numeric=�6-      MaskUseAsDisplayFormat .    MaskCulture$ vi-VN��6^   56        57   
   $ GhiChu��6   $ Ghi chú 6,   $	 250 6=   58   	     5:      -   5        $ gcDataD��5;   	   $��2��5<   	   $��2q�5=   	   $
 Cell=�5>   	    5?   
     5@      -   5        $ gvDataD��5A      $ Append=�5B      $	 10��5C      $
 Contains=�5D       .    ShowTotalSummary .  .  .  $ Never=�5I         TotalSummary 5K   
   )  #DevExpress.Xpf.Grid.GridSummaryItem  5L      )  #DevExpress.Xpf.Grid.SummaryItemBase   	FieldName$ TenThuoc��6       SummaryType]
 YDevExpress.Data.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a5 
 /DevExpress.Data.Design.SummaryItemTypeConverter$ Count 65      DisplayFormat$! Tổng sản phẩm: {0:n0}��5M   '     5N      $ 	ThanhTien��6    $	 Sum 66   $ Thành tiền: {0:n0}��6I   . 5P   
     $ 50 5Q       	  AllowColumnFiltering5 
 /DevExpress.Utils.Design.DefaultBooleanConverter$
 True 6    	  AllowEditing$
 True 5R       	  AutoFilterCriteria$ ContainsX�5S      $ MaThuoc��5T      $ Mã thuốc 6     	  FilterPopupMode$  CheckedList=�5U      ! 	  IsSmart! . 5W        5X   
   $	 150 5Y      $
 True 5Z      $
 True 5[      $ ContainsX�5\      $ TenThuoc��5]      $  CheckedList=�5^      $ Tên thuốc 5_      ! . " 	  ReadOnly" . 5a        5b   
   $ 50 5c      $
 True 5d      $
 True 5e      $ ContainsX�5f      $ 	DonViTinh��5g      $  CheckedList=�5h      $
 ĐVT 5i      " . 5j        5k   
   $ SoLuong��6   $ Số lượng 6-   # 	  UnboundType8 
 2DevExpress.Utils.Design.UnboundColumnTypeConverter$# Decimal 6?   $ 60 6U    5l        5m      $ n0��6#   $ Numeric=�6-    . $ vi-VN��6^   5o        5p   
   $ DonGia��6   $ 
Đơn giá 6-   $# Decimal 6>   $ 90 6T    5q        5r      $ n0��6#   $ Numeric=�6-    . $ vi-VN��6^   5t        5u   
   $ 	ThanhTien��6   $ Thành tiền 6/   $	 120 6D    5v        5w      $ n0��6#   $ Numeric=�6-    . $ vi-VN��6^   5y      5z   	   �� 5|      $��0��5}   	   $��5 0 5 3q�5~   	   $ �� Orientation$$ 
Horizontal=�5   	   .+�5�   
   &   DevExpress.Xpf.Core.SimpleButton  -   5        %  Name$% btnThem��5�      $
��5 0 q�5�      $��Thêm mới��5�        5�   
   -   5        $% btnSua��5�      $
��5 0 q�5�      $��Sửa phiếu��5�      $��20��6   $	��Top=�6+     5�   
   -   5        $% 	btnDelete��5�      $
��5 0 q�5�      $��Xóa phiếu��5�      5�   	   5�      5�      5�      