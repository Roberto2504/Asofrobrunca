   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados%SIGEEA_App.Ventanas_Modales.Asociados  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   >    8SIGEEA_App.Ventanas_Modales.Asociados.wnwCompletaEntrega   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  Factura��5	   	   $��487.218��6   $��835.714��6*    � 
ResizeMode$ NoResize=�6:    � WindowStartupLocation$ CenterScreen=�6P   .��5
      �� ���#83919F$��2q�6#   ._�5   
   � .+�5      &   System.Windows.Controls.DataGrid  $��51,100,97,327q�6      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Descripción��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$	 450 6>      CanUserResize .     FontSize$ 16Q�6`      
FontWeight$
 Bold"�6n   	 �� TextAlignment$	 Center=�6�   6�     5      $ Cantidad neta��6)   $	 375 6@    .  $ 16Q�6b   $
 Bold"�6p   $	 Center=�6�   6�   5      �� 5      $��51,132,128,37q�6   $��Visible=�62   .��5      �� -   5        $��stpContenedor��5      5      5      � 5      $
��Left=�6   $��95��6.   $	��Top=�6:   $	��830��6R   ��5      �� 5      
 �� EndPoint$
 0.5,1&�6*    �� 
StartPoint$ 0.5,0&�6;   .��5      �  � Color$ White��6'    � Offset$ 0Q�65   � 5      $ 	#FF4B689B��6'   $ 1Q�69   5      .+�5      �� -   5        $��lblAsociado��5      $��10,3,443,57q�6+   $
��Bold"�6@   $��16(�6R   .��6`   	Asociado:6k   �� 5      -   5        $��	lblCedula��5      $��392,3,210,60q�6)   $
��Bold"�6?   $��16(�6Q   .��6_   
Cédula:6h   �� 5       -   5        $��	lblCodigo��5       $��625,0,42,60q�6)   $
��Bold"�6>   $��16(�6P   .��6^   
Código:6g   �� 5!      -   5        $��
lblFactura��5!      $��500,46,127,15q�6*   $
��Bold"�6A   $��16(�6S   .��6a   N° factura:6n   �� 5"      -   5        $��lblFecEntrega��5"      $��146,43,407,13q�6-   $
��Bold"�6D   $��16(�6V   .��6d   Fecha de entrega:6w   5#      �� 5%      -   5         ��Name$ 
btnGuardar��5%      $��738,227,10,153q�6)      MetroCircleButtonStyle#���   6A    � Cursor$
 Hand��6r    � ToolTip$ Guardar cambios��6�   .��5&      �� $��33��6   $��27��6'   ��63   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5'      !� 5(       j� Stretch$
 Fill=�6&     appbar_save !� Visual# �  5)      5+      5,      5-      5.      5/      