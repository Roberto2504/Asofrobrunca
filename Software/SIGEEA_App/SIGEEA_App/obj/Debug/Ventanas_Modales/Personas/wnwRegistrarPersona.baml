   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:SIGEEA_App.Ventanas_Modales.Personas$SIGEEA_App.Ventanas_Modales.Personas  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   C&clr-namespace:SIGEEA_App.User_ControlsSIGEEA_App.User_Controls  5   	   >    8SIGEEA_App.Ventanas_Modales.Personas.wnwRegistrarPersona   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:SIGEEA_App.Ventanas_Modales.Personas     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   @User_Controls&clr-namespace:SIGEEA_App.User_Controls     5   	   -   5        (  "MahApps.Metro.Controls.MetroWindow   Name$  wnwRegistro��5   F    � Title$ Registro��5
   	   $��410.282��6   $��764.305��6+    � 
ResizeMode$ NoResize=�6;    � WindowStartupLocation$ CenterScreen=�6Q   .��5      �� ���#83919F$��2q�6#   ._�5   
   � .+�5      � -   5         �Name$ 
grdPersona��5      $
��Left=�6'   $	��328��6B   $��	25,32,0,0q�6O   $	��Top=�6b   $	��682��6z   $y�Visible=�6�   
 � Tag$ 0��6�   .+�5      � -   5        $��
grdValidar��5      $��195,10,357,18q�6)   .+�5      �� -   5         ��Name$ 	txbCedula��5      $
��Left=�61   $��23��6L   $��6,43,0,0q�6X    �� TextWrapping$
 Wrap=�6j   $	��Top=�6~   $	��120��6�   $��13.333(�6�   $
��Bold"�6�   $ 1��6�   �� 5      -   5        $ txbPriNombre��5      $
��Left=�64   $��23��6O   $��6,91,0,0q�6[   $
 Wrap=�6m   $	��Top=�6�   $	��120��6�   $��13.333(�6�   $
��Bold"�6�   $ 0��6�   
�������6�   �� 5      -   5        $ txbSegNombre��5      $
��Left=�64   $��23��6O   $��	6,151,0,0q�6[   $
 Wrap=�6n   $	��Top=�6�   $	��120��6�   $��13.333(�6�   $
��Bold"�6�   $ 3��6�   �� 5      -   5        $ txbPriApellido��5      $
��Left=�66   $��23��6Q   $��	6,212,0,0q�6]   $
 Wrap=�6p   $	��Top=�6�   $	��120��6�   $��13.333(�6�   $
��Bold"�6�   $ 0��6�   �� 5      -   5        $ txbSegApellido��5      $
��Left=�66   $��23��6Q   $��	6,264,0,0q�6]   $
 Wrap=�6p   $	��Top=�6�   $	��120��6�   $��13.333(�6�   $
��Bold"�6�   $ 0��6�   5      �� 5      -	   5         ��Name$ 	lblCedula��5      $��Cédula��6+   $
��Left=�6<   $��5,56,0,0q�6W   $	��Top=�6i   $��16(�6�   $
��Bold"�6�   �� 5      -
   5        $ lblPriNombre��5      $��Primer nombre��6.   $
��Left=�6F   $��	5,103,0,0q�6a   $	��Top=�6t   $��16(�6�   $
��Bold"�6�   �� 5      -   5        $ lblSegNombre��5      $��Segundo nombre��6.   $
��Left=�6G   $��	5,155,0,0q�6b   $	��Top=�6u   	 J� RenderTransformOrigin$	 0.538,0.788&�6�   $��16(�6�   $
��Bold"�6�   �� 5      -   5        $ lblPriApellido��5      $��Primer apellido��60   $
��Left=�6J   $��	5,214,0,0q�6e   $	��Top=�6x   $��16(�6�   $
��Bold"�6�   �� 5      -   5        $ lblSegApellido��5      $��Segundo apellido��60   $
��Left=�6K   $��	5,269,0,0q�6f   $	��Top=�6y   $��16(�6�   $
��Bold"�6�   �� 5      -   5        $ 	lblGenero��5      $��Género��6+   $
��Left=�6<   $��
341,94,0,0q�6W   $	��Top=�6k   $��16(�6�   $
��Bold"�6�   �� 5      -   5        
 ��Name$
 	cbxGenero��5      $
��Left=�6.   $��
507,94,0,0q�6I   $	��Top=�6]   $	��134��6u   $
��Bold"�6�   $��13.333(�6�    �� SelectedIndex$ 0��6�   .@�5      �� -   5         ��Name$ cbiMasculino��5   #   $��M��69   �� 5      -   5        $ cbiFemenino��5   #   $��F��68   5      �� 5      -   5        $ lblGenero_Copy��5      $��Nacionalidad��60   $
��Left=�6G   $��341,156,0,0q�6b   $	��Top=�6w   $��16(�6�   $
��Bold"�6�   �� 5       -   5        $ lblGenero_Copy1��5       $��Fec. Nacimiento��61   $
��Left=�6K   $��341,214,0,0q�6f   $	��Top=�6{   $��16(�6�   $
��Bold"�6�   (  "System.Windows.Controls.DatePicker  5!      -   5          Name$ dtpFecNacimiento��5!      $
��Left=�67   $��507,214,0,0q�6R   $	��Top=�6g   $	��134��6   �� 5"      -   5         ��Name$ btnSiguiente��5"      $��474,261,140,10q�6/      MetroCircleButtonStyle#���   6G    � Cursor$
 Hand��6x    �� 	IsDefault . .��5#      �� $��20��6    $��20��6+   ��67   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5$      !� 5%       j� Stretch$
 Fill=�6*     appbar_navigate_next !� Visual# �  5&      5(      5)      �� 5*      -   5         ��Name$ 	textBlock��5*      $
��Left=�6/   $��5,0,0,0q�6J   $
��Wrap=�6[   $��Información personal��6o   $	��Top=�6�   $��	Underline{�6�   $
��Bold"�6�   $��26.667(�6�   0   *SIGEEA_App.User_Controls.uc_Nacionalidades  5+      -   5          Name$ ucNacionalidad��5+   2   $
��Left=�6J   $��507,156,0,0q�6e   $	��Top=�6z   $��31��6�   $	��175��6�   ,   &SIGEEA_App.User_Controls.uc_ratingstar  5,      -   5          Name$ ucEstrellas��5,   E   $y�	Collapsed=�6.   $
��Left=�6Z   $��353,10,-23,0q�6u   $	��Top=�6�   $	 0.137,0.441&�6�   $	��352��6�   5.      � 5/      -   5        $ grdEmpleado��5/   r   $
��Left=�6   $	��328��6.   $��	25,32,0,0q�6;   $	��Top=�6N   $	��708��6f   $y�	Collapsed=�6�   .+�50      �� -   5        $ 
textBlock1��50      $
��Left=�60   $��	10,10,0,0q�6K   $
��Wrap=�6^   $��Escolaridad��6r   $	��Top=�6�   $��24(�6�   $
��Bold"�6�   $��	Underline{�6�   �� 51      -   5        $
 cmbGradoAcad��51      $
��Left=�61   $��
10,165,0,0q�6L   $	��Top=�6`   $	��152��6x   $
��Bold"�6�   $��18.667(�6�    �� Text$ Grado académico��6�   .@�52      �� $��Primaria incompleta��6#   �� 53      $��Primaria completa��6#   �� 54      $��Secundaria incompleta��6#   �� 55      $��Secundaria completa��6#   �� 56      $��Universidad incompleta��6#   �� 57      $��Universidad completa��6#   58      �� 59      -   5        $ label��59      $��Observaciones adicionales��6'   $
��Left=�6K   $��
10,216,0,0q�6f   $	��Top=�6z   $��18.667(�6�   $
��Bold"�6�   �� 5:      -   5        $ txbAdicional��5:      $
��Left=�60   $��67��6K   $��
10,251,0,0q�6W   $
 Wrap=�6k   $	��Top=�6   $	��232��6�    �� 	MaxLength$	 300��6�    �� AcceptsReturn . " �� VerticalScrollBarVisibility$ Visible=�6�   �� 5;      -   5        $ btnRegistrar��5;      $��480,123,144,137q�6/   #���   6H   $
 Hand��6y   .��5<      �� $��20��6    $��20��6+   ��67   �� *
Foreground+ �� *FindAncestor+" �� 5=      !� 5>      $
 Fill=�6*     appbar_save# �  5?      5A      5B      �� 5C      -   5         ��Name$ chkLeer��5C      $��	Sabe leer��6,   $
��Left=�6@   $��	10,65,0,0q�6[   $	��Top=�6n   $��18.667(�6�   $
��Bold"�6�   �� 5D      -    5        $ chkEscribir��5D      $��Sabe escribir��60   $
��Left=�6H   $��
10,109,0,0q�6c   $	��Top=�6w   $��18.667(�6�   $
��Bold"�6�   5E      � 5F      -!   5        $ 
grdCliente��5F      $
��Left=�6'   $	��328��6B   $��	25,32,0,0q�6O   $	��Top=�6b   $	��708��6z   $y�Hidden=�6�   .+�5G      �� -"   5        $ 
textBlock2��5G      $
��Left=�60   $��	10,10,0,0q�6K   $
��Wrap=�6^   $��Categoria Cliente��6r   $	��Top=�6�   $��24(�6�   $
��Bold"�6�   $��	Underline{�6�   �� 5H      -#   5        $ label1��5H      $��Nombre Categoria��6(   $
��Left=�6C   $��	10,45,0,0q�6^   $	��Top=�6q   $��18.667(�6�   $
��Bold"�6�   �� 5I      -$   5        $
 cmbTipCliente��5I      $
��Left=�62   $��	10,90,0,0q�6M   $	��Top=�6`   $	��215��6x   $
��Bold"�6�   $��18.667(�6�   $  ��6�   6�   �� 5K      -%   5        $ label2��5K      $��Credito Máximo��6(   $
��Left=�6A   $��
305,45,0,0q�6\   $	��Top=�6p   $��18.667(�6�   $
��Bold"�6�   �� 5L      -&   5        $ txbCreMaximo��5L      $
��Left=�60   $��23��6K   $��
305,90,0,0q�6W   $
 Wrap=�6k   $	��Top=�6   $	��215��6�   $��13.333(�6�   $
��Bold"�6�   �� 5M      -'   5        $ label3��5M      $��Rango entre pagos (Días)��6(   $
��Left=�6K   $��	0,140,0,0q�6f   $	��Top=�6y   $��18.667(�6�   $
��Bold"�6�   �� 5O      -(   5        $ label3_Copy��5O      $&�� Tiempo máximo para pagar (Dias)��6-   $
��Left=�6W   $��305,140,0,0q�6r   $	��Top=�6�   $��18.667(�6�   $
��Bold"�6�   �� 5Q      -)   5        $ btnRegistrarCliente��5Q      $��474,250,150,10q�6X   #���   6p   $
 Hand��6�   .��5R      �� $��20��6    $��20��6+   ��67   �� *
Foreground+ �� *FindAncestor+" �� 5S      !� 5T      $
 Fill=�6*   # �  5U      5W      5X      �� 5Y      -*   5        $ lbPkCatCliente��5Y      $�� ��60   $y�Hidden=�6;   $
��Left=�6O   $��
215,52,0,0q�6j   $	��Top=�6~   �� 5Z      -+   5        $ txbRango��5Z      $
��Left=�6,   $��23��6G   $��
10,193,0,0q�6S   $
 Wrap=�6g   $	��Top=�6{   $	��215��6�   $��13.333(�6�   $
��Bold"�6�   �� 5[      -,   5        $ txbTiempoMaximo��5[      $
��Left=�63   $��23��6N   $��305,193,0,0q�6Z   $
 Wrap=�6o   $	��Top=�6�   $	��215��6�   $��13.333(�6�   $
��Bold"�6�   5\      �� 5]      --   5        $ 
cbxEmpresa��5]      $y�Hidden=�6+   $��Empresa��6?   $
��Left=�6Q   $	��Top=�6l   $��
393,83,0,0q�6�   $	��119��6�   $
��Bold"�6�   $��14(�6�   6�   5^      5_      5`      