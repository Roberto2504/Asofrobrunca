   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados%SIGEEA_App.Ventanas_Modales.Asociados  5   	   T PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   F    @SIGEEA_App.Ventanas_Modales.Asociados.wnwOpcionesFacturaProducto   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Elocal3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  Filtrar��5	   	   $	��300��6   $��366.541��6&    � 
ResizeMode$ NoResize=�66    � WindowStartupLocation$ CenterScreen=�6L   .��5
      �� ���#83919F$��2q�6#   ._�5   
   � .+�5      �� -   5         ��Name$ cmbOpciones��5      $
��Left=�6,   $��	10,20,0,0q�6G   $	��Top=�6Z   $	��341��6r   $
��Bold"�6�   $��14.667(�6�   � 5      -   5        $��grdTodas��5      $��79,92,65,97q�6#   $y�	Collapsed=�68   .+�5      �� -   5         ��Name$ btnTodas��5      $��67,10,69,10q�6+      MetroCircleButtonStyle#���   6@    � Cursor$
 Hand��6q    � ToolTip$* $Listar todas las facturas pendientes��6�   .��5      �� $��22��6    $��20��6+   ��67   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ��	 J� OpacityMask	 5      !� 5      
 j� Stretch$

 Fill=�6*     appbar_list !� Visual# �  5      5      5      5      � 5      -   5        $��grdAsociado��5      $��10,75,10,36q�6&   $y�	Collapsed=�6;   .+�5      �� $��10,12,6,110q�6   $
��Bold"�6-   $��16(�6?   .��6M   ,*Número de cédula o código del asociado:6v   �� 5      -   5        $��txbAsociado��5   f   $��10,51,10,71q�6    �� TextAlignment$ Center=�6/   $
��Bold"�6F   $��16(�6X   6f   �� 5      -   5        $ btnListaFacAsociado��5      $��135,94,139,5q�66   #���   6L   $
 Hand��6}   $/ )Listar facturas pendientes de un asociado��6�   .��5      �� $��22��6    $��20��6+   ��67   �� *
Foreground+ �� *FindAncestor+" ��	 5      !� 5      $

 Fill=�6*   # �  5      5!      5"      5#      � 5$      -   5        $��grdFacturaUnica��5$      $��22,88,29,40q�6*   $y�	Collapsed=�6?   .+�5%      �� $��50,0,50,103q�6   $
��Bold"�6-   $��14.667(�6?   .��6Q   Digite el número de factura:6o   �� 5&      -   5        $��
txbFactura��5&   .   $��
0,41,10,60q�6   $ Center=�6@   $
��Bold"�6W   $��14.667(�6i   6}   �� 5'      -	   5        $ 
btnFactura��5'      $��124,84,123,0q�6-   #���   6C   $
 Hand��6t   $ Obtener factura��6�   .��5(      �� $��22��6    $��20��6+   ��67   �� *
Foreground+ �� *FindAncestor+" ��	 5)      !� 5*      $

 Fill=�6*     appbar_list_hidden# �  5+      5-      5.      5/      50      51      52      