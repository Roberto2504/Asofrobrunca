   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:SIGEEA_App.Ventanas_Modales.Empleados%SIGEEA_App.Ventanas_Modales.Empleados  5   	   g cMicrosoft.ReportViewer.WinForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3atSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinFormsMicrosoft.Reporting.WinForms 5      T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5      ?    9SIGEEA_App.Ventanas_Modales.Empleados.wnwReporteEmpleados   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:SIGEEA_App.Ventanas_Modales.Empleados     5   	   brvSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinForms     5      PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5        � Title$  Reporte de Ventas Cliente��5
   	   $��577.003��6+   $��806.373��6<    � 
ResizeMode$ NoResize=�6L    � WindowStartupLocation$ CenterScreen=�6b   .��5      � $��0,0,0,-3q�6   .+�5   
   �� 
���   �$��2q�6%   $
��Left=�69   $	��551��6T   $	��Top=�6a   $	��800��6y   �� 5   
   -   5         ��Name$ lblFechaIni��5      $��Fecha Inicio��6%   $
��Left=�6<   $	��Top=�6W   $��16(�6o   $��normal"�6}   $��70,9,0,0q�6�   �� 5   
   -   5        $ lblFechaFin��5      $��Fecha Final��6%   $
��Left=�6;   $	��Top=�6V   $��16(�6n   $��Normal"�6|   $��	319,9,0,0q�6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dtpFecInicio��5      $
��Left=�6+   $��	72,45,0,0q�6F   $	��Top=�6Y   $	��157��6q     5   
   -   5        $ dtpFecFinal��5      $
��Left=�6*   $��
319,45,0,0q�6E   $	��Top=�6Y   $	��159��6q   �� 5   
   -   5         ��Name$ 	btnBuscar��5      $��318,74,431,429q�6$      MetroCircleButtonStyle#���   6<    � Cursor$
 Hand��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   z�5      V� 5      .~�5      ��  �� ScaleY$ -1Q�6%   �� 5      �� 5      T� 5      5      .��5      �� $��20��6   $��20��6#   ��6/   �� *
Foreground+	 �� RelativeSource	 �� *FindAncestor+
 �� AncestorType"
 �� J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6"     appbar_navigate_next !� Visual# �  5      5      5       �� 5"   
   $
��Auto=�6   $��69,140,55,69q�6:   .��5#      7  1System.Windows.Forms.Integration.WindowsFormsHost  -   5        $	��679��5#   M      Child. 5$      /  )Microsoft.Reporting.WinForms.ReportViewer  -   5        ReporteEmpleados��[	 WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089& 	  System.Windows.Forms.UserControl   AutoSize .    AutoSizeMode$ GrowAndShrink=�5%   &      ShowBackButton .     ShowExportButton .     ShowFindControls .  !   ShowPageNavigationControls .     ShowPrintButton .    ShowRefreshButton .     ShowStopButton .     ShowZoomControl .  5'   W   5(      5)      �� 5*   
   -   5        $ lblFechaIni_Copy��5*      $��Cédula empleado��6*   $
��Left=�6D   $	��Top=�6_   $��16(�6w   $��normal"�6�   $��	72,69,0,0q�6�   �� 5+   
   -	   5         ��Name$ 	txtCedula��5+      $
��Left=�6%   $��23��6@   $��
72,100,0,0q�6L    �� TextWrapping$
 Wrap=�6`   $	��Top=�6t   $	��207��6�   5-      5.      