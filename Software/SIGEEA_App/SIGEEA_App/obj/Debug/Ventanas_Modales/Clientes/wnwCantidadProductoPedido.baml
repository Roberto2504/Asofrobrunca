   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:SIGEEA_App.Ventanas_Modales.Clientes$SIGEEA_App.Ventanas_Modales.Clientes  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   
   C&clr-namespace:SIGEEA_App.User_ControlsSIGEEA_App.User_Controls  5   	   D    >SIGEEA_App.Ventanas_Modales.Clientes.wnwCantidadProductoPedido   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:SIGEEA_App.Ventanas_Modales.Clientes     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   
   @User_Controls&clr-namespace:SIGEEA_App.User_Controls     5   	     � Title$"  Cantidad de Producto a Pedir��5   	   $��508.157��6.    � WindowStyle$
 None=�6?   $��478.626��6S    � WindowStartupLocation$ CenterScreen=�6d   .��5      �� ���#83919F$��2q�6#   ._�5   
   � -   5         �Name$ grdPrincipal��5      .+�5      �� -   5         ��Name$ txbTipo��5      $��26,10,288,435q�6)   $
��Wrap=�6B   $��22(�6V   $
��Bold"�6d   $�� ��6x   �� 5      -   5        $
 txb1��5      $��26,79,342,366q�6&   $
��Wrap=�6=   $��20(�6Q   $
��Bold"�6_   $��Nombre:��6q   �� 5      -   5        $ 	txbNombre��5      $��240,79,65,366q�6+   $
��Wrap=�6B   $��20(�6V   $
��Bold"�6d   $�� ��6w   �� 5      -   5        $
 txb2��5      $��26,116,233,324q�6&   $
��Wrap=�6>   $��20(�6R   $
��Bold"�6`   $��Cantidad disponible:��6s    J� RenderTransformOrigin$ -1.703,2.062&�6�   �� 5      -   5        $ txbCantidad��5      $��240,116,65,324q�6-   $
��Wrap=�6F   $��20(�6Z   $
��Bold"�6h   $�� ��6z   �� 5      -   5        $
 txb3��5      $��23,224,359,219q�6&   $
��Wrap=�6>   $��20(�6R   $
��Bold"�6`   {�.  $��Pedido:��6�   $ -1.703,2.062&�6�   �� 5      -   5        $ txbId��5      $��26,116,233,152q�6'   $
��Wrap=�6?   $��20(�6S   $
��Bold"�6a   {�.  $�� ��6�   $y�Hidden=�6�   $ -1.703,2.062&�6�   �� 5      -	   5        $ 	txb3_Copy��5      $��27,158,355,287q�6+   $
��Wrap=�6C   $��20(�6W   $
��Bold"�6e   {�.  $��Precio:��6�   $ -1.703,2.062&�6�   �� 5      -
   5        $ 	txbPrecio��5      $��238,158,64,287q�6+   $
��Wrap=�6C   {�. $��20(�6i   $
��Bold"�6w   $�� ��6�   �� 5      -   5        $ 
txb3_Copy1��5      $��26,318,326,125q�6,   $
��Wrap=�6D   $��20(�6X   $
��Bold"�6f   {�.  $��
Descuento:��6�   $ -1.703,2.062&�6�   �� 5      -   5        $ 
txb3_Copy2��5      $��23,352,303,91q�6,   $
��Wrap=�6C   $��20(�6W   $
��Bold"�6e   {�.  $ -1.703,2.062&�6�   �� 6�   $�Nuevo ��6�   �� 6�   $�Total��6�   �� 6�   $�:��6�   6�   �� 5      -   5        $ txbNuevoPrecio��5      $��249,352,59,91q�60   $
��Wrap=�6G   {�.  $��20(�6n   $
��Bold"�6|   $�� ��6�   �� 5      -   5        $ txbPorcentaje��5      $��303,318,124,125q�6/   $
��Wrap=�6H   {�.  $��20(�6o   $
��Bold"�6}   $��%��6�   �� 5      -   5         ��Name$ 
btnGuardar��5   +   $��358,410,21,6q�6      MetroCircleButtonStyle#���   6@    � Cursor$
 Hand��6q   .��5      �� $��20��6   $��20��6'   ��63   �� *
Foreground+ �� RelativeSource �� *FindAncestor+	 �� AncestorType"	 ��
 J� OpacityMask
 5      !� 5       j� Stretch$
 Fill=�6&     appbar_check !� Visual# �  5      5!      5"      �� 5#      -   5        $ btnCancelar��5#   +   $��23,410,356,0q�6   #���   6A   $
 Hand��6r   .��5$      �� $��20��6   $��20��6'   ��63   �� *
Foreground+ �� *FindAncestor+"	 ��
 5%      !� 5&      $
 Fill=�6&     appbar_cancel# �  5'      5)      5*      �� 5+      -   5        $ 
txb3_Copy3��5+      $��23,258,303,185q�6,   $
��Wrap=�6D   $��20(�6X   $
��Bold"�6f   {�.  $ -1.703,2.062&�6�   �� 6�   $�Total��6�   �� 6�   $�:��6�   6�   �� 5,      -   5        $ txbTotal��5,      $��244,258,64,185q�6*   $
��Wrap=�6B   {�.  $��20(�6i   $
��Bold"�6w   $�� ��6�   7   1SIGEEA_App.User_Controls.uc_ControlNumericoGrande  5-      -   5          Name$ ucPedido��5-   5   7   1SIGEEA_App.User_Controls.uc_ControlNumericoGrande   PreviewMouseLeftButtonUp$7 1uc_ControlNumericoGrande_PreviewMouseLeftButtonUp��6�   $
��Left=�6G   $��245,224,0,0q�6b   $	��Top=�6w   6�   :   4SIGEEA_App.User_Controls.uc_ControlNumericoDescuento  5.      -   5          Name$ ucDescuento��5.   8   :   4SIGEEA_App.User_Controls.uc_ControlNumericoDescuento   PreviewMouseLeftButtonUp$* $ucDescuento_PreviewMouseLeftButtonUp��6�   $
��Left=�6M   $��264,318,0,0q�6h   $	��Top=�6}   6�   5/      50      51      