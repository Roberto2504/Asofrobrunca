   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:SIGEEA_App.Ventanas_Modales.Usuarios$SIGEEA_App.Ventanas_Modales.Usuarios  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5      <    6SIGEEA_App.Ventanas_Modales.Usuarios.wnwAgregarUsuario   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:SIGEEA_App.Ventanas_Modales.Usuarios     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5        � Title$  Mantenimiento de usuario��5	   	   $��431.238��6*   $��342.284��6;    � 
ResizeMode$ NoResize=�6K    � WindowStartupLocation$ CenterScreen=�6a   .��5
      � .+�5   
   �� 
���   �$��2q�6%   $��0,3,0,-3q�69   �� 5   
   -   5         ��Name$ txtTipo��5      $
��Left=�6&   $��10,3,0,0q�6A   $
��Wrap=�6S   $��Agregar��6g   $	��Top=�6v   $��Segoe UI Light)�6�   $��22(�6�   $��35��6�   $	��277��6�   �� 5   
   $
��Left=�6   $��1��60   $��	10,37,0,0q�6;   $	��Top=�6N   $	��284��6f   
���   �6r   �� 5   
   -   5         ��Name$ txtNomUsuario��5      $
��Left=�6)   $��23��6D   $��
142,45,0,0q�6P    �� TextWrapping$
 Wrap=�6d   $	��Top=�6x   $	��160��6�   $��Segoe UI Semibold)�6�   �� 5   
   -   5        $ 	textBlock��5      $
��Left=�6'   $��	10,47,0,0q�6B   $
��Wrap=�6U   $��Nombre de usuario:��6i   $	��Top=�6�   $��14(�6�   $
��Bold"�6�   G� 5   
   -   5         G�Name$ txtClave��5      $
��Left=�6)   $��23��6D   $��
142,81,0,0q�6P   $	��Top=�6e   $	��160��6}   $��Segoe UI Semibold)�6�   �� 5   
   -   5        $ textBlock_Copy��5      $
��Left=�6,   $��	10,83,0,0q�6G   $
��Wrap=�6Z   $	��Top=�6n   $��14(�6�   �� 6�   $
��Bold"�6�   $�Clave��6�   �� 6�   $�:��6�   6�   G� 5   
   -   5        $ txtConfClave��5      $
��Left=�6,   $��23��6G   $��142,113,0,0q�6S   $	��Top=�6h   $	��160��6�   $��Segoe UI Semibold)�6�   �� 5   
   -   5        $ textBlock_Copy1��5      $
��Left=�6-   $��
10,115,0,0q�6H   $
��Wrap=�6\   $	��Top=�6p   $��14(�6�   �� 6�   $
��Bold"�6�   $�Confirme clave:��6�   6�   �� 5   
   -   5         ��Name$ cbxRoles��5      $
��Left=�6R   $��142,155,0,0q�6m   $	��Top=�6�   $	��152��6�   �� 5   
   -	   5        $ textBlock_Copy2��5      $
��Left=�6-   $��
10,161,0,0q�6H   $
��Wrap=�6\   $	��Top=�6p   $��14(�6�   �� 6�   $
��Bold"�6�   $	�Rol��6�   �� 6�   $�:��6�   6�   �� 5   
   -
   5        $ txtBusEmpleado��5       �� 	MaxLength$	 200��6U   $
��Left=�5      $��2q�6"   ���#5C5C5C$	��304��6L   $��10,220,0,145q�6X   	 J� RenderTransformOrigin$	 0.5,0.5&�6n   $��16(�6�   $��2��6�   �� 5   
   $��/Imagenes/buscar.png��6   $��279,224,0,148q�6/   $��28��6G   $
��Left=�6S   $��29��6n   $	 0.5,0.25&�6y   $��2��6�   �� 5   
   -   5        $ textBlock_Copy3��5      $
��Left=�6-   $��
10,196,0,0q�6H   $
��Wrap=�6\   $	��Top=�6p   $��14(�6�   $��19��6�   $	��257��6�   �� 6�   $
��Bold"�6�   $��16(�6�   $"�Cédula o nombre de empleado��6�   �� 6�   $�:��6�   6  �� 5   
   -   5        $ cbxEmpleados��5      $
��Left=�6Z   $��
22,280,0,0q�6u   $	��Top=�6�   $	��292��6�   �� 5   
   -   5        
 ��Name$
 btnCancelar��5      $��1,328,246,6q�6&      MetroCircleButtonStyle#���   6;    � Cursor$
 Hand��6l   $	 0.5,0.5&�6�   z�5      V� 5      .~�5       ��  �� ScaleY$ -1Q�6%   �� 5!      �� 5"      T� 5#      5$      .��5&      �� $��33��6   $��33��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5'      !� 5(       j� Stretch$
 Fill=�6"     appbar_cancel !� Visual# �  5)   
   5+      5,      �� 5-   
   -   5        $
 
btnAgregar��5-      $��237,328,15,1q�6%   #���   6;   $
 Hand��6l   $	 0.5,0.5&�6�   z�5.      V� 5/      .~�50      �� $ -1Q�6%   �� 51      �� 52      T� 53      54      .��56      �� $��33��6   $��33��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 57      !� 58      $
 Fill=�6"     appbar_save# �  59   
   5;      5<      �� 5=   
   $
��Left=�6   $��1��60   $��
24,325,0,0q�6;   $	��Top=�6O   $	��284��6g   
���   �6s   5>      5?      