   M S B A M L   `   `   `  ????M  IRentalPointCPKiOv2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:RentalPointCPKiOv2.windowRentalPointCPKiOv2.window  5   	   C&clr-namespace:RentalPointCPKiOv2.ModelRentalPointCPKiOv2.Model  5   	   0    *RentalPointCPKiOv2.window.ListClientWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9local'clr-namespace:RentalPointCPKiOv2.window     5   	   8model&clr-namespace:RentalPointCPKiOv2.Model     5   	     ? Title$;  5ЦКПиО им. Менделеева: клиенты??5
   	   $	??450??6/   $	??800??6<   $
??1000??5   	   $	??600??5   	   .??5      ?  ? RowDefinitions 5   
   ?? 5      $	??10* ?6   ?? 5      $
??1.5* ?6   .+?5   
   ? $??0??6   .+?5      &   System.Windows.Controls.DataGrid  -   5          Name$ listClientDG??5         AutoGenerateColumns .     
IsReadOnly .    ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6[      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Код клиента??6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   ?? *
IdClient+  5      $ Фамилия??6)    6:   ?? *	Surname+  5      $ Имя??6)    66   ?? *	Firstname+  5      $ Отчество??6)    6;   ?? *
Middlename+  5      $! Номер паспорта??6)    6A   ?? *
Passport+  5      $ Дата рождения??6)    6@   ?? *BirtchDateSplit+  5      $ 
Адрес??6)    68   ?? *	Address+  5      $ 
Емайл??6)    68   ?? *Email+  5      $ Пароль??6)    69   ?? *
Password+5      5       ? 5!   
   $??1??6   .+?5"      ?? -   5        	 ??Name$	 regClientBtn??5"      $+??%Регистрация клиента??6+   $??10q?6I   $??Center=?6U   $??Center=?6r   ???	#FF76E383$??15(?6?   $
??Bold"?6?   $??0q?6?   $??	15 6 15 6q?6?   
 ? 	Resources
 5$       ?? 
TargetType ?? Property ?? Value??%_   '??       ?? 5%      " ??6   .?5&      ??  ?@??CornerRadius$ 10??69   5'      5(      5)      5*      5+      5,      