   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:SIGEEA_App.Ventanas_Modales.Productos%SIGEEA_App.Ventanas_Modales.Productos  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   >    8SIGEEA_App.Ventanas_Modales.Productos.wnwEntregaProducto   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:SIGEEA_App.Ventanas_Modales.Productos     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  Entrega de producto��5	   	   $��521.561��6%   $��1283.994��66    � 
ResizeMode$ NoResize=�6G    � WindowStartupLocation$ CenterScreen=�6]   .��5
      �� ���#83919F$��2q�6#   ._�5   
   � .+�5      � $��	0,0,0,426q�6   ��5      �� 5       �� EndPoint$ 0.5,1&�6*    �� 
StartPoint$ 0.5,0&�6;   .��5      �  � Color$ White��6'    � Offset$ 0Q�65   � 5      $ 	#FFA2A4C7��6'   $ 1Q�69   5      .+�5      �� -   5        $��lblNombreAsociado��5   I   $
��Bold"�6   $��14.667(�6*   $
��auto��6<   $��	0,0,850,0q�6b   .��6u   Entrega de:6�   �� 5      -   5        $��lblCedulaAsociado��5   I   $
��Bold"�6   $��14.667(�6*   $
��auto��6<   $��474,0,364,35q�6b   .��6x   
Cédula #:6�   �� 5      -   5        $��lblCodigoAsociado��5   I   $
��Bold"�6   $��14.667(�6*   $
��auto��6<   $��1052,0,38,0q�6b   .��6w   
Código:6�   5      &   System.Windows.Controls.DataGrid  5      $��19,85,120,370q�6      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Cantidad��6)   	   Width5  /System.Windows.Controls.DataGridLengthConverter$		 280 6;   
   CanUserResize
 .     FontSize$ 16Q�6]      
FontWeight$
 Bold"�6k    �� TextAlignment$ Center=�6}   6�     5      $ Producto��6)   $		 250 6;   
 .  $ 16Q�6]   $
 Bold"�6k   $ Center=�6}   6�     5      $ Mercado��6)   $		 230 6:   
 .  $ 16Q�6\   $
 Bold"�6j   $ Center=�6|   6�     5      $ Finca��6)   $		 250 68   
 .  $ 16Q�6Z   $
 Bold"�6h   $ Center=�6z   6�     5      $
 Lote��6)   $		 200 67   
 .  $ 16Q�6Y   $
 Bold"�6g   $ Center=�6y   6�   5      �� 5       $
��Auto=�6   $��10,124,81,33q�6>   ���	#FF4B6181.��5!      �� -   5        $��stpContenedor��5!   /   $��0,0,15,0q�6   $
��Auto��6D   5"      �� 5#      -   5         ��Name$ 
btnAgregar��5#      $��1209,169,10,272q�6)      MetroCircleButtonStyle#���   6B    � Cursor$
 Hand��6s    � ToolTip$ Agregar ítem��6�   .��5$      �� $��25��6   $��22��6'   ��63   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5%      !� 5&       j� Stretch$
 Fill=�6&     
appbar_add !� Visual# �  5'      5)      5*      �� 5+      -   5        $ btnFacturar��5+      $��1209,279,10,162q�6*   #���   6C   $
 Hand��6t   $ Facturar��6�   .��5,      �� $��25��6   $��22��6'   ��63   �� *
Foreground+ �� *FindAncestor+" �� 5-      !� 5.      $
 Fill=�6&     appbar_money# �  5/      51      52      53      54      55      