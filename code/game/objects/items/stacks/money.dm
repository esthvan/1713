//spanish money was the world currency in the early 18th century. 1 doubloon = 2 escudos = 4 dollars = 32 reales

/obj/item/stack/money
	name = "gold coins"
	desc = "Shiny gold coins."
	singular_name = "coin"
	icon_state = "goldcoin_pile"
	flags = CONDUCT
	force = WEAPON_FORCE_HARMLESS
	throwforce = WEAPON_FORCE_HARMLESS
	throw_speed = 8
	throw_range = 10
	matter = list(DEFAULT_WALL_MATERIAL = 1875)
	amount = 10
	max_amount = 500
	attack_verb = list("hit")
	w_class = 2.0 // fits in pockets
	value = 1
	real_value = 1

/obj/item/stack/money/real
	name = "spanish reales"
	desc = "A small silver coin."
	singular_name = "real"
	icon_state = "silvercoin_pile"
	amount = 50
	value = 1

/obj/item/stack/money/dollar
	name = "spanish dollars"
	desc = "A silver coin, also called piece of eight, worth 8 reales."
	singular_name = "dollar"
	icon_state = "silvercoin_pile"
	amount = 1
	value = 8

/obj/item/stack/money/escudo
	name = "spanish escudos"
	desc = "A gold coin. Worth 16 reales."
	singular_name = "escudo"
	icon_state = "goldcoin_pile"
	amount = 1
	value = 16

/obj/item/stack/money/doubloon
	name = "spanish doubloons"
	desc = "A large gold coin, the largest in circulation. Worth 32 reales."
	singular_name = "doubloon"
	icon_state = "goldcoin_pile"
	amount = 1
	value = 32

/obj/item/stack/money/goldnugget
	name = "gold nuggets"
	desc = "A shiny gold nugget."
	singular_name = "nugget"
	icon_state = "goldnugget"
	force = WEAPON_FORCE_WEAK
	throwforce = WEAPON_FORCE_NORMAL
	throw_speed = 5
	throw_range = 7
	amount = 1
	max_amount = 3
	value = 96

/obj/item/stack/money/goldvaluables
	name = "gold valuables"
	desc = "A bunch of valuables."
	singular_name = "gold valuable"
	icon_state = "goldstuff1"
	force = WEAPON_FORCE_WEAK
	throwforce = WEAPON_FORCE_NORMAL
	throw_speed = 5
	throw_range = 7
	amount = 1
	max_amount = 5
	value = 48

/obj/item/stack/money/goldnugget/New()
	..()
	icon_state = "goldstuff[rand(1,3)]"


/obj/item/stack/money/gems
	name = "gems"
	desc = "Assorted precious gems."
	singular_name = "gem"
	icon_state = "gem1"
	force = WEAPON_FORCE_WEAK
	throwforce = WEAPON_FORCE_WEAK
	throw_speed = 5
	throw_range = 7
	amount = 1
	max_amount = 8
	value = 35

/obj/item/stack/money/gems/New()
	..()
	icon_state = "gem[rand(1,2)]"

/obj/item/stack/money/pearls
	name = "pearls"
	desc = "a bunch of pearls. Looks valuable!"
	singular_name = "nugget"
	icon_state = "pearls1"
	force = WEAPON_FORCE_HARMLESS
	throwforce = WEAPON_FORCE_HARMLESS
	throw_speed = 4
	throw_range = 8
	amount = 1
	max_amount = 8
	value = 45

/obj/item/stack/money/pearls/New()
	..()
	icon_state = "pearls[rand(1,2)]"