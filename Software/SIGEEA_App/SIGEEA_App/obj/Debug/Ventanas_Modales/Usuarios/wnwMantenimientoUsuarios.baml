   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:SIGEEA_App.Ventanas_Modales.Usuarios$SIGEEA_App.Ventanas_Modales.Usuarios  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5      C    =SIGEEA_App.Ventanas_Modales.Usuarios.wnwMantenimientoUsuarios   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:SIGEEA_App.Ventanas_Modales.Usuarios     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5        � Title$  Mantenimiento de usuarios��5
   	   $��597.133��6+   $��716.729��6<    � 
ResizeMode$ NoResize=�6L    � WindowStartupLocation$ CenterScreen=�6b   .��5      � .+�5   
   �� 
���   �$��2q�6%   $��0,-6,0,0q�69   &   System.Windows.Controls.DataGrid  5   
   $��28,174,29,355q�6    J� RenderTransformOrigin$ 0.5,0.5&�6*   z�5      V� 5      .~�5      �� �� 5      �� 5       �� Angle$ 0.041Q�6&   T� 5      5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Nombre ��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 230 66      CanUserResize .  	   FontSize$	 16Q�6X   
   
FontWeight$

 Bold"�6f    �� TextAlignment$ Center=�6x     5      $ Usuario��6%   $	 170 66    .  $	 16Q�6X   $

 Bold"�6f   $ Center=�6x     5      $	 Rol��6%   $	 190 62    .  $	 16Q�6T   $

 Bold"�6b   $ Center=�6t     5      $ Editar��6%   $ 92 65    .  $	 16Q�6V   $

 Bold"�6d   $ Center=�6v   5      �� 5   
   
���   �$��1q�6%   $
��Left=�69   $	��271��6T   $��
25,203,0,0q�6a   $	��Top=�6u   $	��657��6�   ._�5      �� $
��Auto=�6   $��
-1,-1,1,-1q�6>   .��5      �� -   5         ��Name$ stpUsuarios��5      $	��654��62   $
��Auto=�6>   5       5!      �� 5"   
   -   5         ��Name$ txtTipo��5"      $
��Left=�6&   $��19,3,0,0q�6A   $
��Wrap=�6S   $��Mantenimiento de usuarios��6g   $	��Top=�6�   $��Segoe UI Light)�6�   $��22(�6�   $��41��6�   $	��416��6�   �� 5#   
   $
��Left=�6   $��1��60   $��	19,43,0,0q�6;   $	��Top=�6N   $	��663��6f   
���   �6r   �� 5$   
   -   5         ��Name$ cbxRoles��5$      $
��Left=�6R   $��229,133,0,0q�6m   $	��Top=�6�   $	��152��6�   �� 5%   
   -   5        $ textBlock_Copy2��5%      $
��Left=�6-   $��184,133,0,0q�6H   $
��Wrap=�6]   $	��Top=�6q   $��14(�6�   �� 6�   $
��Bold"�6�   $	�Rol��6�   �� 6�   $�:��6�   6�   �� 5&   
   -   5         ��Name$ txtBusEmpleado��5&       �� 	MaxLength$	 200��6U   $
��Left=�5'   
   $��2q�6%   ���#5C5C5C$	��304��6O   $��184,86,0,448q�6[   $ 0.5,0.5&�6q   $��16(�6�   �� 5(   
   -   5        $ textBlock_Copy3��5(      $
��Left=�6-   $��
178,62,0,0q�6H   $
��Wrap=�6\   $	��Top=�6p   $��14(�6�   $��19��6�   $	��257��6�   �� 6�   $
��Bold"�6�   $��16(�6�   $"�Cédula o nombre de empleado��6�   �� 6�   $�:��6�   6  �� 5)   
   $/��)/SIGEEA_App;component/Imagenes/buscar.png��6   $��454,90,0,450q�6D   $��28��6[   $
��Left=�6g   $��29��6�   $ 0.5,0.25&�6�   �� 5*   
   -   5         ��Name$ btnAgregarRol��5*      $��380,124,283,402q�6(      MetroCircleButtonStyle#���   6A    � Cursor$
 Hand��6r   $ 0.5,0.5&�6�   z�5+      V� 5,      .~�5-      ��  �� ScaleY$ -1Q�6%   �� 5.      �� 5/      T� 50      51      .��53      �� $��20��6   $��20��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 54      !� 55       j� Stretch$
 Fill=�6"     
appbar_add !� Visual# �  56      58      59      �� 5:   
   -   5        $ btnCancelar��5:      $��3,499,631,4q�6&   #���   6;   $
 Hand��6l   $ 0.5,0.5&�6�   z�5;      V� 5<      .~�5=      �� $ -1Q�6%   �� 5>      �� 5?      T� 5@      5A      .��5C      �� $��33��6   $��33��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 5D      !� 5E      $
 Fill=�6"     appbar_cancel# �  5F      5H      5I      �� 5J   
   -	   5        $ btnAgregarUsuario��5J      $��490,84,181,443q�6,   #���   6D   $
 Hand��6u   $ 0.5,0.5&�6�   z�5K      V� 5L      .~�5M      �� $ -1Q�6%   �� 5N      �� 5O      T� 5P      5Q      .��5S      �� $��20��6   $��20��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 5T      !� 5U      $
 Fill=�6"   # �  5V      5X      5Y      �� 5Z   
   -
   5        $ btnEditarRol��5Z      $��434,124,234,402q�6'   #���   6@   $
 Hand��6q   $ 0.5,0.5&�6�   z�5[      V� 5\      .~�5]      �� $ -1Q�6%   �� 5^      �� 5_      T� 5`      5a      .��5c      �� $��20��6   $��20��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 5d      !� 5e      $
 Fill=�6"     appbar_edit# �  5f      5h      5i      �� 5j   
   $
��Left=�6   $��2��60   $��
10,492,0,0q�6;   $	��Top=�6O   $	��672��6g   
���   �6s   5l      5m      