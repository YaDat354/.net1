   M S B A M L   `   `   `  ����R  NSystem.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089D1clr-namespace:System.Dynamic;assembly=System.CoreSystem.Dynamic  5
      B >QLThuoc, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:QLThuoc.ModelsQLThuoc.Models 5         QLThuoc.Views.ThemHoadon   5      a ]DevExpress.Xpf.Core.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5      a ]DevExpress.Xpf.Grid.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v20.1.Core, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5      j	 fDevExpress.Xpf.LayoutControl.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aFdxlc;http://schemas.devexpress.com/winfx/2008/xaml/layoutcontrol 	 5	      ?Dynamic1clr-namespace:System.Dynamic;assembly=System.Core 	 5
      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006 	 5      )Modelsclr-namespace:QLThuoc.Models 	 5      -   5        
�������  � 
ResizeMode$  NoResize=�5       � WindowStartupLocation$ CenterScreen=�5       � 	Resources 5      ��%    5      .��5      �  � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��* �6   .+�5      + 	 %DevExpress.Xpf.LayoutControl.GroupBox  4  .DevExpress.Xpf.Core.HeaderedContentControlBase   Header$ Thông tin hóa đơn��6   ,  &DevExpress.Xpf.Core.ContentControlBase   Content. 5      �� .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��5q�5       $��Center=�5!      $��Ngày hóa đơn: ��5"       �� TextAlignment$ Center=�5#      %  DevExpress.Xpf.Editors.DateEdit  5$      -   5          Name$ dpkNgayHoaDon��5%      $	��120��5&      $��5q�5'      '  !DevExpress.Xpf.Editors.ButtonEdit	   IsTextEditable$	 FalseX�5(      %  DevExpress.Xpf.Editors.TextEdit
   Mask$
 
dd/MM/yyyy��5)      %  DevExpress.Xpf.Editors.BaseEdit   StyleSettings 5*      :  4DevExpress.Xpf.Editors.DateEditCalendarStyleSettings  5+      5-      �� 50      $��5q�51      $��Center=�52      $��Đối tác: ��53      $ Center=�54      +	  %DevExpress.Xpf.Grid.LookUp.LookUpEdit	  55      -   5         	 Name$ 	lueDoiTac��56      $	��200��57      $��5q�58      $��Center=�59      $	��Top=�5:      +
  %DevExpress.Xpf.Editors.LookUpEditBase 
  AutoComplete .  	  AutoPopulateColumns .   
  DisplayMember$ 	TenDoiTac��5=       
  ImmediatePopup .  
  IncrementalFiltering$
 TrueX�5?       	  IsPopupAutoWidth .   
  ValueMember$ MaDoiTac��5A       	  StyleSettings 5B      >  8DevExpress.Xpf.Grid.LookUp.SearchLookUpEditStyleSettings  5C      *  $DevExpress.Xpf.Editors.PopupBaseEdit   PopupContentTemplate 5E      �� 5F      .R�5G      %  DevExpress.Xpf.Grid.GridControl  $��PART_GridControl��6"      Columns 5H      $  DevExpress.Xpf.Grid.GridColumn  5I      $  DevExpress.Xpf.Grid.BaseColumn   Width2  ,DevExpress.Xpf.Grid.GridColumnWidthConverter$ 50 5J      $  DevExpress.Xpf.Grid.ColumnBase   	FieldName$ MaDoiTac��5K         Header)  #DevExpress.Xpf.Core.ObjectConverter$	 Mã 5L        5M      $	 200 5N      $ 	TenDoiTac��5O      $ Tên đối tác 5P         View 5R      #  DevExpress.Xpf.Grid.TableView  5S         	AutoWidth . 6$   5U      5V      5X      5[      �� 5\   
   $ 
Horizontal=�6   .+�5]      �� $��5q�5^      $��Center=�5_      $��
Ghi chú: ��5`      $ Center=�5a        5b      -   5        $��	txtGhiChu��5b   &   $	��420��6   $��5q�5c      5d      �� 5e   
   $ 
Horizontal=�6   .+�5f      &   DevExpress.Xpf.Core.SimpleButton  -   5          Name$ btnLuu��5g      $��5q�5h      $
��Lưu��5i      6     5j      -   5        $ bntXoa��5k      $��5q�5l      $
��Xóa��5m      6   5n      5q   	   5s        5u      $��1��6   $ Chi tiết hóa đơn��6!   . 5v        -   5        $��gcData��5w   	   )  #DevExpress.Xpf.Grid.DataControlBase   SelectionMode$
 Cell=�5x   	    5y   
     5z      -   5        $��gvData��5}         NewItemRowPosition$	 Top=�5~         	PasteMode$ Append=�5      &   DevExpress.Xpf.Grid.DataViewBase    SearchDelay$  10��5�      !   SearchPanelFindFilter$! Contains=�5�      "   ShowAutoFilterRow" . "#   ShowCriteriaInAutoFilterRow# . &   DevExpress.Xpf.Grid.GridViewBase$   ShowGroupPanel$ .  %   ShowSearchPanelMode$% Never=�5�      &   ShowTotalSummary& .  '   SummariesIgnoreNullValues' . 5�      (   TotalSummary( 5�   
   )  #DevExpress.Xpf.Grid.GridSummaryItem  5�      )  #DevExpress.Xpf.Grid.SummaryItemBase)   	FieldName$) TenThuoc��6    *   SummaryType]
 YDevExpress.Data.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a5 
 /DevExpress.Data.Design.SummaryItemTypeConverter$* Count 65   +   DisplayFormat$!+ Tổng sản phẩm: {0:n0}��5�   '     5�      $) 	ThanhTien��6    $	* Sum 66   $+ Thành tiền: {0:n0}��6I   . 5�   
     $ 60 5�      ,   AllowColumnFiltering5 
 /DevExpress.Utils.Design.DefaultBooleanConverter$
, True 5�      -   AllowEditing$
- True 5�      .   AutoFilterCriteria$. ContainsX�5�      $ MaThuoc��5�      $ Mã thuốc 6   /   FilterPopupMode$/ CheckedList=�5�      0   IsSmart0 . 1   EditSettings1 5�      3  -DevExpress.Xpf.Grid.LookUp.LookUpEditSettings  5�      -	   5        2 �Name$2 	glueThuoc��5�      3   AutoPopulateColumns3 .  <  6DevExpress.Xpf.Editors.Settings.LookUpEditSettingsBase4   DisplayMember$4 MaThuoc��5�      5   ValueMember$5 MaThuoc��5�      6  0DevExpress.Xpf.Editors.Settings.BaseEditSettings6   StyleSettings6 5�        5�      ;  5DevExpress.Xpf.Editors.Settings.PopupBaseEditSettings7   PopupContentTemplate7 5�      �� 5�      .R�5�        $��PART_GridControl��6$    5�        5�      $ 50 5�      $ MaThuoc��5�      $	 Mã 5�        5�      $	 200 5�      $ TenThuoc��5�      $ Tên thuốc 5�        5�      $	 200 5�      $ 	DonViTinh��5�      $	 DVT 5�       5�        5�       . $  10��67   5�      5�      5�      5�        5�   
   $	 150 5�      $
, True 5�      $
- True 5�      $. ContainsX�5�      $ TenThuoc��5�      $/ CheckedList=�5�      $ Tên thuốc 5�      0 . 8   ReadOnly8 . 5�        5�   
   $ 50 5�      $
, True 5�      $
- True 5�      $. ContainsX�5�      $ 	DonViTinh��5�      $/ CheckedList=�5�      $
 ĐVT 5�      0 . 8 . 5�        5�   
   $ SoLuong��6   $ Số lượng 6-   0 . 9   UnboundType8  
 2DevExpress.Utils.Design.UnboundColumnTypeConverter$9 Decimal  6N   $ 60 6d   1 5�      6!  0DevExpress.Xpf.Editors.Settings.TextEditSettings!  5�      : !  Mask$: n0��6#   ; !  MaskType$; Numeric=�6-   < !  MaskUseAsDisplayFormat< . = !  MaskCulture$= vi-VN��6^   5�        5�   
   $ DonGia��6   $ 
Đơn giá 6-   0 . $9 Decimal  6M   $	 120 6c   1 5�      !  5�      $: n0��6#   $; Numeric=�6-   < . $= vi-VN��6^   5�        5�   
   $ 	ThanhTien��6   $ Thành tiền 6/   0 . $9 Decimal  6R   $	 120 6h   1 5�      !  5�      $: n0��6#   $; Numeric=�6-   < . $= vi-VN��6^   5�      5�   	   5�      5�      5�      