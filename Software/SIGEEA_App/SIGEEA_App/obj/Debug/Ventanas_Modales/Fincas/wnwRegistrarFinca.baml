   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:SIGEEA_App.Ventanas_Modales.Fincas"SIGEEA_App.Ventanas_Modales.Fincas  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   :    4SIGEEA_App.Ventanas_Modales.Fincas.wnwRegistrarFinca   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Blocal0clr-namespace:SIGEEA_App.Ventanas_Modales.Fincas     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  Registrar Finca��5
   	   $��506.647��6!   $��824.797��62    � WindowStartupLocation$ CenterScreen=�6B    � 
ResizeMode$ NoResize=�6g   .��5      � $��0,0,4,0q�6    � ColumnDefinitions 5   
   �� 5      $
��256* �6   �� 5      $
��403* �6   .+�5   
   �� -   5         ��Name$ 	textBlock��5      $
��Left=�6'   $��	10,10,0,0q�6B   $
��Wrap=�6U   $	��Top=�6i   $��1��6�   �� 6�   $
�Tipo��6�   �� 6�   $� de proceso��6�   �� 6�   $�: ��6�   6�   �� 5   
   -   5        $ txtTipo��5      $
��Left=�6%   $��
101,10,0,0q�6@   $
��Wrap=�6T   $�� ��6h   {�.  $	��Top=�6�   $��73��6�   $��1��6�   �� 5   
   -   5        $ txtTipoDeFinca��5      $
��Left=�6,   $��	10,49,0,0q�6G   $
��Wrap=�6Z   $	��Top=�6n   $	��189��6�   �� 6�   $%�Estado con respecto al asociado��6�   �� 6�   $�:��6�   6�   �� 5   
   -   5         ��Name$ cmbTiposDeFinca��5      $
��Left=�6,   $��
187,49,0,0q�6G   $	��Top=�6[   $	��120��6s   6   � 5   
   -   5         �Name$ grdDatosDueño��5      {�.  $��2��68   $��0,102,369,237q�6L   .+�5      �� -   5         ��Name$ 	txtNombre��5      $
��Left=�6'   $��
10,-92,0,0q�6B   $	��Top=�6V   $��Datos de la Finca��6n   $
��Bold"�6�   $��18.667(�6�   
�������
���   �6�   �� 5      -   5         ��Name$ txtPriNombre��5      $
��Left=�6,   $��23��6G   $��	10,38,0,0q�6S   	 �� TextWrapping$
	 Wrap=�6f   $�� ��6z   $	��Top=�6�   $	��148��6�   �� 5      -   5        $ txtSegNombre��5      $
��Left=�6,   $��23��6G   $��
228,38,0,0q�6S   $
	 Wrap=�6g   $�� ��6{   $	��Top=�6�   $	��148��6�   �� 5      -	   5        $ lbPriApellido��5      $
��Left=�6+   $��	10,69,0,0q�6F   $��Primer apellido��6Y   $	��Top=�6s   
���   �6�   �� 5      -
   5        $ txtPriApellido��5      $
��Left=�6.   $��23��6I   $��	10,90,0,0q�6U   $
	 Wrap=�6h   $�� ��6|   $	��Top=�6�   $	��148��6�   �� 5      -   5        $ lbPriNombre��5      $
��Left=�6)   $��	10,17,0,0q�6D   $��Primer nombre:��6W   $	��Top=�6p   
���   �6�   �� 5      -   5        $ lbSegNombre��5      $
��Left=�6)   $��
228,17,0,0q�6D   $��Segundo nombre:��6Y   $	��Top=�6s   
���   �6�   �� 5      -   5        $ lbSegApellido��5      $
��Left=�6+   $��
228,69,0,0q�6F   $��Segundo apellido��6Z   $	��Top=�6u   
���   �6�   �� 5      -   5        $ txtSegApellido��5      $
��Left=�6.   $��23��6I   $��
228,90,0,0q�6U   $
	 Wrap=�6i   $�� ��6}   $	��Top=�6�   $	��148��6�   �� 5       -   5        $ lbCodigo��5       $
��Left=�6&   $��173,306,0,-202q�6A   $	��Top=�6Y   $��Código de la finca:��6q   $
��Bold"�6�   $��18.667(�6�   
�������
���   �6�   �� 5!      -   5        $ lbCodGenerado��5!      $
��Left=�6+   $��346,306,-73,-202q�6F   $	��Top=�6`   $�� ��6x   $
��Bold"�6�   $��18.667(�6�   
���   ���6�   Z� 6�   5"      �� 5#   
   -   5        $ 
lbTamFinca��5#      $
��Left=�6$   $��
10,269,0,0q�6?   $+��%Tamaño de finca en metros cuadrados:��6S   $	��Top=�6�   �� 5$   
   -   5        $ txtTamFinca��5$      $
��Left=�6'   $��23��6B   $��
10,290,0,0q�6N   $
	 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��272��6�   
 J� RenderTransformOrigin$
 0.507,0.962&�6�   �� 5&   
   -   5        $ txtNumeroRe��5&      $
��Left=�6)   $��
10,321,0,0q�6D   $
��Wrap=�6X   $��Número de registro:��6l   $	��Top=�6�   �� 5'   
   -   5        $ txtNumeroRegistro��5'      $
��Left=�6-   $��23��6H   $��
10,342,0,0q�6T   $
	 Wrap=�6h   $�� ��6|   $	��Top=�6�   $	��272��6�   �� 5(   
   -   5         ��Name$ btnRegistrar��5(      $��417,414,10,10q�6'      MetroCircleButtonStyle#���   6>    � Cursor$
 Hand��6o   $��1��6�   .��5)      �� $��20��6   $��20��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5*      !� 5+       j� Stretch$
 Fill=�6"     appbar_save !� Visual# �  5,      5.      5/      �� 50   
   -   5        $ btnCancelar��50      $��29,414,237,10q�6&   #���   6=   $
 Hand��6n   .��51      �� $��20��6   $��20��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 52      !� 53      $
 Fill=�6"     appbar_cancel# �  54      56      57      � 58   
   $��134,10,10,134q�6   $��1��6&    � RowDefinitions 59      �� 5:      $
��163* �6    �� 5;      $
��164* �6    .+�5=      &   System.Windows.Controls.DataGrid  $��-41,27,185,115q�6   $
 0.5,0.5&�6/   $��Right=�6O   $	��210��6k   z�5>      V� 5?      .~�5@      �� �� 5A      �� 5B       �� Angle$ 0.041Q�6*   T� 5C      5D         Columns 5F      0  *System.Windows.Controls.DataGridTextColumn  5G      ,  &System.Windows.Controls.DataGridColumn   Header$ Cod Lote��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6;      CanUserResize .     FontSize$ 16Q�6]      
FontWeight$
 Bold"�6k    �� TextAlignment$ Center=�6}   6�     5H      $ Tamaño��6)   $ 88 69    .  $ 16Q�6Z   $
 Bold"�6h   $ Center=�6z   6�   5J      �� 5K      
���   �$��1q�6)   $
��Left=�6=   $	��271��6X   $	��Top=�6e   $	��349��6}   $��2��6�   $��0,50,0,0q�6�   ._�5L      �� $
��Auto=�6   $��-1q�6B   .��5M      �� -   5         ��Name$ stpLotes��5M   !   $
��Left=�64   $	��258��6O   $	��Top=�6\   $	��354��6t   $
��Auto=�6�   5N      5O      �� 5P      -   5        $ 
btnAgregar��5P      $��306,2,1,117q�6)   #���   6X   $
 Hand��6�   $
 0.5,0.5&�6�   z�5Q      V� 5R      .~�5S      ��  �� ScaleY$ -1Q�6)    �� ScaleX$ -1Q�65   �� 5T      �� 5U      T� 5V      5W      .��5Y      �� $��18��6   $��14��6'   ��63   �� *
Foreground+ �� *FindAncestor+" �� 5Z      !� 5[      $
 Fill=�6&     
appbar_add# �  5\      5^      5_      �� 5`      -   5        $ 	lbAgregar��5`      $��Agregar Lote��6'   $
��Left=�6>   $��
224,10,0,0q�6Y   $	��Top=�6m   5a      �� 5b   
   -   5        $ txtTipoDeFinca_Copy��5b      $
��Left=�61   $��	10,84,0,0q�6L   $
��Wrap=�6_   $!��Datos del dueño registral:��6s   $	��Top=�6�   $
��Bold"�6�   $��13.333(�6�   �� 5c   
   -   5        $ txtTipoDeFinca_Copy1��5c      $
��Left=�62   $��
10,246,0,0q�6M   $
��Wrap=�6a   $	��Top=�6u   $
��Bold"�6�   $��13.333(�6�   �� 6�   $�Datos de��6�   �� 6�   $�	 la finca��6�   �� 6�   $�:��6�   6�   �� 5d   
   
���   �$��4q�6%   $��2��69   $
��Left=�6M   $	��478��6h   $	��Top=�6u   $	��815��6�   5e      5g      