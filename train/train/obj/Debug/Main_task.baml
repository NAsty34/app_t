   M S B A M L   `   `   `  ����@  <train, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:traintrain  5   	       train.Main_task   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:train     5   	     � Title$  	Main_task��5   	   $	��536��6   $
��1021��6(    � 
ResizeMode$ NoResize=�65    � Icon$ /resourses/logo-smoll.png��6K   .��5
      �    okno#���   6    � RowDefinitions 5   
   �� 5      $
��143* �6   �� 5      $
��405* �6   .+�5   
   �� $��Center=�6    �� Orientation$ 
Horizontal=�60   $	��141��6I    
 header#���  6V   .+�5      �� $��/resourses/logo-full.png��6   $��68��66   $	��100��6B   $��10 0 5 0q�6N   �� 5      -   5        $	��til��5      $��40(�6#   $��Center=�61   $��68��6L   $��0 0 20 0q�6X   �� 5      $��Center=�6   $��Center=�66   .+�5      �� -   5         ��Name$ 	name_pole��5        vod#���  6/   �� 5      -   5        $ name_isp��5      #���  6.   $y�	Collapsed=�6L   �� 5      -   5         ��Name$ vib_isp��5      $y�	Collapsed=�6,   $	��250��6C   6O   5      5      �� 5   
   -   5        $	��soz��5      $ Vertical=�6    $��Center=�67   $��Right=�6R   $��0,0,10,0q�6n   $��81��6�   $	��130��6�   .+�5      �� -   5        $��
Выход��5      $��0 0 0 5q�6:     kopochki#���  6K   �� 5      -   5         ��Name$	 Pol��5      $��Пользователи��6"   $��0 0 0 5q�69   $y�	Collapsed=�6J   #���  6s   �� 5      -   5        $ add_z��5      $!��Создать задачу��6$   #���  6R   5      �� 5   
   -	   5        $ block��5      $��0 0 10 0q�6#   $9��3Время до блокировки: 30 минут��65   $��Right=�6Z   $��Bottom=�6v   #���  6�   �� 5   
   $ 
Horizontal=�6   $��1��6.   $
��Left=�6<   $	��Top=�6W   $��15q�6o   .+�5       �� $ ��Статус задачи ��6   #���  6.   �� 5!      -
   5        $
 stat��5!      $	��150��6%   61   5"      �� 5#      -   5         ��Name$ 	show_task��5#      
������ ��.  $��1��6�   $��0,50,0,0q�6�   ��5$      �� 5%      .R�5&      �� .+�5'      �� $��Center=�6@   $��20(�6]   ��6$   �� 	 �� Path$	 Title�6]   �� 5(      ��6$   �� $	 Status��� 5)      $ Vertical=�6%   .+�5*      �� $ 
Horizontal=�6)   .+�5+   "   �� $%��Имя исполнителя: ��6,   �� 5,   "   ��6,   �� $	 Executor.User�5-      �� 5.      $ 
Horizontal=�6)   .+�5/   "   �� $!��Имя менеджера: ��6,   �� 50   "   ��6,   �� $	 Executor.Manager.User�51      52      �� 53      $	 rem��6!   -   5        #���  53   .   $!��Удалить запись��6Q   $
��Left=�6j   $��15(�6�   $��Center=�6�   6�   54      55      57      58      5:      