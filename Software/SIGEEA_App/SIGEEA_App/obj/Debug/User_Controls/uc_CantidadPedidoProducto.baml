   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:SIGEEA_App.User_ControlsSIGEEA_App.User_Controls  5      8    2SIGEEA_App.User_Controls.uc_CantidadPedidoProducto   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:SIGEEA_App.User_Controls     5      $��390.226��5      $��462.256��60   .��5      � -   5          �Name$  grdPrincipal��5      .+�5	   
   �� -   5         ��Name$ txbTipo��5	      $��26,10,288,344q�6%   $
��Wrap=�6>   $��20(�6R   $
��Bold"�6`   ��6t   �� *	TipPedido+ �� RelativeSource �� *FindAncestor+ �� AncestorType*   $SIGEEA_App.User_Controls.uc_Producto"  �� 5
   
   -   5        $
 txb1��5
      $��26,79,342,279q�6"   $
��Wrap=�69   $��20(�6M   $
��Bold"�6[   $��Nombre:��6m   �� 5   
   -   5        $ 	txbNombre��5      $��240,79,65,279q�6'   $
��Wrap=�6>   $��20(�6R   $
��Bold"�6`   ��6s   �� *nomTipProducto+ �� *FindAncestor+"  �� 5   
   -   5        $
 txb2��5      $��26,116,233,237q�6"   $
��Wrap=�6:   $��20(�6N   $
��Bold"�6\   $��Cantidad disponible:��6o    J� RenderTransformOrigin$ -1.703,2.062&�6�   �� 5   
   -   5        $ txbCantidad��5      $��240,116,65,242q�6)   $
��Wrap=�6B   $��20(�6V   $
��Bold"�6d   ��6v   �� *canInvProducto+ �� *FindAncestor+"  �� 5   
   -   5        $ txbUniMedida��5      $��397,116,30,242q�6*   $
��Wrap=�6B   {�.  $��20(�6i   $
��Bold"�6w   ��6�   �� *UniMedProducto+ �� *FindAncestor+"  �� 5   
   -   5        $
 txb3��5      $��26,153,356,203q�6"   $
��Wrap=�6:   $��20(�6N   $
��Bold"�6\   {�.  $��Pedido:��6�   $ -1.703,2.062&�6�   �� 5   
   -	   5        $ 	txbPedido��5      $��237,153,65,203q�6'   $
��Wrap=�6?   {�.  $��20(�6f   $
��Bold"�6t   ��6�   �� *PedProducto+ �� *FindAncestor+"  �� 5   
   -
   5        $ txbId��5      $��26,116,233,152q�6#   $
��Wrap=�6;   $��20(�6O   $
��Bold"�6]   {�.  $y�Hidden=�6�   $ -1.703,2.062&�6  ��6�   �� *IdTipProducto+ �� *FindAncestor+"  6  �� 5   
   -   5         ��Name$ 
btnGuardar��5   '   $��354,314,25,0q�6      MetroCircleButtonStyle#���   6<    � Cursor$
 Hand��6m   .��5      �� $��20��6   $��20��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6"     appbar_check	 !� Visual#	 �  5      5      5      �� 5   
   -   5        $ btnCancelar��5   '   $��23,314,356,0q�6   #���   6=   $
 Hand��6n   .��5      �� $��20��6   $��20��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 5      !� 5      $
 Fill=�6"     appbar_cancel#	 �  5      5       5!      �� 5"   
   -   5        $ 	txb3_Copy��5"      $��26,192,356,164q�6'   $
��Wrap=�6?   $��20(�6S   $
��Bold"�6a   {�.  $��Precio:��6�   $ -1.703,2.062&�6�   �� 5#   
   -   5        $ 	txbPrecio��5#      $��234,192,65,164q�6'   $
��Wrap=�6?   {�. $��20(�6e   $
��Bold"�6s   ��6�   �� *PrecioProducto+ �� *FindAncestor+"  �� 5$   
   -   5        $ 
txb3_Copy1��5$      $��26,231,326,125q�6(   $
��Wrap=�6@   $��20(�6T   $
��Bold"�6b   {�.  $��
Descuento:��6�   $ -1.703,2.062&�6�   �� 5%   
   -   5        $ 
txb3_Copy2��5%      $��26,270,300,86q�6(   $
��Wrap=�6?   $��20(�6S   $
��Bold"�6a   {�.  $ -1.703,2.062&�6�   �� 6�   $�Nuevo ��6�   �� 6�   $�Precio:��6�   6�   �� 5&   
   -   5        $ txbNuevoPrecio��5&      $��240,270,68,86q�6,   $
��Wrap=�6C   {�.  $��20(�6j   $
��Bold"�6x   ��6�   �� *NuevoPrecio+ �� *FindAncestor+"  �� 5'   
   -   5        $ 	txbMoneda��5'      $��209,192,228,164q�6'   $
��Wrap=�6@   {�.  $��20(�6g   $
��Bold"�6u   ��6�   �� *Moneda+ �� *FindAncestor+"  �� 5(   
   -   5        $ 
txbMoneda1��5(      $��210,270,227,86q�6(   $
��Wrap=�6@   {�.  $��20(�6g   $
��Bold"�6u   ��6�   �� *Moneda+ �� *FindAncestor+"  0   *SIGEEA_App.User_Controls.uControl_Numerico  5)   
   -   5        
  Name$
 ucCanDescuento��5)   "   $
��Left=�6:   $��264,231,0,0q�6U   $	��Top=�6j   �� 5*   
   -   5        $ txbUniMedida_Copy��5*      $��303,233,124,125q�6/   $
��Wrap=�6H   {�.  $��20(�6o   $
��Bold"�6}   $��%��6�   5+      5,      