ChrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .MaleNames
	db 1 ; ????
	db 0 ; default option

.MaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
MalePlayerNameArray:
	db "LINK@"
	db "GREEN@"
	db "SHADE@"
	db "HERO@"
	db 2 ; displacement
	db " NAME @" ; title

ARIANameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .FemaleNames
	db 1 ; ????
	db 0 ; default option

.FemaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
FemalePlayerNameArray:
	db "ARIA@"
	db "RED@"
	db "CHICHI@"
	db "DIVA@"
	db 2 ; displacement
	db " NAME @" ; title
