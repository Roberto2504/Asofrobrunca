   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:SIGEEA_App.Ventanas_Modales.Clientes$SIGEEA_App.Ventanas_Modales.Clientes  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5      :    4SIGEEA_App.Ventanas_Modales.Clientes.wnwAbonoFactura   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:SIGEEA_App.Ventanas_Modales.Clientes     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5        � Title$  Abono Factura��5	   	   $��501.88��6   $��412.782��6/    � 
ResizeMode$ NoResize=�6?    � WindowStartupLocation$ CenterScreen=�6U   .��5
      � $��0,0,0,-3q�6   .+�5   
   �� -   5         ��Name$ txtbTipoFactura��5      $
��Left=�6-   $��10,5,0,0q�6H   $
��Wrap=�6Z   $	��Top=�6n   $	��210��6�   $��20��6�   $��Segoe UI Semibold)�6�   $
��Bold"�6�   $��16(�6�   �� 6�   $�Abono��6�   �� 6�   .F�5      �� 
���   �$��20��6#   
���   �$	��396��6>    J� OpacityMask
 �   �6J   5      6    � 5   
   -   5         �Name$ grdPago��5      $
��Left=�6    $	��127��6;   $��	10,30,0,0q�6H   $	��Top=�6[   $	��385��6s   $y�Visible=�6   .+�5      �� -   5        $ 	textBlock��5      $
��Left=�6+   $��22,9,0,0q�6F   $
��Wrap=�6X   $��Método de Pago��6l   $	��Top=�6�   $��93��6�   �� 5      -   5         ��Name$ cmbMetodoPago��5      $
��Left=�6.   $��	22,30,0,0q�6I   $	��Top=�6\   $	��188��6u    J� RenderTransformOrigin$ 0.206,-0.448&�6�    �� SelectedIndex$ 0��6�   �� 5      -   5        $ 
txtNumero0��5      $
��Left=�6,   $��	22,61,0,0q�6G   $
��Wrap=�6Z   $��Número:��6n   $	��Top=�6}   $	��120��6�   �� 5      -   5        	 ��Name$	 	txtNumero��5      $
��Left=�6)   $��23��6D   $��	22,82,0,0q�6P   
 �� TextWrapping$

 Wrap=�6c   $�� ��6w   $	��Top=�6   $	��274��6�   5      � 5   
   -   5        $ grdAbono��5      $
��Left=�6!   $	��245��6<   $��
10,152,0,0q�6I   $	��Top=�6]   $	��385��6u   $y�Visible=�6�   .+�5      �� -   5        $ textBlock13��5      {�.  $
��Left=�6?   $��2,36,0,0q�6Z   $
��Wrap=�6l   $��Fecha Próximo Pago��6�   $	��Top=�6�   $	��120��6�   $��22��6�   �� 5      -	   5        $	 txtFechaProximoPago��5      {�.  $
��Left=�6E   $��22��6`   $��
122,36,0,0q�6l   $

 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��240��6�   �� 5      -
   5        $ textBlock13_Copy��5      {�.  $
��Left=�6D   $��2,9,0,0q�6_   $
��Wrap=�6p   $��Fecha Limite de Pago��6�   $	��Top=�6�   $	��120��6�   $��27��6�   �� 5      -   5        $	 txtFechaLimitePago��5      {�.  $
��Left=�6D   $��22��6_   $��	122,9,0,0q�6k   $

 Wrap=�6~   $�� ��6�   $	��Top=�6�   $	��240��6�   �� 5      -   5        $ textBlock13_Copy1��5      {�.  $
��Left=�6E   $��0,80,0,0q�6`   $
��Wrap=�6r   $��Saldo pendiente��6�   $	��Top=�6�   $	��120��6�   $��22��6�   �� 5      -   5        $	 txtMontoaCancelar��5      {�.  $
��Left=�6D   $��22��6_   $��
125,80,0,0q�6k   $

 Wrap=�6   $�� ��6�   $	��Top=�6�   $	��235��6�   �� 5      -   5        $ 	cmbMoneda��5      $
��Left=�6*   $��125,107,0,0q�6E   $	��Top=�6Z   $	��120��6r   6~   �� 5      -   5        $ textBlock13_Copy2��5      {�.  $
��Left=�6E   $��	2,107,0,0q�6`   $
��Wrap=�6s   $��Seleccione la moneda��6�   $	��Top=�6�   $	��120��6�   $��22��6�   �� 5      -   5        $ lbAbono��5      $
��Left=�6)   $��	2,134,0,0q�6D   $
��Wrap=�6W   $��Monto a Abonar��6k   $	��Top=�6�   $��93��6�   $��23��6�   �� 5       -   5        $	 txtMontoAbono��5       $��23��6-   $��125,134,25,0q�69   $

 Wrap=�6O   $�� ��6c   $	��Top=�6k   6�   �� 5"      -   5        $ textBlock15��5"      {�.  $
��Left=�6?   $��	0,165,0,0q�6Z   $
��Wrap=�6m   $��Nuevo saldo��6�   $	��Top=�6�   $	��120��6�   $��22��6�   �� 5#      -   5        $	 txtNuevoSaldo��5#      {�.  $
��Left=�6@   $��22��6[   $��125,165,0,0q�6g   $

 Wrap=�6|   $�� ��6�   $	��Top=�6�   $	��235��6�   5$      �� 5%   
   -   5         ��Name$ btnPagar��5%      $��334,402,10,0q�6#      MetroCircleButtonStyle#���   69    � Cursor$
 Hand��6j   .��5&      �� $��43��6   $��53��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� 5'      !� 5(       j� Stretch$
 Fill=�6"      appbar_clipboard_paper_check !� Visual# �  5)      5+      5,      �� 5-   
   -   5        $ btnCancelar��5-      $��10,402,334,0q�6&   #���   6<   $
 Hand��6m   .��5.      �� $��43��6   $��53��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 5/      !� 50      $
 Fill=�6"     appbar_cancel# �  51      53      54      �� 55   
   $
��Left=�6   $��2��6/   $��	10,25,0,0q�6:   $	��Top=�6M   $	��387��6e   ���	#FF0A2B996q   �� 56   
   $
��Left=�6   $��2��6/   $��	0,395,0,0q�6:   $	��Top=�6M   $	��387��6e   ���	#FF0A2B996q   58      59      