   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:SIGEEA_App.User_Controls.Clientes!SIGEEA_App.User_Controls.Clientes  5      6    0SIGEEA_App.User_Controls.Clientes.uc_DetProducto   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Alocal/clr-namespace:SIGEEA_App.User_Controls.Clientes     5      $��44.167��5      $��591.977��6/   .��5      �� 
���   �$��1q�6!   $
��Left=�65   $��44��6P   $	��Top=�6\   $	��592��6t   ._�5	   
   � -   5        $��grdPrincipal��5	   #   $��
-1,1,-1,-1q�6   .+�5      �� -   5          ��Name$  	txbNombre��5      $
��Left=�6+   $��34��6F   $��20(�6S   $
��Bold"�6a   $��7,3,0,0q�6s   $
��Wrap=�6�   $	��Top=�6  $	��121��6+  ��6�   �� *nomTipProducto+ �� RelativeSource �� *FindAncestor+ �� AncestorType6   0SIGEEA_App.User_Controls.Clientes.uc_DetProducto"  6+  �� 5      -   5        $  txbNomCalidad��5      $��137,3,431,5q�6/   $
��Wrap=�6D   $��20(�6X   $
��Bold"�6f   ��6x   �� *calTipProducto+ �� *FindAncestor+"  �� 5      -   5        $  txbUniMedida��5      $��253,3,310,5q�6.   $
��Wrap=�6C   $��16(�6W   $
��Bold"�6e   ��6w   �� *	UniMedida+ �� *FindAncestor+"  �� 5      -   5        $  txbSingoPorcentaje��5      $��431,3,144,5q�64   $
��Wrap=�6I   $��20(�6]   $
��Bold"�6k   $��%��6}   �� 5      -   5        $  txbCantidad��5      $��166,3,339,5q�6-   $
��Wrap=�6B   $��20(�6V   $
��Bold"�6d   ��6v   �� *canInvProducto+ �� *FindAncestor+"  �� 5      -   5        $  txbDescuento��5      $��398,3,161,5q�6.   $
��Wrap=�6C   $��20(�6W   $
��Bold"�6e   ��6w   �� *desProducto+ �� *FindAncestor+"  �� 5      -   5        $  txbIdProducto��5      $��435,54,83,0q�6/   $
��Wrap=�6D   $��20(�6X   $
��Bold"�6f   $y�Hidden=�6�   ��6x   �� *dpIdTipProducto+ �� *FindAncestor+"  6�   �� 5      -	   5        $  txbMondena1��5      $��287,3,294,5q�6-   $
��Wrap=�6B   $��20(�6V   $
��Bold"�6d   ��6v   �� *Moneda+ �� *FindAncestor+"  �� 5      -
   5        $  txbPreBruProducto��5      $��298,3,203,5q�63   $
��Wrap=�6H   $��20(�6\   $
��Bold"�6j   ��6|   �� *preBruProducto+ �� *FindAncestor+"  �� 5      
���   �$
��Left=�6%   $��54��6@   $��
134,-2,0,0q�6L   
���   �$	��Top=�6o   $��1��6�   �� 5      
���   �$
��Left=�6%   $��54��6@   $��
163,-2,0,0q�6L   
���   �$	��Top=�6o   $��1��6�   �� 5      
���   �$
��Left=�6%   $��54��6@   $��
284,-2,0,0q�6L   
���   �$	��Top=�6o   $��1��6�   �� 5      
���   �$
��Left=�6%   $��54��6@   $��
394,-2,0,0q�6L   
���   �$	��Top=�6o   $��1��6�   �� 5      -   5        $  txbMondena2��5      $��453,3,128,5q�6-   $
��Wrap=�6B   $��20(�6V   $
��Bold"�6d   ��6v   �� *Moneda+ �� *FindAncestor+"  �� 5      -   5        $  txbPreNetProducto��5      $��
464,3,44,5q�63   $
��Wrap=�6G   $��20(�6[   $
��Bold"�6i   ��6{   �� *preNetProducto+ �� *FindAncestor+"  �� 5      
���   �$
��Left=�6%   $��54��6@   $��448,-1,0,-1q�6L   
���   �$	��Top=�6p   $��1��6�   �� 5      -   5         ��Name$ btnAgregarEditar��5      $��	550,0,1,3q�6/      MetroCircleButtonStyle#���   6B    � Cursor$
 Hand��6s    J� RenderTransformOrigin$ 0.5,0.5&�6�   z�5      V� 5      .~�5      ��  �� ScaleY$ -1Q�6)    �� ScaleX$ -1Q�65   �� 5       �� 5!      T� 5"      5#      .��5%      �� $��18��6   $��13.721��6'   ��67   �� *
Foreground+ �� *FindAncestor+" �� J� OpacityMask 5&      !� 5'      	 j� Stretch$
	 Fill=�6&     
appbar_add
 !� Visual#
 �  5(      5*      5+      �� 5,      
���   �$
��Left=�6%   $��55��6@   $��549,-1,0,-12q�6L   
���   �$	��Top=�6q   $��1��6�   5-      5.      5/      