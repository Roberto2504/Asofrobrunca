   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:SIGEEA_App.Ventanas_Modales.Usuarios$SIGEEA_App.Ventanas_Modales.Usuarios  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   8    2SIGEEA_App.Ventanas_Modales.Usuarios.wnwAgregarRol   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:SIGEEA_App.Ventanas_Modales.Usuarios     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  Mantenimiento de roles��5	   	   $��193.331��6(   $��320.079��69    � 
ResizeMode$ NoResize=�6I    � WindowStartupLocation$ CenterScreen=�6_   .��5
      � .+�5   
   �� -   5         ��Name$ txtTipo��5      $
��Left=�6&   $��10,3,0,0q�6A   $
��Wrap=�6S   $��Agregar��6g   $	��Top=�6v   $��Segoe UI Light)�6�   $��22(�6�   $��35��6�   $	��277��6�   �� 5   
   $
��Left=�6   $��1��60   $��	10,37,0,0q�6;   $	��Top=�6N   $	��284��6f   
���   �6r   �� 5   
   -   5         ��Name$ 	txtNomRol��5      $
��Left=�6%   $��23��6@   $��
127,43,0,0q�6L    �� TextWrapping$
 Wrap=�6`   $	��Top=�6t   $	��160��6�   $��Segoe UI Semibold)�6�   �� 5   
   -   5        $ 	textBlock��5      $
��Left=�6'   $��	10,47,0,0q�6B   $
��Wrap=�6U   $��Nombre de rol:��6i   $	��Top=�6   $��14(�6�   $
��Bold"�6�   �� 5   
   -   5        $ textBlock_Copy��5      $
��Left=�6,   $��	10,81,0,0q�6G   $
��Wrap=�6Z   $��Permiso:��6n   $	��Top=�6~   $��14(�6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ 
cbxPermiso��5      $
��Left=�6W   $��
127,78,0,0q�6r   $	��Top=�6�   $	��160��6�   �� 5   
   -   5         ��Name$ 
btnAgregar��5      $��231,106,16,1q�6%      MetroCircleButtonStyle#���   6;    � Cursor$
 Hand��6l   	 J� RenderTransformOrigin$	 0.5,0.5&�6�   z�5      V� 5      .~�5      �� 
 �� ScaleY$
 -1Q�6%   �� 5      �� 5      T� 5      5      .��5      �� $��33��6   $��33��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6"     appbar_save !� Visual# �  5      5      5       �� 5!   
   $
��Left=�6   $��1��60   $��
10,105,0,0q�6;   $	��Top=�6O   $	��284��6g   
���   �6s   �� 5"   
   -   5        $ btnCancelar��5"      $��11,106,236,1q�6&   #���   6<   $
 Hand��6m   $	 0.5,0.5&�6�   z�5#      V� 5$      .~�5%      �� $
 -1Q�6%   �� 5&      �� 5'      T� 5(      5)      .��5+      �� $��33��6   $��33��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 5,      !� 5-      $
 Fill=�6"     appbar_cancel# �  5.      50      51      53      54      