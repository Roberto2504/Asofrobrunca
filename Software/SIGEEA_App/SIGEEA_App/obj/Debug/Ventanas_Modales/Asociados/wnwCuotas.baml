   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados%SIGEEA_App.Ventanas_Modales.Asociados  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   5    /SIGEEA_App.Ventanas_Modales.Asociados.wnwCuotas   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  Administrar Cuotas��5	   	   $��571.661��6$   $��728.572��65    � 
ResizeMode$ NoResize=�6E    � WindowStartupLocation$ CenterScreen=�6[   .��5
      �� ���#83919F$��2q�6#   ._�5   
   � .+�5      � -   5        $��grdPrimaria��5      $y�Visible=�6&   .+�5      &   System.Windows.Controls.DataGrid  $��10,57,23,458q�6      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Nombre��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 6=      CanUserResize .     FontSize$ 16Q�6_      
FontWeight$
 Bold"�6m   	 �� TextAlignment$	 Center=�6   6�     5      $ Monto��6-   $	 150 6<    .  $ 16Q�6^   $
 Bold"�6l   $	 Center=�6~   6�     5      $ Fec. Inicio - Fec. Fin��6-   $	 150 6M    .  $ 16Q�6o   $
 Bold"�6}   $	 Center=�6�   6�   5      �� 5      $
��Auto=�6   $��10,90,10,71q�6B   .��5      �� -   5        $��	stpCuotas��5   !   $
��Left=�62   $	��276��6M   $	��Top=�6Z   $	��693��6r   5      5      � 5      -   5        $��grdSecundaria��5      $y�	Collapsed=�6(   .+�5      �� -   5        
 ��Name$
 btnAtras��5         MetroCircleButtonStyle#���   6,    � Cursor$
 Hand��6]    J� RenderTransformOrigin$ 0.5,0.5&�6k   $��24,8,643,487q�6�    � ToolTip$ Atrás��6�   z�5      V� 5      .~�5      ��  �� ScaleY$ -1Q�6-    �� ScaleX$ -1Q�69   �� 5      �� 5      T� 5      5       .��5"      �� $��18��6    $��13.721��6+   ��6;   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5#      !� 5$       j� Stretch$
 Fill=�6*     appbar_arrow_right !� Visual# �  5%      5'      5(        5)      $��20,57,26,351q�6    5*        5+      $ Cédula��6-   $	 143 6=    .  $ 16Q�6_   $
 Bold"�6m   $	 Center=�6   6�     5,      $ Nombre��6-   $	 180 6=    .  $ 16Q�6_   $
 Bold"�6m   $	 Center=�6   6�     5-      $ Cuota��6-   $	 140 6<    .  $ 16Q�6^   $
 Bold"�6l   $	 Center=�6~   6�     5.      $ Total��6-   $ 85 6<    .  $ 16Q�6]   $
 Bold"�6k   $	 Center=�6}   6�     5/      $ Saldo��6-   $	 100 6<    .  $ 16Q�6^   $
 Bold"�6l   $	 Center=�6~   6�   51      �� 52      $��Visible=�6   $��10,90,10,71q�6E   ���	#FF8AA1B4.��53      �� -   5        $��stpDeudores��53   !   $
��Left=�64   $
��Auto��6O   $	��Top=�6]   $	��683��6u   $��10,10,10,30q�6�   54      55      � 56      -   5        $��grdIndicarMonto��56      $y�	Collapsed=�6*   .+�57      �� $��249,72,242,423q�6   $��26.667(�60   $
��Bold"�6B   .��6T   Monto a pagar:6d   �� 58      -   5        $��lblSimboloMoneda��58      $��$��60   $��163,207,529,288q�6<   $
��Bold"�6U   $��29.333(�6g   6{   �� 59      -   5         ��Name$ txbMonto��59      
 � Tag$ 1��6,   $
��Left=�64   $��48��6O   $��213,207,0,0q�6[    �� TextWrapping$
 Wrap=�6p   $�� ��6�   $	��Top=�6�   $	��293��6�   $��26.667(�6�   $
��Bold"�6�   �� 5:      -	   5        $
 btnPagarCuota��5:      $ Realizar pago��60   #���   6H   $
 Hand��6y   $ 0.5,0.5&�6�   $��217,306,419,155q�6�   z�5;      V� 5<      .~�5=      �� $ -1Q�6-   $ -1Q�69   �� 5>      �� 5?      T� 5@      5A      .��5C      �� $��40��6    $��40��6+   ��67   �� *
Foreground+ �� *FindAncestor+" �� 5D      !� 5E      $
 Fill=�6*     appbar_money# �  5F      5H      5I      �� 5J      -
   5        $
 btnCancelar��5J      $ Regresar��6.   #���   6A   $
 Hand��6r   $ 0.5,0.5&�6�   $��381,311,255,150q�6�   z�5K      V� 5L      .~�5M      �� $ -1Q�6-   $ -1Q�69   �� 5N      �� 5O      T� 5P      5Q      .��5S      �� $��40��6    $��40��6+   ��67   �� *
Foreground+ �� *FindAncestor+" �� 5T      !� 5U      $
 Fill=�6*   # �  5V      5X      5Y      5[      � 5\      -   5        $��
grdFactura��5\      $y�	Collapsed=�6%   .+�5]      �� -   5        $ 
txbFactura��5]       �� TextAlignment$ Center=�6.   $
��Left=�6E   $
 Wrap=�6`   $	��Top=�6t   $	��465��6�   $	��435��6�   $��38,10,0,-39q�6�   
�������$��16(�6�   $
��Bold"�6�   {�.  " �� VerticalScrollBarVisibility$ Visible=�6�   �� 5^      -   5        $
 btnImprimir��5^      $ Imprimir factura��6.   #���   6I   $
 Hand��6z   $ 0.5,0.5&�6�   $��553,220,51,214q�6�   z�5_      V� 5`      .~�5a      �� $ -1Q�6-   $ -1Q�69   �� 5b      �� 5c      T� 5d      5e      .��5g      �� $��59��6    $��55��6+   ��67   �� *
Foreground+ �� *FindAncestor+" �� 5h      !� 5i      $
 Fill=�6*     appbar_printer# �  5j      5l      5m      5o      5p      5q      5r      