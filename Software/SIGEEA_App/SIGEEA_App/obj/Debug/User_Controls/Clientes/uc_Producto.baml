   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:SIGEEA_App.User_ControlsSIGEEA_App.User_Controls  5      *    $SIGEEA_App.User_Controls.uc_Producto   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:SIGEEA_App.User_Controls     5      $	��524��5      $��54.333��6+   .��5      �� $��1q�6   
�������._�5	   
   � -   5          �Name$  grdPrincipal��5	      $
��Left=�6%   $��55��6@   $	��Top=�6L   $	��524��6d   $��-1,-1,-1,-2q�6p   .+�5      �� -   5         ��Name$ btnAgregarEditar��5      $��	471,1,1,0q�6/      MetroCircleButtonStyle#���   6B    � Cursor$
 Hand��6s    J� RenderTransformOrigin$ 0.5,0.5&�6�   z�5      V� 5      .~�5      ��  �� ScaleY$ -1Q�6)    �� ScaleX$ -1Q�65   �� 5      �� 5      T� 5      5      .��5      �� $��18��6   $��13.721��6'   ��67   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5      !� 5      	 j� Stretch$
	 Fill=�6&     
appbar_add
 !� Visual#
 �  5      5      5      �� 5      -   5         ��Name$ txbNomTipoProducto��5      $��10,10,405,10q�64   $
��Wrap=�6J   $��20(�6^   $
��Bold"�6l   ��6~   �� *nomTipProducto+ �� *FindAncestor+*   $SIGEEA_App.User_Controls.uc_Producto"  �� 5      -   5        $ txbNomCalidad��5      $��131,10,355,10q�6/   $
��Wrap=�6F   $��20(�6Z   $
��Bold"�6h   ��6z   �� *calTipProducto+ �� *FindAncestor+"  �� 5      -   5        $ txbUniMedida��5      $��297,10,192,10q�6.   $
��Wrap=�6E   $��20(�6Y   $
��Bold"�6g   ��6y   �� *	UniMedida+ �� *FindAncestor+"  �� 5      -   5        $ 
txbMondena��5      $��344,10,167,10q�6,   $
��Wrap=�6C   $��20(�6W   $
��Bold"�6e   ��6w   �� *Moneda+ �� *FindAncestor+"  �� 5!      -   5        $ txbCantidad��5!      $��181,10,227,10q�6-   $
��Wrap=�6D   $��20(�6X   $
��Bold"�6f   ��6x   �� *canInvProducto+ �� *FindAncestor+"  �� 5"      -   5        $ txbPreProducto��5"      $��362,10,60,10q�60   $
��Wrap=�6F   $��20(�6Z   $
��Bold"�6h   ��6z   �� *preProducto+ �� *FindAncestor+"  �� 5#      -	   5        $ txbIdProducto��5#      $��435,54,83,0q�6/   $
��Wrap=�6D   $��20(�6X   $
��Bold"�6f   $y�Hidden=�6�   ��6x   �� *dpIdTipProducto+ �� *FindAncestor+"  6�   �� 5$      
���   �$
��Left=�6%   $��55��6@   $��	337,0,0,0q�6L   
���   �$	��Top=�6n   $��2��6�   �� 5%      
���   �$
��Left=�6%   $��55��6@   $��	174,0,0,0q�6L   
���   �$	��Top=�6n   $��2��6�   �� 5&      
���   �$
��Left=�6%   $��54��6@   $��	124,0,0,0q�6L   
���   �$	��Top=�6n   $��2��6�   �� 5'      
���   �$
��Left=�6%   $��54��6@   $��	469,0,0,0q�6L   
���   �$	��Top=�6n   $��2��6�   5(      5)      5*      