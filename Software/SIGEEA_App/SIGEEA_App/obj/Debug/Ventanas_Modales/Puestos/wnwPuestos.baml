   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:SIGEEA_App.Ventanas_Modales.Puestos#SIGEEA_App.Ventanas_Modales.Puestos  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   4    .SIGEEA_App.Ventanas_Modales.Puestos.wnwPuestos   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Clocal1clr-namespace:SIGEEA_App.Ventanas_Modales.Puestos     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  Puestos��5	   	   $	��300��6   $	��300��6&    � WindowStartupLocation$ CenterScreen=�62    � 
ResizeMode$ NoResize=�6W    � WindowStyle$ 
ToolWindow=�6m   .��5
      �� ���#83919F$��2q�6#   ._�5   
   � .+�5      � -   5        $��
grdPrimera��5      $��	0,33,0,50q�6%   .+�5      �� $��20(�6   $
��Bold"�6&   $��54,0,58,123q�68   $-��'Elija la acción que 
  desea realizar��6M   �� 5      -   5         ��Name$ cmbOpciones��5      $
��Left=�60   $��	26,71,0,0q�6K   $	��Top=�6^   $	��234��6v   $
��Bold"�6�   $��16(�6�    �� Text$ Elija una opción��6�   .@�5      �� .��6#   Agregar nuevo puesto69   �� 5      .��6#   Editar puesto existente6<   5      �� 5      -   5         ��Name$ btnSiguiente��5      $��114,115,112,10q�6/      MetroCircleButtonStyle#���   6G    � Cursor$
 Hand��6x   .��5      �� $��38��6    $��30��6+   ��67   �� *
Foreground+ �� RelativeSource �� *FindAncestor+	 �� AncestorType"	 ��
 J� OpacityMask
 5      !� 5       j� Stretch$
 Fill=�6*     appbar_navigate_next !� Visual# �  5      5      5      5      � 5      -   5        $��
grdAgregar��5      $��
20,10,0,10q�6%   $y�	Collapsed=�69   .+�5      �� -   5         ��Name$ 	lblNombre��5      $��Nombre:��6+   $
��Left=�6=   $��0,10,0,0q�6X   $	��Top=�6j   $��21.333(�6�   $
��Bold"�6�   �� 5      -   5        $ 	lblTarifa��5      $��Tarifa (por hora):��6+   $
��Left=�6H   $��	0,102,0,0q�6c   $	��Top=�6v    J� RenderTransformOrigin$ 0.484,0.466&�6�   $��21.333(�6�   $
��Bold"�6�   �� 5      -   5         ��Name$ 	txbNombre��5      $
��Left=�6-   $��33��6H   $��	10,53,0,0q�6T    �� TextWrapping$
 Wrap=�6g   $	��Top=�6{   $	��222��6�   $
��Bold"�6�   $��18.667(�6�   �� 5      -   5        $ 	txbTarifa��5      $
��Left=�6-   $��35��6H   $��
38,158,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��194��6�   $
��Bold"�6�   $��18.667(�6�   �� 5       -	   5        $ 
lblColones��5       $	��₡��6,   $
��Left=�68   $��
10,158,0,0q�6S   $	��Top=�6g   $��35��6   $
��Bold"�6�   $��21.333(�6�   $��22��6�   �� 5!      -
   5        $ 
btnAgregar��5!      $��88,198,113,1q�6-   #���   6C   $
 Hand��6t   $ 0.5,0.5&�6�   z�5"      V� 5#      .~�5$      ��  �� ScaleY$ -1Q�6-    �� ScaleX$ -1Q�69   �� 5%      �� 5&      T� 5'      5(      .��5*      �� $��28��6    $��27��6+   ��67   �� *
Foreground+ �� *FindAncestor+"	 ��
 5+      !� 5,      $
 Fill=�6*     appbar_save# �  5-      5/      50      51      � 52      -   5        $��	grdEditar��52      $��
10,10,0,10q�6$   $
��Left=�68   $	��274��6S   $y�	Collapsed=�6_   .+�53      �� -   5        $ 
lblNombre1��53      $��Nombre:��6,   $
��Left=�6>   $��6,10,0,0q�6Y   $	��Top=�6k   $��21.333(�6�   $
��Bold"�6�   �� 54      -   5        $ 
lblTarifa1��54      $��Tarifa (por hora):��6,   $
��Left=�6I   $��	8,102,0,0q�6d   $	��Top=�6w   $ 0.484,0.466&�6�   $��21.333(�6�   $
��Bold"�6�   �� 55      -   5        $ 
txbTarifa1��55      $
��Left=�6.   $��35��6I   $��
38,158,0,0q�6U   $
 Wrap=�6i   $	��Top=�6}   $	��194��6�   $
��Bold"�6�   $��18.667(�6�   �� 56      -   5        $ lblColones1��56      $	��₡��6-   $
��Left=�69   $��
10,158,0,0q�6T   $	��Top=�6h   $��35��6�   $
��Bold"�6�   $��21.333(�6�   $��22��6�   �� 57      -   5        $ 
btnGuardar��57      $��88,198,113,1q�6-   #���   6C   $
 Hand��6t   $ 0.5,0.5&�6�   z�58      V� 59      .~�5:      �� $ -1Q�6-   $ -1Q�69   �� 5;      �� 5<      T� 5=      5>      .��5@      �� $��28��6    $��27��6+   ��67   �� *
Foreground+ �� *FindAncestor+"	 ��
 5A      !� 5B      $
 Fill=�6*   # �  5C      5E      5F      �� 5G      -   5        $ 
cmbPuestos��5G      $
��Left=�6/   $��	10,53,0,0q�6J   $	��Top=�6]   $	��222��6u   $��34��6�   $��20(�6�   $
��Bold"�6�   5H      5I      5J      5K      