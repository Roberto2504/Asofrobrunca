   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:SIGEEA_App.Ventanas_Modales.Clientes$SIGEEA_App.Ventanas_Modales.Clientes  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5      A    ;SIGEEA_App.Ventanas_Modales.Clientes.wnwDatosFacturaCliente   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:SIGEEA_App.Ventanas_Modales.Clientes     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5        � Title$  Datos Factura Cliente��5	   	   $��489.251��6'   $	��400��68    � 
ResizeMode$ NoResize=�6D    � WindowStartupLocation$ CenterScreen=�6Z   .��5
      � $��0,0,0,0q�6   .+�5   
   �� 
���   �$��2q�6%   $
��Left=�69   $	��463��6T   $	��Top=�6a   $	��394��6y   $��0,-3,0,0q�6�   � 5   
   -   5         �Name$ grdObservaciones��5      $
��Left=�6)   $��95��6D   $��	10,30,0,0q�6P   $	��Top=�6c   $	��372��6{   .+�5      �� -   5         ��Name$
 txt1��5      $
��Left=�6&   $��10,0,0,0q�6A   $
��Wrap=�6S   $��Observaciones: ��6g   $	��Top=�6~   �� 5      -   5         ��Name$ txtObservaciones��5      $
��Left=�60   $��61��6K   $��	10,16,0,0q�6W    �� TextWrapping$
 Wrap=�6j   $�� ��6~   $	��Top=�6�   $	��352��6�   5      �� 5   
   -   5        $ txtbFactura��5      $
��Left=�6)   $��22,5,0,0q�6D   $
��Wrap=�6V   $��Tipo:��6j   $	��Top=�6w   �� 5   
   -   5        $ txtbTipoFactura��5      $
��Left=�6-   $��72,5,0,0q�6H   $
��Wrap=�6Z   $�� ��6n   $	��Top=�6v   $	��210��6�   $��20��6�   � 5   
   -   5        $ grdPago��5      $
��Left=�6    $	��127��6;   $��
10,114,0,0q�6H   $	��Top=�6\   $	��372��6t   $y�Hidden=�6�   .+�5      �� -   5        $ 	textBlock��5      $
��Left=�6+   $��22,9,0,0q�6F   $
��Wrap=�6X   $��Metodo de Pago��6l   $	��Top=�6�   $��93��6�   �� 5      -   5         ��Name$ cmbMetodoPago��5      $
��Left=�6.   $��	22,30,0,0q�6I   $	��Top=�6\   $	��188��6u    J� RenderTransformOrigin$ 0.206,-0.448&�6�   	 �� SelectedIndex$	 0��6�   �� 5      -	   5        $ 
txtNumero0��5      $
��Left=�6,   $��	22,61,0,0q�6G   $
��Wrap=�6Z   $��Numero:��6n   $	��Top=�6}   $	��120��6�   �� 5      -
   5        $ 	txtNumero��5      $
��Left=�6)   $��23��6D   $��	22,82,0,0q�6P   $
 Wrap=�6c   $�� ��6w   $	��Top=�6   $	��274��6�   5      � 5   
   -   5        $ grdAbono��5      $
��Left=�6!   $	��123��6<   $��
12,219,0,0q�6I   $	��Top=�6]   $	��372��6u   $y�Hidden=�6�   .+�5      �� -   5        $ textBlock13��5      {�.  $
��Left=�6?   $��2,36,0,0q�6Z   $
��Wrap=�6l   $��Fecha Próximo Pago��6�   $	��Top=�6�   $	��120��6�   $��26��6�   �� 5      -   5        $ txtFechaProximoPago��5      {�.  $
��Left=�6E   $��22��6`   $��
122,36,0,0q�6l   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��240��6�   �� 5      -   5        $ textBlock13_Copy��5      {�.  $
��Left=�6D   $��2,9,0,0q�6_   $
��Wrap=�6p   $��Fecha Limite de Pago��6�   $	��Top=�6�   $	��120��6�   $��26��6�   �� 5      -   5        $ txtFechaLimitePago��5      {�.  $
��Left=�6D   $��22��6_   $��	122,9,0,0q�6k   $
 Wrap=�6~   $�� ��6�   $	��Top=�6�   $	��240��6�   �� 5      -   5        $ textBlock13_Copy1��5      {�.  $
��Left=�6E   $��2,70,0,0q�6`   $
��Wrap=�6r   $��Mónto a cancelar��6�   $	��Top=�6�   $	��107��6�   $��26��6�   �� 5       -   5        $ txtMontoaCancelar��5       {�.  $
��Left=�6D   $��22��6_   $��
122,70,0,0q�6k   $
 Wrap=�6   $�� ��6�   $	��Top=�6�   $	��240��6�   5#      �� 5$   
   -   5        
 ��Name$
 btnPagar��5$      $��307,379,10,0q�6#      MetroCircleButtonStyle#���   69    � Cursor$
 Hand��6j   .��5%      �� $��33��6   $��43��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5&      !� 5'       j� Stretch$
 Fill=�6"      appbar_clipboard_paper_check !� Visual# �  5(      5*      5+      �� 5,   
   -   5        $
 btnCancelar��5,      $��12,379,310,0q�6&   #���   6<   $
 Hand��6m   .��5-      �� $��39��6   $��43��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 5.      !� 5/      $
 Fill=�6"     appbar_cancel# �  50      52      53      55      56      