   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:SIGEEA_App.Ventanas_Modales.Insumos#SIGEEA_App.Ventanas_Modales.Insumos  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   <    6SIGEEA_App.Ventanas_Modales.Insumos.wnwRegistrarInsumo   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Clocal1clr-namespace:SIGEEA_App.Ventanas_Modales.Insumos     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  Registrar Insumo��5	   	   $	��300��6"   $	��300��6/    � WindowStartupLocation$ CenterScreen=�6;    � 
ResizeMode$ NoResize=�6`   .��5
      �� ���#83919F$��2q�6#   ._�5   
   � .+�5      �� -   5         ��Name$ textBloc��5      $
��Left=�6*   $��5,0,0,0q�6E   $
��Wrap=�6V   $��Registrar Insumo��6j   $	��Top=�6�   $��	Underline{�6�   $
��Bold"�6�   $��26.667(�6�   �� 5      -   5        $ 	textBlock��5      $
��Left=�6+   $��23��6F   $��	19,49,0,0q�6R   $
��Wrap=�6e   $��Nombre:��6y   $	��Top=�6�   $��60��6�   �� 5      -   5         ��Name$ 	txtNombre��5      $
��Left=�6)   $��24��6D   $��
109,45,0,0q�6P    �� TextWrapping$
 Wrap=�6d   $�� ��6x   $	��Top=�6�   $	��173��6�   �� 5      -   5        $ txtDescripcion��5      $
��Left=�6.   $��14��6I   $��
109,76,0,0q�6U   $
 Wrap=�6i   $�� ��6}   $	��Top=�6�   $	��173��6�   �� 5      -   5        $ textBlock_Copy��5      $
��Left=�60   $��23��6K   $��	19,80,0,0q�6W   $
��Wrap=�6j   $��Descripción:��6~   $	��Top=�6�   $��72��6�   �� 5      -   5        $ textBlock_Copy1��5      $
��Left=�61   $��23��6L   $��
19,127,0,0q�6X   $
��Wrap=�6l   $��Cantidad��6�   $	��Top=�6�   $��60��6�   �� 5      -   5        $ txtCantidad��5      $
��Left=�6+   $��23��6F   $��
19,150,0,0q�6R   $
 Wrap=�6f   $�� ��6�   $	��Top=�6�   $	��120��6�   �� 5      -   5        $ textBlock_Copy2��5      $
��Left=�61   $��23��6L   $��160,127,0,0q�6X   $
��Wrap=�6m   $��Unidad de Medida��6�   $	��Top=�6�   $	��106��6�   �� 5      -	   5         ��Name$ cbxUnidadesDeMedida��5      $
��Left=�64   $��15��6O   $��160,150,0,0q�6[   $	��Top=�6p   $	��122��6�   �� 5      -
   5         ��Name$ btnRegistrar��5      $��201,204,26,10q�6+      MetroCircleButtonStyle#���   6B    � Cursor$
 Hand��6s   .��5      �� $��20��6   $��20��6'   ��63   �� *
Foreground+	 �� RelativeSource	 �� *FindAncestor+
 �� AncestorType"
 �� J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6&     appbar_save !� Visual# �  5      5      5      �� 5      -   5        $ btnCancelar��5      $��10,204,217,10q�6*   #���   6A   $
 Hand��6r   .��5      �� $��20��6   $��20��6'   ��63   �� *
Foreground+	 �� *FindAncestor+"
 �� 5      !� 5       $
 Fill=�6&     appbar_cancel# �  5!      5#      5$      5%      5&      5'      