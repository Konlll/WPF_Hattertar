   M S B A M L   `   `   `  ����B  >Hardver, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:HardverHardver  5   	       Hardver.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Hardver     5   	     � Title$  Merevlemez átváltás��5   	   $	��450��6%   $	��800��62   .��5	      � $��Center=�6   $��Center=�6(    � RowDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      .+�5   
   �� $��0��6    �� Orientation$ 
Horizontal=�6"   .+�5      �� $��
Kapacitás��6   $��20(�6(   $
��Bold"�66   �� 5      -   5         ��Name$ txtCapacity��5      $	��100��6+   $��Center=�67   $��18(�6R   �� 5      -   5         ��Name$ cboCapacity��5      $��Center=�6,   $��18(�6G   .@�5      ��  �� 
IsSelected$
 True��6   .��61   Mb65   �� 5      .��6   Gb6#   �� 5      .��6   Tb6#   5      5      �� 5   
   $��1��6   $ 
Horizontal=�6"   .+�5      �� $��Átviteli sebesség��6   $��20(�60   $
��Bold"�6>   �� 5      -   5         ��Name$ sliSpeed��5       � Maximum$
 5000Q�6'   	 � Minimum$	 10Q�66   $	��100��6C   $��Center=�6O   
 � Value$
 10Q�6j    �� TickFrequency$ 1Q�6u    �� IsSnapToTickEnabled$
 True��6�   �� 5       -   5         ��Name$ lblSpeed��5    �   $��20(�6   $
��Bold"�6"   $��Center=�6i   ��64   ��  �� ElementName$ sliSpeed�� �� Path$ Value�6�   �� 5!      -   5        $ cboSpeed��5!      $��Center=�6)   $��18(�6D   .@�5"      �� $
 True��6   .��61   mbps67   �� 5#      .��6   Kbps6%   �� 5$      .��6   Mbps6%   �� 5%      .��6   Gbps6%   5&      5'      �� 5(   
   -   5         ��Name$ btnCalculate��5(   /   $��2��6   $��Számol��6   $��80��6E   $��18(�6k   �� 5)   
   -   5        $ 	lblResult��5)   3   $��Eredmény: -��6   $��3��6&   $��20(�6F   $
��Bold"�6T   5*      5+      