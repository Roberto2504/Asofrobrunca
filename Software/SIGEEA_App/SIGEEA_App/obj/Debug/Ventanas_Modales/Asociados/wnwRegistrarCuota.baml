   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados%SIGEEA_App.Ventanas_Modales.Asociados  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   C&clr-namespace:SIGEEA_App.User_ControlsSIGEEA_App.User_Controls  5   	   =    7SIGEEA_App.Ventanas_Modales.Asociados.wnwRegistrarCuota   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   @User_Controls&clr-namespace:SIGEEA_App.User_Controls     5   	     � Title$  Cuota nueva��5
   	   $��471.428��6   $��645.113��6.    � 
ResizeMode$ NoResize=�6>    � WindowStartupLocation$ CenterScreen=�6T   .��5      �� ���#83919F$��2q�6#   ._�5   
   � $��	0,0,-8,-3q�6   .+�5      � -   5        $��
grdValidar��5      $��218,90,84,277q�6%   .+�5      �� -   5         ��Name$ txbMonto��5      $��Center=�6,   $��49��6I   $��
10,10,27,0q�6U    �� TextAlignment$ Center=�6i    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��264��6�   
 � Tag$ 1��6�   $
��Bold"�6�   $��21.333(�6�   5      �� 5      -   5        $ 	txbNombre��5      $��Center=�6)   $��49��6F   $��249,28,132,0q�6R   $ Center=�6h    �� 	MaxLength$ 50��6   $
 Wrap=�6�   $	��Top=�6�   $	��264��6�   $ 0��6�   $
��Bold"�6�   $��21.333(�6�   �� 5      $��35,28,447,367q�6   $
��Bold"�6+   $��24(�6=   .��6K   Nombre6S   �� 5      $��35,102,447,290q�6   $
��Bold"�6,   $��24(�6>   .��6L   Monto6S   �� 5      $��35,182,477,217q�6   $
��Bold"�6,   $��24(�6>   .��6L   Moneda6T   (   "SIGEEA_App.User_Controls.uc_Moneda  5      -   5          Name$ ucMoneda��5   &   $
��Left=�68   $��238,171,0,0q�6S   $	��Top=�6h   $��68��6�   �� 5      -   5        	 ��Name$	 
btnGuardar��5      $��266,342,265,11q�6)      MetroCircleButtonStyle#���   6A   
 � Cursor$

 Hand��6r    J� RenderTransformOrigin$ 0.5,0.5&�6�   z�5      V� 5      .~�5      ��  �� ScaleY$ -1Q�6)    �� ScaleX$ -1Q�65   �� 5      �� 5      T� 5      5      .��5      �� $��48��6   $��40��6'   ��63   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5       !� 5!       j� Stretch$
 Fill=�6&     appbar_save !� Visual# �  5"      5$      5%      �� 5&      $��10,284,492,122q�6   $
��Bold"�6,   $��18.667(�6>   .��6P   Fecha de inicio6a   �� 5'      $��336,286,191,124q�6   $
��Bold"�6-   $��18.667(�6?   .��6Q   Fecha de fin6_   (  "System.Windows.Controls.DatePicker  5(      -   5        $��dtpFecInicio��5(      $��158,277,336,118q�6-   $
��Bold"�6F   $��16(�6X   6h     5)      -   5        $��	dtpFecFin��5)      $��468,277,26,118q�6*   $
��Bold"�6B   $��16(�6T   6d   5*      5+      5,      