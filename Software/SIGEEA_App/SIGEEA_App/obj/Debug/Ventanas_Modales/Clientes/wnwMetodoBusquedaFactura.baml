   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:SIGEEA_App.Ventanas_Modales.Clientes$SIGEEA_App.Ventanas_Modales.Clientes  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5      C    =SIGEEA_App.Ventanas_Modales.Clientes.wnwMetodoBusquedaFactura   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:SIGEEA_App.Ventanas_Modales.Clientes     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5        � Title$  Metodo Busqueda Factura��5	   	   $	��300��6)   $��369.549��66    � 
ResizeMode$ NoResize=�6F    � WindowStartupLocation$ CenterScreen=�6\   .��5      � .+�5   
   �� -   5         ��Name$ cmbOpciones��5      $
��Left=�6(   $��	10,20,0,0q�6C   $	��Top=�6V   $	��341��6n   $
��Bold"�6�   $��14.667(�6�    �� SelectedIndex$ 0��6�   � 5   
   -   5        $��grdOpciones��5      $��	10,51,0,0q�6"   $y�Visible=�65   .+�5      �� -   5         ��Name$ lbNumero��5      $y�Hidden=�6*   $
��Left=�6>   $��	29,28,0,0q�6Y   $
��Wrap=�6l   $$��Digite el número de factura: ��6�   {�.  $	��Top=�6�   �� 5      -   5         ��Name$ txtNumeroFactura��5      $y�Hidden=�60   $
��Left=�6D   $��	29,64,0,0q�6_    �� TextWrapping$
 Wrap=�6r   $�� ��6�   {�. $	��Top=�6�   $	��192��6�   $��28��6�   5      �� 5   
   -   5         ��Name$ 
btnFiltrar��5         MetroCircleButtonStyle#���   6%   	 � Cursor$
	 Hand��6V   $��286,200,16,12q�6}   .��5      �� $��22��6   $��20��6#   ��6/   �� *
Foreground+
 �� RelativeSource
 �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6"     appbar_list !� Visual# �  5      5      5      �� 5   
   -   5        $ btnCancelar��5      #���   6&   $
	 Hand��6W   $��16,200,277,12q�6   .��5      �� $��22��6   $��20��6#   ��6/   �� *
Foreground+
 �� *FindAncestor+" �� 5      !� 5      $
 Fill=�6"     appbar_close# �  5       5"      5#      5$      5%      