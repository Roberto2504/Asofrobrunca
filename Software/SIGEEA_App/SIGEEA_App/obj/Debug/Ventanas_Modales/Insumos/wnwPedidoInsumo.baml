   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:SIGEEA_App.Ventanas_Modales.Insumos#SIGEEA_App.Ventanas_Modales.Insumos  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   C&clr-namespace:SIGEEA_App.User_ControlsSIGEEA_App.User_Controls  5	   	   9    3SIGEEA_App.Ventanas_Modales.Insumos.wnwPedidoInsumo   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Clocal1clr-namespace:SIGEEA_App.Ventanas_Modales.Insumos     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   @User_Controls&clr-namespace:SIGEEA_App.User_Controls     5	   	     � Title$  Pedido insumo��5   	   $��439.201��6   $��488.88��60    � WindowStartupLocation$ CenterScreen=�6?    � 
ResizeMode$ NoResize=�6d   .��5      � .+�5   
   �� -   5         ��Name$ 
txtNumero0��5      $��20(�6(   $
��Bold"�66   $
��Left=�6H   $��
10,288,0,0q�6c   $
��Wrap=�6w   $��	Cantidad:��6�   $	��Top=�6�   $	��120��6�    J� RenderTransformOrigin$ 0.512,1.466&�6�   �� 5   
   -   5         ��Name$ btnPedir��5      $��397,347,10,0q�6#      MetroCircleButtonStyle#���   69    � Cursor$
 Hand��6j   .��5      �� $��36��6   $��43��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ��	 J� OpacityMask	 5      !� 5      
 j� Stretch$

 Fill=�6"      appbar_clipboard_paper_check !� Visual# �  5      5      5      �� 5   
   -   5        $ btnCancelar��5      $��13,348,402,4q�6&   #���   6<   $
 Hand��6m   $ 0.5,0.5&�6�   z�5      V� 5      .~�5      ��  �� ScaleY$ -1Q�6%   �� 5      �� 5      T� 5      5      .��5      �� $��34��6   $��38��6#   ��6/   �� *
Foreground+ �� *FindAncestor+" ��	 5       !� 5!      $

 Fill=�6"     appbar_cancel# �  5"      5$      5%      �� 5&   
   -   5        $ txtNumero0_Copy��5&      $��20(�6-   $
��Bold"�6;   $
��Left=�6M   $��363,256,0,0q�6h   $
��Wrap=�6}   $	��U/M��6�   $	��Top=�6�   $��47��6�   $ 0.553,0.395&�6�   �� 5'   
   -   5         ��Name$ 
cmbUMedida��5'      $
��Left=�6V   $��341,283,0,0q�6q   $	��Top=�6�   $��90��6�   $��37��6�   $ 0.944,0.446&�6�   �� 5(   
   $
��Left=�6   $��2��60   $��	6,340,0,0q�6;   $	��Top=�6N   $	��463��6f   
���   �6r   �� 5)   
   $
��Left=�6   $��10,3,0,0q�60   $
��Wrap=�6B   $��Datos del insumo��6V   $	��Top=�6n   $��Segoe UI Light)�6�   $��22(�6�   $��29��6�   $	��198��6�   �� 5*   
   $
��Left=�6   $��1��60   $��6,37,0,0q�6;   $	��Top=�6M   $	��473��6e   
���   �6q   �� 5+   
   -   5        $ txtNumero0_Copy1��5+      $��20(�6.   $
��Bold"�6<   $
��Left=�6N   $��	10,43,0,0q�6i   $
��Wrap=�6|   $	��Top=�6�   $	��120��6�   $ 0.321,5.414&�6�   �� 6�   $�Nombre��6�   �� 6�   $�:��6�   6�   �� 5,   
   -   5        $ txtNumero0_Copy2��5,      $��20(�6.   $
��Bold"�6<   $
��Left=�6N   $��	10,75,0,0q�6i   $
��Wrap=�6|   $	��Top=�6�   $	��120��6�   $ 0.321,5.414&�6�   �� 6�   $�Descipción��6�   �� 6�   $�:��6�   6  �� 5-   
   -   5        $ 	txtNombre��5-      $��20(�6'   $
��Bold"�65   $
��Left=�6G   $��
159,43,0,0q�6b   $
��Wrap=�6v   $��	TextBlock��6�   $	��Top=�6�   $��27��6�   $	��289��6�   �� 5.   
   -	   5        $ txtDescripcion��5.      $��20(�6,   $
��Bold"�6:   $
��Left=�6L   $��
159,75,0,0q�6g   $
��Wrap=�6{   $��	TextBlock��6�   $	��Top=�6�   $��27��6�   $	��289��6�   �� 5/   
   -
   5        $ txtNumero0_Copy3��5/      $��20(�6.   $
��Bold"�6<   $
��Left=�6N   $��
10,107,0,0q�6i   $
��Wrap=�6}   $	��Top=�6�   $	��120��6�   $ 0.321,5.414&�6�   �� 6�   $�D��6�   �� 6�   $�
isponibles��6�   �� 6  $�:��6  6  �� 50   
   -   5        $ txtDisponible��50      $��20(�6+   $
��Bold"�69   $
��Left=�6K   $��159,107,0,0q�6f   $
��Wrap=�6{   $��	TextBlock��6�   $	��Top=�6�   $��27��6�   $	��289��6�    �� TextAlignment$ Right=�6�   �� 51   
   $
��Left=�6   $��1��60   $��	4,178,0,0q�6;   $	��Top=�6N   $	��473��6f   
���   �6r   �� 52   
   $
��Left=�6   $��
10,144,0,0q�60   $
��Wrap=�6D   $��Detalles del pedido��6X   $	��Top=�6s   $��Segoe UI Light)�6�   $��22(�6�   $��29��6�   $	��198��6�   7   1SIGEEA_App.User_Controls.uc_ControlNumericoGrande  53   
   -   5          Name$ ucPedido��53   1   $
��Left=�6C   $��159,283,0,0q�6^   $	��Top=�6s   $	��177��6�   $��37��6�   �� 54   
   -   5        $ txtNumero0_Copy4��54      $��20(�6.   $
��Bold"�6<   $
��Left=�6N   $��
10,198,0,0q�6i   $
��Wrap=�6}   $��Descripción��6�   $	��Top=�6�   $	��120��6�   $ 0.512,1.466&�6�   �� 55   
   -   5         ��Name$ 
txtDetalle��55      $
��Left=�6'   $��26��6D   $��
10,230,0,0q�6P    �� TextWrapping$
 Wrap=�6d   $�� ��6x   $	��Top=�6�   $	��438��6�   �� 56   
   
���   �$��2q�6%   $
��Left=�69   $	��410��6T   $	��Top=�6a   $	��489��6y   $��0,0,-6,0q�6�   57      58      