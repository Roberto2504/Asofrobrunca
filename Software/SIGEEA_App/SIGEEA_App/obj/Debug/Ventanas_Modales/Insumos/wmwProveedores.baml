   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:SIGEEA_App.Ventanas_Modales.Insumos#SIGEEA_App.Ventanas_Modales.Insumos  5   	   8    2SIGEEA_App.Ventanas_Modales.Insumos.wmwProveedores   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Clocal1clr-namespace:SIGEEA_App.Ventanas_Modales.Insumos     5   	     � Title$  Proveedores��5   	   $��353.008��6   $��556.684��6.    � 
ResizeMode$ NoResize=�6>    � WindowStyle$
 None=�6T    � WindowStartupLocation$ CenterScreen=�6g   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  $��21,132,42,132q�6    J� RenderTransformOrigin$ 0.5,0.5&�6*   z�5      V� 5      .~�5      �� �� 5       �� AngleX$ -0.001Q�6$   �� 5       �� Angle$ 0.041Q�6&   T� 5      5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Nombre ��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$		 120 66   
   CanUserResize
 .     FontSize$ 16Q�6X      
FontWeight$
 Bold"�6f    �� TextAlignment$ Center=�6x     5      $ Descripción��6%   $		 100 6:   
 .  $ 16Q�6\   $
 Bold"�6j   $ Center=�6|     5      $ Editar��6%   $		 100 65   
 .  $ 16Q�6W   $
 Bold"�6e   $ Center=�6w     5      $ Contacto��6%   $	 92 67   
 .  $ 16Q�6X   $
 Bold"�6f   $ Center=�6x     5      $ COMPRAR��6%   $	 92 66   
 .  $ 16Q�6W   $
 Bold"�6e   $ Center=�6w   5      �� 5   
   $
��Left=�6   $��10,3,0,0q�60   $
��Wrap=�6B   $��Proveedores��6V   $	��Top=�6i   $��Segoe UI Light)�6�   $��22(�6�   $��29��6�   $	��198��6�   �� 5   
   $
��Left=�6   $��1��60   $��	10,37,0,0q�6;   $	��Top=�6N   $	��528��6f   
���   �6r   �� 5   
   -   5         ��Name$ 	txtBuscar��5       �� 	MaxLength$	 200��6K   $
��Left=�5   
   $��2q�6%   ���#5C5C5C$	��224��6O   $��10,64,0,262q�6[   $ 0.5,0.5&�6p   $��16(�6�   �� 5   
   $/��)/SIGEEA_App;component/Imagenes/buscar.png��6   $��207,64,0,261q�6D   $��28��6[   $
��Left=�6g   $��18��6�   $ 0.5,0.25&�6�   �� 5    
   -   5         ��Name$ textBlock_Copy��5       $
��Left=�6,   $��	10,43,0,0q�6G   $
��Wrap=�6Z   $��Nombre de proveedor��6n   $	��Top=�6�   $	��177��6�   �� 5!   
   -   5         ��Name$ 
btnAgregar��5!      $��239,58,283,261q�6%      MetroCircleButtonStyle#���   6=    � Cursor$
 Hand��6n   .��5"      �� $��15��6   $��15��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5#      !� 5$       j� Stretch$
 Fill=�6"     
appbar_add !� Visual# �  5%      5'      5(      5*      5+      