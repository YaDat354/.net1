   M S B A M L   `   `   `  ����B  >QLThuoc, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QLThuoc.ViewsQLThuoc.Views  5
      /clr-namespace:QLThuoc.ModelsQLThuoc.Models  5          QLThuoc.Views.DoiTac   5      a ]DevExpress.Xpf.Core.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      a ]DevExpress.Xpf.Grid.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v20.1.Core, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5      e aDevExpress.Xpf.Controls.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  5	      'localclr-namespace:QLThuoc.Views  5
      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      )Modelsclr-namespace:QLThuoc.Models  5      -   5          >�Name$  
ViewDoiTac��5      
�������.��5      1  +DevExpress.Xpf.WindowsUI.PageAdornerControl  <  6DevExpress.Xpf.WindowsUI.Base.veHeaderedContentControl   Header$ Đối tác��6      ShowBackButton . .��5      �  � RowDefinitions 5      �� 5   
   $
��Auto �6   �� 5   
   $��* �6   .+�5      %  DevExpress.Xpf.Grid.GridControl  -   5        $��gcData��5   	   $��2q�5      $��1��5   	   )  #DevExpress.Xpf.Grid.DataControlBase   SelectionMode$
 Cell=�5   	      View 5   
   #  DevExpress.Xpf.Grid.TableView  5      -   5        $��gvData��5         NewItemRowPosition$	 Top=�5         	PasteMode$ Append=�5      &   DevExpress.Xpf.Grid.DataViewBase   SearchDelay$ 10��5!      	   SearchPanelFindFilter$	 Contains=�5"      
   ShowAutoFilterRow
 . "   ShowCriteriaInAutoFilterRow .    ShowSearchPanelMode$ Never=�5%      &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  5&   .      Columns. 5(   
   $  DevExpress.Xpf.Grid.GridColumn  $	  DevExpress.Xpf.Grid.ColumnBase 	  AllowColumnFiltering]	 YDevExpress.Data.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a5
 	 /DevExpress.Utils.Design.DefaultBooleanConverter$
 True
 5)       	  AllowEditing$
 True
 5*       	  AutoFilterCriteria$ ContainsX�5+       	  	FieldName$ MaDoiTac��5,       	  FilterPopupMode$ CheckedList=�5-      $  DevExpress.Xpf.Grid.BaseColumn   Fixed$
 Left=�5.         Header)  #DevExpress.Xpf.Core.ObjectConverter$ Mã đối tác 5/       	  IsSmart .  	  ReadOnly . 51        52   
   $
 True
 53      $
 True
 54      $ ContainsX�55      $ 	TenDoiTac��56      $ CheckedList=�57      $ Tên đối tác 58      '    HorizontalHeaderContentAlignment$
 Left=�59       . 5:        5;   
   $
 True
 5<      $
 True
 5=      $ ContainsX�5>      $ DiaChi��5?      $ CheckedList=�5@      $ Địa chỉ 5A       . 5B        5C   
   $
 True
 5D      $
 True
 5E      $ ContainsX�5F      $ 	DienThoai��5G      $ CheckedList=�5H      $ Điện thoại 5I       . 5J        5K   
   $
 True
 5L      $
 True
 5M      $ ContainsX�5N      $ LaNhaCungCap��5O      $ CheckedList=�5P      $% Đối tác là nhà cung cấp 5Q       . 5R      5S   	   �� 5U      $��0��6    �� Orientation$ 
Horizontal=�6    .+�5V   
   &   DevExpress.Xpf.Core.SimpleButton  -   5        $��	btnDelete��5Y      $��Xóa Đối tác��5X      5Y      5Z   	   5[      5\      5]      