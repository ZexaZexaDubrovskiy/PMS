   M S B A M L   `   `   `  ����>  :PMS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:PMS.BaseWindowPMS.BaseWindow  5   	   '    !PMS.BaseWindow.DialogWindowDayOff   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:PMS.BaseWindow     5   	     � Title$%  Выбрать выходной��5   	   $	��600��6"   $
��1200��6/   $	��600��6<   $	��600��6K    � WindowStartupLocation$ CenterScreen=�6[   .��5	      � ���#C4E3CB � ColumnDefinitions 5
   
   �� 5      $	��300 �6   �� 5      $	��300 �6   �� 5      $	��300 �6   �� 5      $	��300 �6    � RowDefinitions 5   
   �� 5      $	��150 �6   �� 5      $	��300 �6   �� 5      $	��100 �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��0��6.   $��0��6>   $��4��6K   $��	20,20,0,0q�6_   .+�5      �� $��0��6   $��0��6)   .+�5      �� -   5         ��Name$ DateLabelTo��5      $��Дата��6-      LabelStyle1#���   6<    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         ShadowDepth$ 1Q�6+   5      (  "System.Windows.Controls.DatePicker  5      -   5          Name$ datePickerTo��5      $	��250��63   $��50��6?   $��30(�5      $
��Bold"�6+   5       5!      �� 5#   
   $��0��6   $��1��6%   $��4��62   $��20,0,0,0q�6F   .+�5$      �� -   5        $ reasoneLable��5$      $��Причина��6+   $
��Left=�6=   #���   5&       5'        5(      $ 1Q�6'   5*      �� 5+      -   5        	 ��Name$	 reasoneTextBox��5+      $
��Left=�6/   $	��200��6J   $
��1150��5,      
 �� TextWrapping$

 Wrap=�6(     TextBoxStyle1#���  5-      5.      �� 50   
   -   5         ��Name$	 Add��50      $��Отправить��6   $��2��62   $��2��6?   $	��250��51      $��75��6     ButtonStyle1#���  52      �� 53   
   -   5        $ ListOFRecipes��53      $��Отменить��6(   $��3��6;   $��3��6H   $	��250��54      $��75��6   #���  55      56      57      