   M S B A M L   `   `   `  ????M  IRentalPointCPKiOv2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:RentalPointCPKiOv2.windowRentalPointCPKiOv2.window  5   	   C&clr-namespace:RentalPointCPKiOv2.ModelRentalPointCPKiOv2.Model  5   	   +    %RentalPointCPKiOv2.window.AdminWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9local'clr-namespace:RentalPointCPKiOv2.window     5   	   8model&clr-namespace:RentalPointCPKiOv2.Model     5   	     ? Title$;  5ЦКПиО им. Менделеева: главная??5
   	   $	??500??6/   $	??800??6<   $	??400??5   	   $	??480??5   	   ???#FFFFFF$??Comic Sans MS)?5   	   .??5      ?  ? RowDefinitions 5   
   ?? 5      $??2* ?6   ?? 5      $	??11* ?6   .+?5   
   ? $??0??6   ???	#FF76E383 ? ColumnDefinitions 5      ?? 5      $	??10* ?6#   ?? 5      $??2* ?6#   .+?5      ??  ?? Orientation$ 
Horizontal=?6   $??0??62   .+?5      ?? -   5         ??Name$ 	userPhoto??5      $??10q?6D   ??6+   ?? *Image+6D   ?? 5      -   5         ??Name$ 
fullNameTb??5      $??10q?6J   $??Center=?6V   $??16(?6q   ??60   ?? *
FullName+6q   ?? 5      $??Должность:??6   $??
20 20 0 20q?6-   $??Center=?6A   $??16(?6\   $
??Bold"?6j   ?? 5      -   5        $ staffTb??5      $??Center=?6J   $??16(?6e   ??6-   ?? *
Roles.Role+6e   5      ?? 5       $ 
Horizontal=?6   $??1??62   $??Right=?6B   .+?5!      ?? -   5         ??Name$ 
quitAccBtn??5!      $??
Выйти??6-   $??0 0 20 0q?6=   $??Center=?6O   $??Center=?6l   ???#FFFFFF$??15(?6?   $
??Bold"?6?   $??0q?6?   $??	15 6 15 6q?6?    ? 	Resources 5#       ?? 
TargetType	 ?? Property
 ?? Value??%_   '??       ?? 5$      " ??6    .?5%      ?? 	 ?@??CornerRadius$
 10??6=   5&      5'      5(      5)      5*      5+      5,      