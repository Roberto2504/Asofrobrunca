   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados%SIGEEA_App.Ventanas_Modales.Asociados  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5      G(clr-namespace:SIGEEA_App.Custom_ControlsSIGEEA_App.Custom_Controls  5   	   E    ?SIGEEA_App.Ventanas_Modales.Asociados.wnwOpcionesReporteEntrega   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5      DCustom_Controls(clr-namespace:SIGEEA_App.Custom_Controls     5   	     � Title$  wnwOpcionesReporteEntrega��5
   	   $��258.27��6+   $��556.015��6;    � WindowStartupLocation$ CenterScreen=�6K   ��.  � WindowStyle$
 None=�6�    � 
ResizeMode$ NoResize=�6�   .��5      � ���	#FFEAE3E3 J� Opacity$	 0.7Q�6"   .+�5   
   (  "System.Windows.Controls.DatePicker  -   5        $��dpFecFin��5   h   $
��Left=�6   $��192,206,0,0q�60   $	��Top=�6E   $��33��6]   6x     5   
   -   5        $��dpFecInicio��5   {   $
��Left=�6   $��192,164,0,0q�60   $	��Top=�6E   $��33��6]   
���   �6�   �� 5   
   -   5        $��txbFecInicio��5   )   $��34,164,369,70q�6   {�.  $��14(�6O    �� TextAlignment$ Center=�6]   .��6t   Fecha de inicio --->5      �� 5   
   -   5        $��	txbFecFin��5   )   $��34,206,369,28q�6   {�.  $��14(�6L   $ Center=�6Z   .��6q   Fecha de fin --->5      �� 5   
   ���	#FF020202$��25,10,303,122q�6)   $��1q�6@   ._�5      � .+�5      	� -   5        $��rbtFacTodas��5   |   $��Todas las facturas��6   $��10,10,84,86q�6;    	� 	GroupName$ FiltroFacturas��6P    d� 	IsChecked$
 TrueY�6k   6|   	� 5      -   5        $��rbtFacIncompletas��5   m   $��Facturas incompletas��6   $��10,40,74,46q�6=   $ FiltroFacturas��6R   6m   	� 5      -   5        $��rbtFacPendientes��5   t   $!��Facturas pendientes de pago��6   $��10,80,92,11q�6D   $ FiltroFacturas��6Y   6t   5      5      �� 5   
   ���	#FF020202$��318,10,10,122q�6)   $��1q�6@   ._�5      � .+�5      	� -   5        $��rbtAscConsolidado��5   u   $��Consolidado��6   $��10,10,84,86q�64   $ FiltroAsociado��6I   $
 TrueY�6d   6u   	� 5      -	   5        $��rbtAscEspecifico��5   e   $��Por asociado��6   $��10,43,74,62q�65   $ FiltroAsociado��6J   6�   �� 5       -
   5        $��txbCedulaCodigo��5    ~   $��17��6   $��Bottom=�6&   $��
41,0,33,15q�6A   
���   ����#000000$y�	Collapsed=�6�   .��6�   *  $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Cédula o código��5!   i   .��5"      5#      5$      �� 5&   
   -   5        	 ��Name$	 
btnGenerar��5&      $��439,164,40,26q�6%      MetroCircleButtonStyle#���   6<   
 � Cursor$

 Hand��6m    � ToolTip$ Generar reporte��6�   .��5'      �� $��36��6   $��30��6#    J� RenderTransformOrigin$ 0.5,0.5&�6�   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ��z�5(      V� 5)      .~�5*      �� �� 5+      �� 5,       �� Angle$ -2.427Q�6*   T� 5-      5.       J� OpacityMask 50      !� 51       j� Stretch$
 Fill=�6"     appbar_check !� Visual# �  52      54      55      �� 56   
   -   5        $	 	btnCerrar��56      $��329,164,150,26q�6$   #���   6<   $

 Hand��6m   $ Cerrar��6�   .��57      �� $��36��6   $��30��6#   $ 0.5,0.5&�6�   ��6/   �� *
Foreground+ �� *FindAncestor+" ��z�58      V� 59      .~�5:      �� �� 5;      �� 5<      $ -2.427Q�6*   T� 5=      5>       5@      !� 5A      $
 Fill=�6"     appbar_close# �  5B      5D      5E      5F      5G      