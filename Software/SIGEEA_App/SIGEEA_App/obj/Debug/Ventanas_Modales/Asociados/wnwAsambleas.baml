   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=1.2.4.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   E ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados%SIGEEA_App.Ventanas_Modales.Asociados 5   	   8   2SIGEEA_App.Ventanas_Modales.Asociados.wnwAsambleas   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   Elocal3clr-namespace:SIGEEA_App.Ventanas_Modales.Asociados     5   	     � Title$  	Asambleas��5	   	   $��425.532��6   $��772.553��6,    � 
ResizeMode$ NoResize=�6<    � WindowStartupLocation$ CenterScreen=�6R   .��5
      �� ���#83919F$��2q�6#   ._�5   
   � .+�5      � -   5        $��grdPrincipal��5      $y�Visible=�6'   .+�5      �� -   5         ��Name$ btnRegistrar��5      $��Registrar nueva asamblea��6/   $
��Left=�6R   $��62��6m   $��
235,48,0,0q�6y   $	��Top=�6�   $	��347��6�   6�   �� 5      -   5        $ btnAdministrar��5      $��Administrar asambleas��61   $
��Left=�6Q   $��62��6l   $��235,221,0,0q�6x   $	��Top=�6�   $	��347��6�   6�   5      � 5      -   5        $��grdRegistrar��5      $y�	Collapsed=�6'   .+�5      �� -   5         ��Name$ txbObservaciones��5      " �� VerticalScrollBarVisibility$ Visible=�64   $
��Left=�6Z    �� 	MaxLength$	 100��6u   $	��111��6�   $��273,270,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��271��6�   $
��Bold"�6�   �� 5      -   5        $ 
txbNumActa��5      
 � Tag$ 4��6.   $
��Left=�66   $��53��6Q   	 �� TextAlignment$	 Center=�6]   $��273,186,0,0q�6t   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��271��6�   $
��Bold"�6�   $��24(�6�   �� 5      -   5        
 ��Name$
 lblFija1��5      $��Número de acta��6*   $
��Left=�6C   $��40��6^   $��
40,186,0,0q�6j   $	��Top=�6~   $	��140��6�   $��18(�6�   �� 5      -   5        $
 lblFija2��5      $��Observaciones��6*   $
��Left=�6B   $��35��6]   $��
40,270,0,0q�6i   $	��Top=�6}   $	��140��6�   $��18(�6�    J� RenderTransformOrigin$ 0.538,1.588&�6�   �� 5      -	   5        $
 lblFija0��5      $��Tipo de asamblea��6*   $
��Left=�6E   $��37��6`   $��
40,107,0,0q�6l   $	��Top=�6�   $	��188��6�   $��18(�6�   �� 5      -
   5         ��Name$ cmbTipoAsamblea��5      $
��Left=�64   $��40��6O   $��273,107,0,0q�6[   $	��Top=�6p   $	��271��6�   $
��Bold"�6�   $��18(�6�   .@�5      �� .��6#   	Ordinaria6.   �� 5      .��6#   Extraordinaria63   5      �� 5      -   5        $ 
btnGuardar��5      $��602,233,51,69q�6-      MetroCircleButtonStyle#���   6D    � Cursor$
 Hand��6u    � ToolTip$ Guardar��6�   $ 0.5,0.5&�6�   .��5      �� $��51��6    $��46��6+   ��67   �� *
Foreground+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �� J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6*     appbar_save !� Visual# �  5      5       5!      �� 5"      -   5        $ btnAtras��5"      $��602,107,51,195q�6+   #���   6C   $
 Hand��6t   $ Atrás��6�   $ 0.5,0.5&�6�   .��5#      �� $��49��6    $��50��6+   ��67   �� *
Foreground+ �� *FindAncestor+" �� 5$      !� 5%      $
 Fill=�6*     appbar_arrow_left# �  5&      5(      5)      �� 5*      -   5        $
 lblFija3��5*      $��Fecha de la asamblea��6*   $
��Left=�6I   $��37��6d   $��	40,23,0,0q�6p   $	��Top=�6�   $	��188��6�   $��18(�6�   (  "System.Windows.Controls.DatePicker  5+      -   5        $��dtpFecha��5+      $
��Left=�6-   $��
273,23,0,0q�6H   $	��Top=�6\   $	��271��6t   $��37��6�   5-      � 5.      -   5        $��	grdListar��5.      $y�	Collapsed=�6$   .+�5/      �� $��Visible=�6   .��50      �� -   5        $��stpAsambleas��50   !   $
��Left=�65   $	��304��6P   $��	58,57,0,0q�6]   $	��Top=�6p   $	��641��6�   ���	#FFD1CCCC6�   51      52      53      54      55      