   M S B A M L   `   `   `  ����E  ASIGEEA_App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:SIGEEA_App.User_Controls.Asociados"SIGEEA_App.User_Controls.Asociados  5      1    +SIGEEA_App.User_Controls.Asociados.uc_Cuota   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Blocal0clr-namespace:SIGEEA_App.User_Controls.Asociados     5      .��5	      � -   5        $��grdPrincipal��5	      $
��Left=�6   $	��692��6:     � ColumnDefinitions  5
   
   �� 5      .+�5   
   �� -   5         ��Name$ 
lblIdCuota��5   '   $y�	Collapsed=�6   $
��Left=�6�   $��24��6�   $��	19,23,0,0q�6�   $	��Top=�6�   $��85��6�   ��6;   �� *	CuotaId+ �� RelativeSource �� *FindAncestor+ �� AncestorType1   +SIGEEA_App.User_Controls.Asociados.uc_Cuota"  6�   �� 5   
   -   5         ��Name$ 	lblNombre��5      $
��Left=�6�   $��16��6�   $��10,7,0,0q�6�   $	��Top=�6�   $	��186��6�   $
��Bold"�6�   ��6'   �� *NombreCuota+ �� *FindAncestor+"  6�   �� 5   
   -   5        $ lblMonto��5      $
��Left=�6�   $��
201,10,0,0q�6�   $	��Top=�6�   $	��152��6�   $��16��6�   $
��Bold"�6�    �� TextAlignment$ Center=�6  ��6&   �� *
MontoCuota+ �� *FindAncestor+"  6  �� 5   
   -   5        $ lblRango��5      $
��Left=�6�   $��	358,7,0,0q�6�   $	��Top=�6�   $��16��6�   $	��198��6�   $
��Bold"�6�   $ Center=�6  ��6&   �� *Rango+ �� *FindAncestor+"  6  �� 5   
   -   5         ��Name$ btnSeleccionar��5      $��Detalles��6)   $
��Left=�6<   $��23��6W   $��	627,7,0,0q�6c   $	��Top=�6v   $��61��6�   $��9.333(�6�   $
��Bold"�6�   ���	#FF569B4B � ToolTip$ Ver deudores��6�    � Cursor$
 Hand��6  
�������6  �� 5   
   -   5        $ 	btnEditar��5      $��Editar��6$   $
��Left=�65   $��23��6P   $��	561,7,0,0q�6\   $	��Top=�6o   $��61��6�   $��9.333(�6�   $
��Bold"�6�   ���	#FF1C58DA$( "Editar la información de la cuota��6�   $
 Hand��6  
�������6  5      5      