   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:SIGEEA_App.Ventanas_Modales.Clientes$SIGEEA_App.Ventanas_Modales.Clientes  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   C&clr-namespace:SIGEEA_App.User_ControlsSIGEEA_App.User_Controls  5	   	   C    =SIGEEA_App.Ventanas_Modales.Clientes.wnwRealizarPedidoCliente   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:SIGEEA_App.Ventanas_Modales.Clientes     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   @User_Controls&clr-namespace:SIGEEA_App.User_Controls     5	   	     � Title$  Pedido de Cliente��5   	   $��600.631��6#   $��1200.503��64    � 
ResizeMode$ NoResize=�6E    � WindowStartupLocation$ CenterScreen=�6[    � WindowStyle$
 None=�6�   .��5      � .+�5   
   � $
��Left=�6   $��67��6*   $	��Top=�66   $	��344��6N   .+�5      �� 
���   �$��2q�6)   $
��Left=�6=   $	��599��6X   $��0,0,-853,-532q�6e   $	��Top=�6|   $
��1197��6�   �� 5      -   5         ��Name$ txbBuscarProducto��5       �� 	MaxLength$	 200��6^   $
��Left=�5      $��2q�6.   ���#5C5C5C$	��203��6X   $��	9,31,0,10q�6d    J� RenderTransformOrigin$ 0.5,0.5&�6w   $��16(�6�   �� 5      $/��)/SIGEEA_App;component/Imagenes/buscar.png��6   $��
190,34,0,0q�6H   $
��Left=�6\   $��20��6w   $ 0.5,0.25&�6�   $��23��6�   $	��Top=�6�   �� 5      -   5         ��Name$ 	textBlock��5      $��15(�6+   $
��Bold"�69   $
��Left=�6K   $��10,9,0,0q�6f   $
��Wrap=�6x   $��Nombre del producto:��6�   $	��Top=�6�   $	��177��6�   5      �� 5   
   -   5        $ txbCantitadTotal��5      $��572,449,326,117q�6.   $
��Wrap=�6G   $��20(�6[   $
��Bold"�6i   $��Monto bruto:��6{   �� 5   
   -   5        $ txbCanTotBruto��5      $��823,449,116,115q�6,   $
��Wrap=�6E   $��20(�6Y   $
��Bold"�6g   $��$0��6y   �� 5   
   
���   �$��2q�6%   $
��Left=�69   $	��350��6T   $��	20,94,0,0q�6a   $	��Top=�6t   $	��540��6�   ._�5       �� $
��Auto=�6   .��5!      � -   5         �Name$ 
wpProducto��5!      $
��Auto=�60   $	��350��6`   $	��524��6m   
�������6y   5"      5#      �� 5$   
   
���   �$��2q�6%   $
��Left=�69   $	��350��6T   $��
572,94,0,0q�6a   $	��Top=�6u   $	��611��6�   ._�5%      �� $
��Auto=�6   .��5&      � -   5        $ wpVeProducto��5&      wpVeProducto��	 J� 	AllowDrop	 . $
��Auto=�6X   $	��350��6�   $	��591��6�   
�������6�   5'      5(      �� 5)   
   -   5        
 ��Name$
 btnGenerarFactura��5)      $��1097,490,26,20q�6,      MetroCircleButtonStyle#���   6D    � Cursor$
 Hand��6u   .��5*      �� $��40��6   $��42��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5+      !� 5,       j� Stretch$
 Fill=�6"     appbar_save !� Visual# �  5-      5/      50      �� 51   
   -   5        $
 btnCancelar��51      #���   6&   $
 Hand��6W   $��36,500,1083,28q�6�   .��52      �� $��38��6   $��38��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 53      !� 54      $
 Fill=�6"     appbar_close# �  55      57      58      �� 59   
   -	   5        $ 	txbMoneda��59      $��20(�6'   $
��Bold"�65   $
��Left=�6G   $��238,459,0,0q�6b   $
��Wrap=�6w   $��TIPO DE MONEDA:��6�   $	��Top=�6�   �� 5:   
   -
   5         ��Name$ 	cmbMoneda��5:      $
��Left=�6&   $��20(�6A   $
��Bold"�6O   $��421,459,0,0q�6�   $	��Top=�6�   $	��140��6�    �� SelectedIndex$ 1��6�   �� 5;   
   -   5        $ cmbVenta��5;      $��20(�6%   $
��Bold"�63   $
��Left=�6E   $��
421,10,0,0q�6`   $	��Top=�6t   $	��163��6�   $ 0��6�   6�   �� 5>   
   -   5         ��Name$ 
label_Copy��5>      $��20(�6$   $
��Bold"�62   $��Tipo de venta:��6D   $
��Left=�6]   $��	238,6,0,0q�6x   $	��Top=�6�   $	��154��6�   �� 5?   
   -   5        $ cmbTipoFactura��5?      $
��Left=�6+   $��20(�6F   $
��Bold"�6T   $��1043,10,0,0q�6f   $	��Top=�6{   $	��140��6�   $ 0��6�   6�   �� 5A   
   -   5        $ label_Copy1��5A      $��Tipo de factura:��6%   $
��Left=�6@   $��
866,10,0,0q�6[   $��20(�6p   $
��Bold"�6~   $	��Top=�6�   $	��172��6�   :   4SIGEEA_App.User_Controls.uc_ControlNumericoDescuento  5B   
   -   5          Name$ ucDescuentoTotal��5B   4   :   4SIGEEA_App.User_Controls.uc_ControlNumericoDescuento   PreviewMouseLeftButtonUp$/ )ucDescuentoTotal_PreviewMouseLeftButtonUp��6�   $
��Left=�6N   $��722,484,0,0q�6i   $	��Top=�6~   6�   �� 5C   
   -   5        $ txbDescuentoTexto��5C      $��572,483,484,83q�6/   $
��Wrap=�6G   $��20(�6[   $
��Bold"�6i   $��Descuento %��6{   �� 5D   
   -   5        $ txbMontoNetoTexto��5D      $��572,518,326,50q�6/   $
��Wrap=�6G   $��20(�6[   $
��Bold"�6i   �� 6|   $�
Monto Neto��6�   �� 6�   $�:��6�   6�   �� 5E   
   -   5        $ txbCanTotNeto��5E      $��823,518,116,50q�6+   $
��Wrap=�6C   $��20(�6W   $
��Bold"�6e   $��$0��6w   � 5F   
   -   5        $��
grdCredito��5F      $y�Hidden=�6!   .+�5G      �� -   5        $ 	lbCredito��5G      $��20(�6'   $
��Bold"�65   $��Credito disponible:��6G   $
��Left=�6e   $��
588,14,0,0q�6�   $	��Top=�6�   $	��192��6�   �� 5H      -   5        $ 
txbCredito��5H      $��588,40,386,438q�6,   $
��Wrap=�6D   $��20(�6X   $
��Bold"�6f   $��0��6x   5I      &   System.Windows.Controls.DataGrid  5J   
   $��23,65,642,509q�6   $ 0.5,0.5&�6*   z�5K      V� 5L      .~�5M      �� �� 5N      �� 5O       �� Angle$ 0.041Q�6&   T� 5P      5Q         Columns 5S      0  *System.Windows.Controls.DataGridTextColumn  5T      ,  &System.Windows.Controls.DataGridColumn   Header$ NOMBRE��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 125 65      CanUserResize .     FontSize$ 16Q�6W      
FontWeight$
 Bold"�6e    �� TextAlignment$ Center=�6w     5U      $	 CAL��6%   $ 50 62    .  $ 16Q�6S   $
 Bold"�6a   $ Center=�6s     5V      $ 
DISPONILES��6%   $	 165 69    .  $ 16Q�6[   $
 Bold"�6i   $ Center=�6{     5W      $ PRECIO��6%   $	 120 65    .  $ 16Q�6W   $
 Bold"�6e   $ Center=�6w   5Z        5[   
   $��573,65,22,511q�6   $ 0.5,0.5&�6*   z�5\      V� 5]      .~�5^      �� �� 5_      �� 5`      $ 0.041Q�6&   T� 5a      5b       5d        5e      $ NOMBRE��6%   $	 125 65    .  $ 16Q�6W   $
 Bold"�6e   $ Center=�6w     5f      $	 CAL��6%   $ 50 62    .  $ 16Q�6S   $
 Bold"�6a   $ Center=�6s     5g      $ CANTIDAD��6%   $	 115 67    .  $ 16Q�6Y   $
 Bold"�6g   $ Center=�6y     5h      $ BRUTO��6%   $	 105 64    .  $ 16Q�6V   $
 Bold"�6d   $ Center=�6v     5i      $	 DES��6%   $ 50 62    .  $ 16Q�6S   $
 Bold"�6a   $ Center=�6s     5j      $
 NETO��6%   $	 105 63    .  $ 16Q�6U   $
 Bold"�6c   $ Center=�6u   5l      5n      5o      