   M S B A M L   `   `   `  ����  QLThuoc    QLThuoc.Views.BanHang   5      a ]DevExpress.Xpf.Core.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      e aDevExpress.Xpf.Controls.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  5      a ]DevExpress.Xpf.Grid.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v20.1.Core, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5	      -   5        $��ViewBanHang��5   K   
����+��.��5      1  +DevExpress.Xpf.WindowsUI.PageAdornerControl  <  6DevExpress.Xpf.WindowsUI.Base.veHeaderedContentControl    Header$  Hóa đơn bán thuốc��6      ShowBackButton . .��5      �  � RowDefinitions 5      �� 5   
   $
��Auto �6   �� 5   
   $	��350 �6   �� 5   
   $��* �6   .+�5      %  DevExpress.Xpf.Grid.GridControl  -   5          Name$ gcData��5   	   $��1��5   	   $��2q�5   	   )  #DevExpress.Xpf.Grid.DataControlBase   SelectionMode$
 Cell=�5   	      View 5   
   #  DevExpress.Xpf.Grid.TableView  5      -   5          Name$ gvData��5         	PasteMode$ Append=�5      &   DevExpress.Xpf.Grid.DataViewBase   SearchDelay$ 10��5      	   SearchPanelFindFilter$	 Contains=�5      
   ShowAutoFilterRow
 . "   ShowCriteriaInAutoFilterRow . &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .     ShowSearchPanelMode$ Never=�5!         Columns. 5#   
   $  DevExpress.Xpf.Grid.GridColumn  $	  DevExpress.Xpf.Grid.ColumnBase 	  	FieldName$ 
NgayHoaDon��6   $
  DevExpress.Xpf.Grid.BaseColumn 
  Header)  #DevExpress.Xpf.Core.ObjectConverter$ Ngày hóa đơn 60    	  EditSettings 5$      6  0DevExpress.Xpf.Editors.Settings.DateEditSettings  5%      6  0DevExpress.Xpf.Editors.Settings.TextEditSettings   Mask$ 
dd/MM/yyyy��6#   5'        5(   
   $ 	TenDoiTac��6   $ Tên khách hàng 6/    
  Width2  ,DevExpress.Xpf.Grid.GridColumnWidthConverter$	 150 6G     5)   
   $ DiaChi��6   $ Địa chỉ khách hàng 6,   $	 120 6H     5*   
   $ 	DienThoai��6   $" Điện thoại khách hàng 60   $ 80 6O     5+   
   $ 	ThanhTien��6   $ Tổng tiền  6/   $	 120 6C    5,        5-      $ n0��6#      MaskType$ Numeric=�6-      MaskUseAsDisplayFormat .    MaskCulture$ vi-VN��6^   5/        50   
   $ GhiChu��6   $ Ghi chú 6,   $	 250 6=   51   	     53      -   5        $ gcDataD��54   	   $��2��55   	   $��2q�56   	   $
 Cell=�57   	    58   
     59      -   5        $ gvDataD��5:      $ Append=�5;      $ 10��5<      $	 Contains=�5=      
 .    ShowTotalSummary .  .  .  $ Never=�5B         TotalSummary 5D   
   )  #DevExpress.Xpf.Grid.GridSummaryItem  5E      )  #DevExpress.Xpf.Grid.SummaryItemBase   	FieldName$ TenThuoc��6       SummaryType]	 YDevExpress.Data.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a5 	 /DevExpress.Data.Design.SummaryItemTypeConverter$ Count 65      DisplayFormat$! Tổng sản phẩm: {0:n0}��5F   '     5G      $ 	ThanhTien��6    $	 Sum 66   $ Thành tiền: {0:n0}��6I   . 5I   
     $ 50 5J       	  AllowColumnFiltering5 	 /DevExpress.Utils.Design.DefaultBooleanConverter$
 True 6    	  AllowEditing$
 True 5K       	  AutoFilterCriteria$ ContainsX�5L      $ MaThuoc��5M      $ Mã thuốc 6    	  FilterPopupMode$ CheckedList=�5N        	  IsSmart  . 5P        5Q   
   $	 150 5R      $
 True 5S      $
 True 5T      $ ContainsX�5U      $ TenThuoc��5V      $ CheckedList=�5W      $ Tên thuốc 5X        . ! 	  ReadOnly! . 5Z        5[   
   $ 50 5\      $
 True 5]      $
 True 5^      $ ContainsX�5_      $ 	DonViTinh��5`      $ CheckedList=�5a      $
 ĐVT 5b      ! . 5c        5d   
   $ SoLuong��6   $ Số lượng 6-   " 	  UnboundType8 	 2DevExpress.Utils.Design.UnboundColumnTypeConverter$" Decimal 6?   $ 60 6U    5e        5f      $ n0��6#   $ Numeric=�6-    . $ vi-VN��6^   5h        5i   
   $ DonGia��6   $ 
Đơn giá 6-   $" Decimal 6>   $ 90 6T    5j        5k      $ n0��6#   $ Numeric=�6-    . $ vi-VN��6^   5m        5n   
   $ 	ThanhTien��6   $ Thành tiền 6/   $	 120 6D    5o        5p      $ n0��6#   $ Numeric=�6-    . $ vi-VN��6^   5r      5s   	   �� 5u      $��0��5v   	   $��5 0 5 3q�5w   	   # �� Orientation$# 
Horizontal=�5x   	   .+�5y   
   &   DevExpress.Xpf.Core.SimpleButton  -   5        $  Name$$ btnThem��5z      $
��5 0 q�5{      $��Thêm mới��5}        5   
   -   5        $$ btnSua��5�      $
��5 0 q�5�      $��Sửa phiếu��5�      $��20��6   $	��Top=�6+     5�   
   -   5        $$ 	btnDelete��5�      $
��5 0 q�5�      $��Xóa phiếu��5�      5�   	   5�      5�      5�      