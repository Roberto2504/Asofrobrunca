   M S B A M L   `   `   `  ����  
SIGEEA_App$    SIGEEA_App.Pantallas.Login_Pag   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  Inicio de sesión��5   	   $��269.91��6"    � AllowsTransparency . $��517.59��6M    � 
ResizeMode$ NoResize=�6]    � WindowStartupLocation$ CenterScreen=�6s    � WindowStyle$
 None=�6�    � Icon$, &/SIGEEA_App;component/Icono FUNDER.ico��6�   ��6�   Z�  � 	Resources 5         	DarkColor �� Color��%/   &	        �� 5   
   $ #551f11��5      5      .��5      � $��	-2,-2,2,2q�6   .+�5   
   �� $
��Left=�6   $	��207��6/   $��	77,32,0,0q�6<   $	��Top=�6O   $	��408��6g   ��5      �� 5       �� ImageSource$. (/SIGEEA_App;component/Imagenes/LOGIN.png��6   	 J� Effect	 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      
   ShadowDepth$
 8Q�6#      RenderingBias$ Quality=�63      Opacity$	 0.7Q�6K   5      �� 5   
   $
��Left=�6   $	��243��6,   $��	37,27,0,0q�69   $	��Top=�6L   $	��481��6d   	 5        5      $
 8Q�6#   $ Quality=�63      
BlurRadius$ 5Q�6K   $	 0.7Q�6Z   .+�5      F�  �� Left$ 57.003��6   F����        � ���    �     ��р�� ��р��    �        �        	
�������
���   �$	��194��5        �� Stretch$
 Fill=�6$   $��407.994��63   $��2��5!       J� RenderTransformOrigin$ 0.5,0.5&�6   
 �� Top$ 42��6<   z�5"      V� 5#      .~�5$      ��  �� ScaleY$ -1Q�6)    �� ScaleX$ 1Q�65   �� 5%       �� AngleY$ 0Q�6(    �� AngleX$ 0Q�63   �� 5&       �� Angle$ 0Q�6*   T� 5'      5(      5*      �� 5+      -   5         ��Name$ image��5+      $��93��6#   $	 115��6/   $	��156��6@   $4��./SIGEEA_App;component/Imagenes/Costa_Fresh.png��6L   $ 53��6�   5,      �� 5-   
   -   5         ��Name$ 
lblUsuario��5-      $��Usuario��6$   $
��Left=�66   $��
274,73,0,0q�6Q   $	��Top=�6e   $��22(�6}   $
��Bold"�6�   $	��178��6�   �� 5.   
   -   5        $ lblClave��5.      $��Contraseña��6"   $
��Left=�67   $��278,134,0,0q�6R   $	��Top=�6g   $��22(�6   $
��Bold"�6�   �� 5/   
   -   5         ��Name$ 
txbUsuario��5/      $
��Left=�6&   $��33��6A   $��278,106,0,0q�6M    �� TextWrapping$
 Wrap=�6b   $	��Top=�6v   $	��207��6�   $��20(�6�   $
��Bold"�6�   $�� ��6�   G� 50   
   -   5         G�Name$ psbClave��50      $
��Left=�6(   $��35��6C   $��278,176,0,0q�6O   $	��Top=�6d   $	��207��6|   $
��Bold"�6�   $��20(�6�   �� 52   
   -   5         ��Name$ btnIngresar��52      $��50��6&   $��50��61   $��435,211,33,9q�6=     MetroCircleButtonStyle#���  6S    � Cursor$
 Hand��6�    �� 	IsDefault . .��53      �� $��20��6   $��20��6#   ��6/   �� *
Foreground+ �� RelativeSource �� *FindAncestor+  �� AncestorType"  ��! J� OpacityMask! 54      !� 55      " j� Stretch$
" Fill=�6"     appbar_check# !� Visual## �  56   
   58      59      �� 5;   
   -   5        $ 	btnCerrar��5;      $��50��6$   $��50��6/   $��274,211,194,9q�6;   #���  6R   $
 Hand��6�   $ �� IsCancel$ . .��5<      �� $��20��6   $��20��6#   ��6/   �� *
Foreground+ �� *FindAncestor+"  ��! 5=      !� 5>      $
" Fill=�6"     appbar_close## �  5?   
   5A      5B      �� 5C   
   -   5        $ image1��5C      $
��Left=�6    $��35��6;   $��	88,36,0,0q�6G   $	��Top=�6Z   $	��240��6r   $/��)/SIGEEA_App;component/Imagenes/LOGIN1.png��6~   �� 5D   
   $��Center=�6   $��328,41,62,199q�61   $
��Wrap=�6H   $��Center=�6\   
�������$��Segoe UI Light)�6�   $��22(�6�   $
��Bold"�6�   $	��128��6�   $��Iniciar sesión��6�   �� 5E   
   
�������$
��Left=�6!   $��28��6<   $��
322,39,0,0q�6H   $	��Top=�6\   $��1��6t   5G      5I      