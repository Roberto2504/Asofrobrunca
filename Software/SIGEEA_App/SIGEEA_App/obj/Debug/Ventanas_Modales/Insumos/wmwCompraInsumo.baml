   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:SIGEEA_App.Ventanas_Modales.Insumos#SIGEEA_App.Ventanas_Modales.Insumos  5   	   9    3SIGEEA_App.Ventanas_Modales.Insumos.wmwCompraInsumo   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Clocal1clr-namespace:SIGEEA_App.Ventanas_Modales.Insumos     5   	     � Title$  Compra de insumos��5   	   $	��585��6#   $	��626��60    � 
ResizeMode$ NoResize=�6<    � WindowStyle$
 None=�6R    � WindowStartupLocation$ CenterScreen=�6e   .��5	      � .+�5
   
   �� 
���   �$��2q�6%   $
��Left=�69   $	��585��6T   $	��Top=�6a   $	��626��6y   &   System.Windows.Controls.DataGrid  5   
   $��5,133,34,394q�6    J� RenderTransformOrigin$ 0.5,0.5&�6)   z�5      V� 5      .~�5      �� �� 5       �� AngleX$ -0.001Q�6$   �� 5       �� Angle$ 0.041Q�6&   T� 5      5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Nombre ��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$		 105 66   
   CanUserResize
 .     FontSize$ 16Q�6X      
FontWeight$
 Bold"�6f    �� TextAlignment$ Center=�6x     5      $ Descripción��6%   $	 90 6:   
 .  $ 16Q�6[   $
 Bold"�6i   $ Center=�6{     5      $ 
Disponible��6%   $	 80 69   
 .  $ 16Q�6Z   $
 Bold"�6h   $ Center=�6z     5      $ Cantidad��6%   $		 140 67   
 .  $ 16Q�6Y   $
 Bold"�6g   $ Center=�6y     5      $	 P/U��6%   $	 92 62   
 .  $ 16Q�6S   $
 Bold"�6a   $ Center=�6s     5      $ Total��6%   $	 92 64   
 .  $ 16Q�6U   $
 Bold"�6c   $ Center=�6u   5      �� 5   
   
���   �$��1q�6%   $
��Left=�69   $	��310��6T   $��
10,162,0,0q�6a   $	��Top=�6u   $	��585��6�   ._�5      �� $
��Auto=�6   $��
1,-1,-1,-1q�6>   .��5       �� -   5         ��Name$ 
stpInsumos��5       $	��580��61   $
��Auto=�6=   5!      5"      �� 5#   
   $
��Left=�6   $��1��60   $��
19,523,0,0q�6;   $	��Top=�6O   $	��588��6g   
���   �6s   � 5$   
   $
��Left=�6   $	��126��6*   $��	14,10,0,0q�67   $	��Top=�6J   $	��592��6b   .+�5%      �� $
��Left=�6   $��10,3,0,0q�64   $
��Wrap=�6F   $��Compra de insumos��6Z   $	��Top=�6s   $��Segoe UI Light)�6�   $��22(�6�   $��29��6�   $	��198��6�   �� 5&      $
��Left=�6   $��1��64   $��0,37,0,0q�6?   $	��Top=�6Q   $	��582��6i   
���   �6u   �� 5(      $
��Left=�6   $��293,467,0,-370q�65   $
��Wrap=�6M   $��Total:��6a   $	��Top=�6o   $��Segoe UI Light)�6�   $��22(�6�   $��29��6�   $��48��6�   �� 5)      -   5         ��Name$ 	cbCredito��5)      $��Credito��6a   $
��Left=�6s   $��25,473,0,-382q�6�   $	��Top=�6�   $��18��6�   �� 5*      -   5        $ 
cbEfectivo��5*      $��Efectivo��6c   $
��Left=�6v   $��115,473,0,-382q�6�   $	��Top=�6�    d� 	IsChecked$
 TrueY�6�   $��18��6�   �� 5+      -   5         ��Name$ txtTotal��5+      $
��Left=�6*   $��23��6E   $��346,472,0,-369q�6Q   $
��Wrap=�6i   $��₡ 0��6}   $	��Top=�6�   $	��236��6�   $ Right=�6�   $��14(�6�   �� 5.      -   5         ��Name$ 	txtBuscar��5.       �� 	MaxLength$	 200��6O   $
��Left=�5/      $��2q�6&   ���#5C5C5C$	��224��6P   $��107,90,0,10q�6\   $ 0.5,0.5&�6q   $��16(�6�   �� 51      -   5        $ 
txtDetalle��51      $	 100��6+   $
��Left=�52      $��2q�6&   ���#5C5C5C$	��514��6P   $��
68,48,0,41q�6\   $ 0.5,0.5&�6p   $��16(�6�   �� 53      $/��)/SIGEEA_App;component/Imagenes/buscar.png��6   $��
311,90,0,8q�6H   $��28��6]   $
��Left=�6i   $��18��6�   $ 0.5,0.25&�6�   �� 55      -   5        $ 	textBlock��55      $
��Left=�6+   $��0,98,0,0q�6F   $
��Wrap=�6X   $��Nombre de insumo��6l   $	��Top=�6�   $	��118��6�   �� 56      -   5        $ textBlock_Copy��56      $
��Left=�60   $��0,51,0,0q�6K   $
��Wrap=�6]   $��Descripción:��6q   $	��Top=�6�   $��68��6�   57      �� 58   
   -	   5         ��Name$ btnPedir��58      $��556,529,10,0q�6#      MetroCircleButtonStyle#���   69    � Cursor$
 Hand��6j   .��59      �� $��33��6   $��43��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5:      !� 5;       j� Stretch$
 Fill=�6"     appbar_money !� Visual# �  5<      5>      5?      �� 5@   
   -
   5        $ btnCancelar��5@      $��13,525,549,4q�6&   #���   6<   $
 Hand��6m   $ 0.5,0.5&�6�   z�5A      V� 5B      .~�5C      ��  �� ScaleY$ -1Q�6%   �� 5D      �� 5E      T� 5F      5G      .��5I      �� $��36��6   $��32��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" �� 5J      !� 5K      $
 Fill=�6"     appbar_cancel# �  5L      5N      5O      5P      5Q      