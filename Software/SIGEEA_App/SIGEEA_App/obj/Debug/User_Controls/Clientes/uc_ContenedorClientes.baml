   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:SIGEEA_App.User_Controls.Clientes!SIGEEA_App.User_Controls.Clientes  5      =    7SIGEEA_App.User_Controls.Clientes.uc_ContenedorClientes   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Alocal/clr-namespace:SIGEEA_App.User_Controls.Clientes     5      $	��409��5      $	��835��6,   .��5      � .+�5	   
   &   System.Windows.Controls.DataGrid  $��80,60,45,326q�6     J� RenderTransformOrigin$  0.5,0.5&�6)   z�5
      V� 5      .~�5      �� �� 5      �� 5       �� Angle$ 0.041Q�6&   T� 5      5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Nombre Completo��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 222 6>      CanUserResize .     FontSize$ 16Q�6`      
FontWeight$
 Bold"�6n    �� TextAlignment$ Center=�6�   6�     5      $ Cedula��6%   $	 200 65    .  $ 16Q�6W   $
 Bold"�6e   $ Center=�6w   6�     5      $ 	Categoria��6%   $	 100 68    .  $ 16Q�6Z   $
 Bold"�6h   $ Center=�6z   6�     5      $ Estado��6%   $ 80 65    .  $ 16Q�6V   $
 Bold"�6d   $ Center=�6v   6�   5      �� 5   
   
���   �$��1q�6%   $
��Left=�69   $	��316��6T   $��	76,85,0,0q�6a   $	��Top=�6t   $	��716��6�   ._�5      �� $
��Auto=�6   $��	-1,-1,1,1q�6>   .��5      �� -   5        	 ��Name$	 stpClientes��5      $	��720��62   $
��Auto=�6>   5      5      � 5   
   $
��Left=�6   $��67��6*   $��
146,-8,0,0q�66   $	��Top=�6J   $	��600��6b   .+�5       �� -   5        $��stack_search_text��5       $��Center=�62   $��83,29,138,0q�6M   $��38��6b   .+�5!      �� -   5        $	 SearchSubPanel��5!      
 �� Orientation$
 
Horizontal=�65   .+�5"      �� -   5        $	 SearchInterenal��5"   !   $
 
Horizontal=�6:   $	��380��6S   $��46��6_   .+�5#      �� -   5         ��Name$ searchIn��5#   "    �� 	MaxLength$	 200��6Y   $
��Left=�5$   )   $��2q�6D   ���#5C5C5C$	��378��6n   $��0,10,0,9q�6z   $  0.5,0.5&�6�   $��16(�6�   �� 5%      $��/Imagenes/buscar.png��6!   $��	-30,0,0,0q�6?   $��28��6S   $
��Left=�6_   $��18��6z   $  0.5,0.25&�6�   5&      5'      5(      �� 5)      -   5         ��Name$ 	textBlock��5)      $
��Left=�6+   $��	83,10,0,0q�6F   $
��Wrap=�6Y   $ ��Nombre o Número de Cedula��6m   $	��Top=�6�   $	��177��6�   5*      5-      5.      