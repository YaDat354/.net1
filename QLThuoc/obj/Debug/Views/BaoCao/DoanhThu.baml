   M S B A M L   `   `   `  ����B  >QLThuoc, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:QLThuoc.ModelsQLThuoc.Models  5   P  #    QLThuoc.Views.BaoCao.DoanhThu   5      a ]DevExpress.Xpf.Core.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      e aDevExpress.Xpf.Controls.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  6K   a ]DevExpress.Xpf.Grid.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v20.1.Core, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   6�   ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  6�   ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  6  )Modelsclr-namespace:QLThuoc.Models  6P  -   5          >�Name$  ViewDoanhThu��5   &   
���z���.��5      1  +DevExpress.Xpf.WindowsUI.PageAdornerControl  <  6DevExpress.Xpf.WindowsUI.Base.veHeaderedContentControl   Header$ Báo cáo doanh thu��6      ShowBackButton . .��5	      �  � RowDefinitions 5
      �� 5   
   $
��Auto �6   �� 5   
   $��* �6   .+�5      %  DevExpress.Xpf.Grid.GridControl  -   5          Name$ gcData��5   	   $��2q�5      $��1��5   	   )  #DevExpress.Xpf.Grid.DataControlBase   SelectionMode$
 Cell=�5   	      View 5   
   #  DevExpress.Xpf.Grid.TableView  5      -   5          Name$ gvData��5         NewItemRowPosition$
 None=�5      	   	PasteMode$	 Append=�5      &   DevExpress.Xpf.Grid.DataViewBase
   SearchDelay$
 10��5         SearchPanelFindFilter$ Contains=�5         ShowAutoFilterRow . "   ShowCriteriaInAutoFilterRow .    ShowSearchPanelMode$ Never=�5      &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  6*      Columns. 5   
   $  DevExpress.Xpf.Grid.GridColumn  $	  DevExpress.Xpf.Grid.ColumnBase 	  	FieldName$ 
NgayHoaDon��6   $
  DevExpress.Xpf.Grid.BaseColumn 
  Header)  #DevExpress.Xpf.Core.ObjectConverter$ Ngày hóa đơn 60    
  Width2  ,DevExpress.Xpf.Grid.GridColumnWidthConverter$ 90 6F    	  IsSmart .  	  EditSettings 5      6  0DevExpress.Xpf.Editors.Settings.DateEditSettings  5      6  0DevExpress.Xpf.Editors.Settings.TextEditSettings   Mask$ 
dd/MM/yyyy��6#   5"        5#   
   $ 	TenDoiTac��6   $ Đối tác 6/   $	 150 6@    . 6L     5$   
   $ ThanhTienMuaHang��6   $ Thành tiền mua 66   $	 120 6N    .  5%        5&      $ n0��6#      MaskType$ Numeric=�6-      MaskUseAsDisplayFormat .    MaskCulture$ vi-VN��6^   5(        5)   
   $ ThanhTienBanHang��6   $ Thành tiền bán 66   $	 120 6N    .  5*        5+      $ n0��6#   $ Numeric=�6-    . $ vi-VN��6^   5-      5.   	   �� 50      $��0��6    �� Orientation$ 
Horizontal=�6    .+�51   
   &   DevExpress.Xpf.Core.SimpleButton  -   5          Name$ btnXem��54      $	��Xem��53      54      55   	   56      57      58      