   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:SIGEEA_App.Ventanas_Modales.Empleados%SIGEEA_App.Ventanas_Modales.Empleados  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   <    6SIGEEA_App.Ventanas_Modales.Empleados.wnwPagoEmpleados   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:SIGEEA_App.Ventanas_Modales.Empleados     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  Pago de Empleados��5	   	   $��644.099��6#   $��1207.893��64    � 
ResizeMode$ NoResize=�6E    � WindowStartupLocation$ CenterScreen=�6[   .��5
      �� ���#83919F$��2q�6#   ._�5   
   � $��	0,0,-6,-5q�6   .+�5      �� -   5        $��svwPanel��5   3   $��236,141,140,78q�6   $��Visible=�6C   $��Hidden=�6i   $
��auto��6�   ��. $	��832��6�   ���	#FF667B95.��5      �� -   5        $��stpPagos��5      $
��Left=�6-   $
��auto��6H   $	��500��6V   $	��Top=�6f   $	��832��6~   ���	#FFD3CECE6�   5      &   System.Windows.Controls.DataGrid  5      $��236,108,140,484q�6      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Fecha��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 68      CanUserResize .     FontSize$ 16Q�6Z      
FontWeight$
 Bold"�6h   	 �� TextAlignment$	 Center=�6z   6�     5      $ Horas laboradas��6)   $	 200 6B    .  $ 16Q�6d   $
 Bold"�6r   $	 Center=�6�   6�     5      $ Puesto desempeñado��6)   $	 200 6E    .  $ 16Q�6g   $
 Bold"�6u   $	 Center=�6�   6�     5      $ Tarifa��6)   $	 100 69    .  $ 16Q�6[   $
 Bold"�6i   $	 Center=�6{   6�     5      $ Total��6)   $	 100 68    .  $ 16Q�6Z   $
 Bold"�6h   $	 Center=�6z   6�     5      $ Cancelar��6)   $	 100 6;    .  $ 16Q�6]   $
 Bold"�6k   $	 Center=�6}   6�   5      �� 5      -   5        
 ��Name$
 rbtTodos��5      $
��Left=�6)   $��1068,94,0,0q�6D   $	��Top=�6Y   $��47��6q   $��25��6}   6�   �� 5      -   5         ��Name$ btnPagar��5      $��1086,236,29,300q�6'      MetroCircleButtonStyle#���   6@    � Cursor$
 Hand��6q   .��5      �� $��43��6   $��53��6'   ��63   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6&      appbar_clipboard_paper_check !� Visual# �  5      5       5!      5"      5#      5$      