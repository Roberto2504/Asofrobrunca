   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados%SIGEEA_App.Ventanas_Modales.Asociados  5   	   g cMicrosoft.ReportViewer.WinForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3atSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinFormsMicrosoft.Reporting.WinForms 5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   E    ?SIGEEA_App.Ventanas_Modales.Asociados.wnwFacturasPendientesPago   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados     5   	   brvSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinForms     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  Factura��5
   	   $��512.293��6   $��839.459��6*    � 
ResizeMode$ NoResize=�6:    � WindowStartupLocation$ CenterScreen=�6P   .��5      �� ���#83919F$��2q�6#   ._�5   
   � .+�5      � -   5        $��
grdPrimera��5      $y�Visible=�6%   .+�5      �� $��Visible=�6   $��10,147,157,20q�6E   ���	#FFC3BABA.��5      �� -   5        $��stpContenedor��5   !   68   5      � 5      $
��Left=�6   $��95��62   $	��Top=�6>   $	��830��6V   ��5      �� 5       �� EndPoint$ 0.5,1&�6.    �� 
StartPoint$ 0.5,0&�6?   .��5      �  � Color$ White��6+    � Offset$ 0Q�69   � 5      $ 	#FF4B689B��6+   $ 1Q�6=   5      .+�5      �� -   5         ��Name$ lblAsociado��5      $��10,3,443,57q�61   $
��Bold"�6F   $��16(�6X   $��	Asociado:��6f   �� 5      -   5        $ 	lblCedula��5      $��392,3,210,60q�6/   $
��Bold"�6E   $��16(�6W   $��Cédula:��6e   �� 5      -   5        $ 	lblCodigo��5      $��625,0,42,60q�6/   $
��Bold"�6D   $��16(�6V   $��Código:��6d   �� 5      -   5        $ 
lblFactura��5      $��500,46,127,15q�60   $
��Bold"�6G   $��16(�6Y   $��N° factura:��6g   �� 5      -   5        $ lblFecEntrega��5      $��146,43,407,13q�63   $
��Bold"�6J   $��16(�6\   $��Fecha de entrega:��6j   5      �� 5      -   5         ��Name$ btnProcesar��5      $��694,275,38,107q�6.      MetroCircleButtonStyle#���   6F   	 � Cursor$
	 Hand��6w   
 � ToolTip$
 	Siguiente��6�   .��5      �� $��53��6    $��42��6+    J� RenderTransformOrigin$ 0.5,0.5&�6�   ��67   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ��z�5       V� 5!      .~�5"   "   �� �� 5#   "   �� 5$   "    �� Angle$ -2.427Q�62   T� 5%   "   5&       J� OpacityMask 5(      !� 5)       j� Stretch$
 Fill=�6*     appbar_arrow_right !� Visual# �  5*      5,      5-      5/      � 50      -	   5        $��
grdSegunda��50      $y�	Collapsed=�6%   $��
0,10,0,-10q�6<   .+�51      �� $
��Auto=�6   $��	0,0,434,0q�6B   .��52      7  1System.Windows.Forms.Integration.WindowsFormsHost  -
   5        $	��321��52   T      Child. 53      /  )Microsoft.Reporting.WinForms.ReportViewer  -   5        ReporteFacturaVenta��[	 WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089& 	  System.Windows.Forms.UserControl   AutoSize .    AutoSizeMode$ GrowAndShrink=�54   &      ShowBackButton .     ShowExportButton .     ShowFindControls .  !   ShowPageNavigationControls .     ShowPrintButton .    ShowRefreshButton .     ShowStopButton .     ShowZoomControl .  56   W   57      58      �� 59      -   5        $ btnAtras��59      $��684,56,48,326q�6,   #���   6C   $
	 Hand��6t   $
 Atrás��6�   .��5:      �� $��53��6    $��42��6+   $ 0.5,0.5&�6�   ��67   �� *
Foreground+ �� *FindAncestor+" ��z�5;      V� 5<      .~�5=   "   �� �� 5>   "   �� 5?   "   $ -2.427Q�62   T� 5@   "   5A       5C      !� 5D      $
 Fill=�6*     appbar_arrow_left# �  5E      5G      5H      �� 5I      -   5        $ btnCancelar��5I      $��684,231,48,151q�6.   #���   6F   $
	 Hand��6w   $
 Cancelar pago��6�   .��5J      �� $��53��6    $��42��6+   $ 0.5,0.5&�6�   ��67   �� *
Foreground+ �� *FindAncestor+" ��z�5K      V� 5L      .~�5M   "   �� �� 5N   "   �� 5O   "   $ -2.427Q�62   T� 5P   "   5Q       5S      !� 5T      $
 Fill=�6*     appbar_money# �  5U      5W      5X      �� 5Y      -   5        $ btnEfectuarPago��5Y      $��684,231,48,151q�62   #���   6J   $
	 Hand��6{   $y�	Collapsed=�6�   $
 Efectuar pago��6�   .��5Z      �� $��53��6    $��42��6+   $ 0.5,0.5&�6�   ��67   �� *
Foreground+ �� *FindAncestor+" ��z�5[      V� 5\      .~�5]   "   �� �� 5^   "   �� 5_   "   $ -2.427Q�62   T� 5`   "   5a       5c      !� 5d      $
 Fill=�6*   # �  5e      5g      5h      5i      �� 5j      -   5        $��brdPopUp��5j   l   
���   �$��2q�6)   $��129,220,129,87q�6=   $y�	Collapsed=�6U   ._�5k      � -   5        $��popMetodoPago��5k      $��0,-2,0,0q�6,   .+�5l      �� $��35��6    $	��Top=�6,    J� Opacity$	 0.2Q�6D    5m      �� 5n      $ 0.5,1&�62   $ 0.5,0&�6C   .��5o   "   � $ Black��6/   $ 0Q�6=   � 5p   "   $ 	#FF164EC5��6/   $ 1Q�6A   5q      ��5s      �� 5t      $ 0.5,1&�62   $ 0.5,0&�6C   .��5u   "   � $ Black��6/   $ 0Q�6=   � 5v   "   $ 	#FF4032CD��6/   $ 1Q�6A   5w      5y      �� 5z      -   5        $��txtTituloPop��5z       $��21��64   $	��Top=�6@   $��199,10,199,0q�6X   $
��Bold"�6n   $��14.667(�6�   ���	#FF231F70Elija el método de pago6�   �� 5{      -   5        $��btnCerrarPop��5{      $��532,5,5,140q�61   
���  ��$��12(�6W   
�������$
	 Hand��6x   .��6�   X6�   � 5|      -   5        $��grdPrimeraPop��5|   D   $��0,35,0,0q�6   ���	#FFF7F5C1.+�5}      	� -   5         	�Name$ rbtEfectivo��5}   &    	� 	GroupName$ grpMetodoPago��6;   $��Efectivo��6U   $
��Left=�6h   $��	62,36,0,0q�6�   $	��Top=�6�   $ 0.554,-0.778&�6�   	� 5~      -   5        $ 	rbtCheque��5~   &   $ grpMetodoPago��69   $��Cheque��6S   $
��Left=�6d   $��	62,59,0,0q�6   $	��Top=�6�   	� 5      -   5        $ rbtTransferencia��5   &   $ grpMetodoPago��6@   $��Transacción bancaria��6Z   $
��Left=�6y   $��	62,82,0,0q�6�   $	��Top=�6�   �� 5�      -   5        $ btnSiguientePop��5�   !   $��388,44,118,37q�6:   #���   6Q   $
	 Hand��6�   $
 	Siguiente��6�   $ 0.5,0.5&�6�   z�5�      V� 5�   "   .~�5�   &   ��   �� ScaleY$  -1Q�65   �� 5�   &   �� 5�   &   T� 5�   &   5�   #   .��5�      �� $��29��6(   $��25��63   $ 0.5,0.5&�6�   ��6?   �� *
Foreground+ �� *FindAncestor+" ��z�5�   "   V� 5�   &   .~�5�   *   �� �� 5�   *   �� 5�   *   $ -2.427Q�6:   T� 5�   *   5�   '    5�   "   !� 5�   &   $
 Fill=�62   # �  5�      5�      5�      5�      � 5�      -   5        $��grdChequePop��5�   D   $��0,35,0,0q�6   ���	#FFF7F5C1$y�	Collapsed=�6X   .+�5�      �� -   5        $��txbNumChequePop��5�   "   $!��Digite el número de cheque��69   $��117,21,117,64q�6[   $
��Bold"�6r   $��20(�6�   ���	#FFBBB2B26�   �� 5�      -   5        $ btnChequeListo��5�   !   $��252,77,253,3q�69   #���   6O   $
	 Hand��6�   $
 	Siguiente��6�   $ 0.5,0.5&�6�   z�5�      V� 5�   "   .~�5�   &   �� $  -1Q�65   �� 5�   &   �� 5�   &   T� 5�   &   5�   #   .��5�      �� $��29��6(   $��25��63   $ 0.5,0.5&�6�   ��6?   �� *
Foreground+ �� *FindAncestor+" ��z�5�   "   V� 5�   &   .~�5�   *   �� ! �� ScaleX$! -1Q�69   �� 5�   *   �� 5�   *   $ -183.399Q�6:   T� 5�   *   5�   '    5�   "   !� 5�   &   $
 Fill=�62     appbar_check# �  5�      5�      5�      5�      � 5�      -   5        $��grdTransaccionPop��5�   D   $��0,35,0,0q�6   ���	#FFF7F5C1$y�	Collapsed=�6]   .+�5�      �� -   5        $��txbNumTransaccionPop��5�   "   $'��!Digite el número de transacción��6>   $��117,21,117,64q�6e   $
��Bold"�6|   $��20(�6�   ���	#FFBBB2B26�   �� 5�      -   5        $ btnTransaccionListo��5�   !   $��252,77,253,3q�6>   #���   6T   $
	 Hand��6�   $
 	Siguiente��6�   $ 0.5,0.5&�6�   z�5�      V� 5�   "   .~�5�   &   �� $  -1Q�65   �� 5�   &   �� 5�   &   T� 5�   &   5�   #   .��5�      �� $��29��6(   $��25��63   $ 0.5,0.5&�6�   ��6?   �� *
Foreground+ �� *FindAncestor+" ��z�5�   "   V� 5�   &   .~�5�   *   �� $! -1Q�69   �� 5�   *   �� 5�   *   $ -183.399Q�6:   T� 5�   *   5�   '    5�   "   !� 5�   &   $
 Fill=�62   # �  5�      5�      5�      5�      5�      5�      5�      5�      5�      