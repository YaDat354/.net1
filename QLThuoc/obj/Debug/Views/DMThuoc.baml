   M S B A M L   `   `   `  ����  QLThuoc    QLThuoc.Views.DMThuoc   5      a ]DevExpress.Xpf.Core.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      e aDevExpress.Xpf.Controls.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aCdxwui7http://schemas.devexpress.com/winfx/2008/xaml/windowsui  5      a ]DevExpress.Xpf.Grid.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v20.1.Core, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   6T   ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  6�   ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  6�   -   5          >�Name$  ViewDMThuoc��5      
������.��5	      1  +DevExpress.Xpf.WindowsUI.PageAdornerControl  <  6DevExpress.Xpf.WindowsUI.Base.veHeaderedContentControl   Header$ Danh mục thuốc��6      ShowBackButton . .��5
   
   �  � ColumnDefinitions 5      �� 5      $
��395* �6#   �� 5      $
��251* �6#    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $��* �6    .+�5      %  DevExpress.Xpf.Grid.GridControl  -   5          Name$ gcData��5   	   $��2,2,2,2q�5      $��1��5   	   )  #DevExpress.Xpf.Grid.DataControlBase   SelectionMode$
 Cell=�5   	   $��2��6      View 5      #  DevExpress.Xpf.Grid.TableView  5      -   5          Name$ gvData��5      	   NewItemRowPosition$		 Top=�5      
   	PasteMode$
 Append=�5      &   DevExpress.Xpf.Grid.DataViewBase   SearchDelay$ 10��5         SearchPanelFindFilter$ Contains=�5         ShowAutoFilterRow . "   ShowCriteriaInAutoFilterRow .    ShowSearchPanelMode$ Never=�5"      &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  5#   .      Columns. 5%      $  DevExpress.Xpf.Grid.GridColumn  $	  DevExpress.Xpf.Grid.ColumnBase 	  AllowColumnFiltering]	 YDevExpress.Data.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a5
 	 /DevExpress.Utils.Design.DefaultBooleanConverter$
 True
 5&       	  AllowEditing$
 True
 5'       	  AutoFilterCriteria$ ContainsX�5(       	  	FieldName$ MaThuoc��5)       	  FilterPopupMode$ CheckedList=�5*      $  DevExpress.Xpf.Grid.BaseColumn   Fixed$
 Left=�5+         Header)  #DevExpress.Xpf.Core.ObjectConverter$ Mã thuốc 5,       	  IsSmart .  	  ReadOnly .  	  	SortOrder9 	 3DevExpress.Data.Design.ColumnSortOrderTypeConverter$ 	Ascending 5.       	  	SortIndex$ 0��61     5/      $
 True
 50      $
 True
 51      $ ContainsX�52      $ TenThuoc��53      $ CheckedList=�54      $ Tên thuốc 55      '    HorizontalHeaderContentAlignment$
 Left=�56       . 57        58      $
 True
 59      $
 True
 5:      $ ContainsX�5;      $ 	DonViTinh��5<      $ CheckedList=�5=      $ Đơn vị tính 5>       . 5?        5@      $
 True
 5A      $
 True
 5B      $ ContainsX�5C      $ 	DonGiaMua��5D      $ CheckedList=�5E      $ Giá mua 5F       .  	  EditSettings 5H      6  0DevExpress.Xpf.Editors.Settings.TextEditSettings  5I         Mask$ n0��6/       MaskType$  Numeric=�69   !   MaskUseAsDisplayFormat! . "   MaskCulture$" vi-VN��6j   5K        5L      $
 True
 5M      $
 True
 5N      $ ContainsX�5O      $ 	DonGiaBan��5P      $ CheckedList=�5Q      $ 	Giá bán 5R       .  5T        5U      $ n0��6/   $  Numeric=�69   ! . $" vi-VN��6j   5W      5X      �� 5Z      $��0��6   # �� Orientation$# 
Horizontal=�6&   $��2��6?   $��	0,0,0,124q�6S   $��2��6f   .+�5[      &   DevExpress.Xpf.Core.SimpleButton  -   5        $  Name$$ 	btnDelete��5^      $��Xóa thuốc��5]      5^      5_      5`      5a      5b      