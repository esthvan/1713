/* Uniform Metadata: Soviet, German, Italian */


/obj/item/clothing/under
	var/swapped = FALSE


/obj/item/clothing/under/doctor
	name = "doctor's uniform"
	desc = "A sterile, nicely pressed suit for doctors."
	icon_state = "ba_suit"
	item_state = "ba_suit"

// pirates

/obj/item/clothing/shoes/swat/wrappedboots
	name = "\improper wrapped boots"
	icon_state = "wrappedboots"
	force = WEAPON_FORCE_WEAK
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = FALSE)
	item_flags = NOSLIP
	siemens_coefficient = 0.6


// civs
/obj/item/clothing/under/civ4
	name = "Fancy Colonial Clothing"
	desc = "A set composed of a quality white linen shirt and black trousers."
	icon_state = "civuni4"
	item_state = "civuni4"
	worn_state = "civuni4"

/obj/item/clothing/under/civ1
	name = "Blue Colonial Clothing"
	desc = "A set composed of a light blue linen shirt and short trousers."
	icon_state = "civuni1"
	item_state = "civuni1"
	worn_state = "civuni1"

/obj/item/clothing/under/civ2
	name = "White Colonial Clothing"
	desc = "A set composed of a white linen shirt and black trousers."
	icon_state = "civuni2"
	item_state = "civuni2"
	worn_state = "civuni2"

/obj/item/clothing/under/civ3
	name = "Short-sleeved Colonial Clothing"
	desc = "A set composed of a light white linen shirt with short sleeves and black trousers."
	icon_state = "civuni3"
	item_state = "civuni3"
	worn_state = "civuni3"

/obj/item/clothing/under/civ5
	name = "Black Trousers"
	desc = "Black trousers. That's it."
	icon_state = "civuni5"
	item_state = "civuni5"
	worn_state = "civuni5"

/obj/item/clothing/under/civ6
	name = "Pink Colonial Clothing"
	desc = "A set composed of a pink linen shirt and black trousers."
	icon_state = "civuni6"
	item_state = "civuni6"
	worn_state = "civuni6"

/obj/item/clothing/head/kerchief
	name = "kerchief"
	icon_state = "kerchief"
	item_state = "kerchief"
	worn_state = "kerchief"
	desc = "A kerchief, won by women over the hair."

/obj/item/clothing/under/civf1
	name = "Dark dress"
	desc = "A dark dress, used by peasant women."
	icon_state = "dress1"
	item_state = "dress1"
	worn_state = "dress1"

/obj/item/clothing/under/civf2
	name = "Blue dress"
	desc = "A blue dress."
	icon_state = "dress2"
	item_state = "dress2"
	worn_state = "dress2"

/obj/item/clothing/under/civf3
	name = "Brown dress"
	desc = "A brown dress."
	icon_state = "dress3"
	item_state = "dress3"
	worn_state = "dress3"

// WEBBING - can hold everything but clothing

/obj/item/clothing/accessory/storage/webbing
	name = "bandolier"
	desc = "two cotton belts with small pouches for ammunition."
	icon_state = "bandolier"
	item_state = "bandolier"
	slots = 8

	New()
		..()
		hold.can_hold = list(/obj/item/ammo_casing/musketball,/obj/item/ammo_casing/musketball_pistol,/obj/item/ammo_casing/blunderbuss)

/obj/item/weapon/storage/backpack/quiver
	name = "quiver"
	desc = "The best way to carry a bow and arrows."
	icon = 'icons/obj/storage.dmi'
	icon_state = "quiver"
	item_state = "quiver"

/obj/item/weapon/storage/backpack/quiver/New()
		..()
		can_hold = list(/obj/item/ammo_casing/arrow, /obj/item/weapon/gun/projectile/bow)

/obj/item/weapon/storage/backpack/quiver/full
	..()
/obj/item/weapon/storage/backpack/quiver/full/New()
	..()
	can_hold = list(/obj/item/ammo_casing/arrow, /obj/item/weapon/gun/projectile/bow)
	new /obj/item/ammo_casing/arrow(src)
	new /obj/item/ammo_casing/arrow(src)
	new /obj/item/ammo_casing/arrow(src)
	new /obj/item/ammo_casing/arrow(src)
	new /obj/item/ammo_casing/arrow(src)
	new /obj/item/ammo_casing/arrow(src)

//pirate stuff

/obj/item/clothing/suit/storage/jacket/piratejacket1
	name = "black pirate jacket"
	desc = "A long black jacket."
	icon_state = "piratejacket1"
	item_state = "piratejacket1"
	worn_state = "piratejacket1"

/obj/item/clothing/suit/storage/jacket/piratejacket2
	name = "fancy pirate jacket"
	desc = "A fancy pirate jacket. This one is brown."
	icon_state = "piratejacket2"
	item_state = "piratejacket2"
	worn_state = "piratejacket2"

/obj/item/clothing/suit/storage/jacket/piratejacket3
	name = "blue pirate vest"
	desc = "A sleeveless pirate vest. This one is blue."
	icon_state = "piratejacket3"
	item_state = "piratejacket3"
	worn_state = "piratejacket3"

/obj/item/clothing/suit/storage/jacket/piratejacket4
	name = "black pirate vest"
	desc = "A sleeveless pirate vest. This one is black."
	icon_state = "piratejacket4"
	item_state = "piratejacket4"
	worn_state = "piratejacket4"

/obj/item/clothing/suit/storage/jacket/piratejacket5
	name = "fancy jacket"
	desc = "A fancy jacket. This one is red."
	icon_state = "piratejacket5"
	item_state = "piratejacket5"
	worn_state = "piratejacket5"

/obj/item/clothing/under/pirate1
	name = "black stripes clothing"
	desc = "A set of clothes with a black striped shirt."
	icon_state = "pirate1"
	item_state = "pirate1"
	worn_state = "pirate1"

/obj/item/clothing/under/pirate2
	name = "red stripes clothing"
	desc = "A set of clothes with a red striped shirt."
	icon_state = "pirate2"
	item_state = "pirate2"
	worn_state = "pirate2"

/obj/item/clothing/under/pirate3
	name = "blue stripes clothing"
	desc = "A set of clothes with a blue striped shirt."
	icon_state = "pirate3"
	item_state = "pirate3"
	worn_state = "pirate3"

/obj/item/clothing/under/pirate4
	name = "baggy clothing"
	desc = "A set of clothes with a white shirt and baggy trousers"
	icon_state = "pirate4"
	item_state = "pirate4"
	worn_state = "pirate4"

/obj/item/clothing/under/pirate5
	name = "sleeveless clothing"
	desc = "A set of clothes with a sleeveless shirt."
	icon_state = "pirate5"
	item_state = "pirate5"
	worn_state = "pirate5"

/obj/item/clothing/head/piratehat
	name = "Pirate hat"
	icon_state = "piratehat"
	item_state = "piratehat"

/obj/item/clothing/head/piratebandana1
	name = "Pirate bandana"
	icon_state = "piratebandana1"
	item_state = "piratebandana1"

/obj/item/clothing/shoes/sailorboots1
	name = "black sailor boots"
	desc = "Classic black sailor boots."
	icon_state = "sailorboots1"
	item_state = "sailorboots1"
	worn_state = "sailorboots1"
	force = WEAPON_FORCE_WEAK
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = FALSE)
	item_flags = NOSLIP
	siemens_coefficient = 0.6

/obj/item/clothing/shoes/sailorboots2
	name = "leather sailor boots"
	desc = "Classic leather sailor boots."
	icon_state = "sailorboots2"
	item_state = "sailorboots2"
	worn_state = "sailorboots2"
	force = WEAPON_FORCE_WEAK
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = FALSE)
	item_flags = NOSLIP
	siemens_coefficient = 0.6

/////////british stuff/////////

/obj/item/clothing/under/british_sailor1
	name = "british sailor clothes"
	desc = "A set of royal navy sailor clothes, with a white shirt and trousers."
	icon_state = "british_sailor1"
	item_state = "british_sailor1"
	worn_state = "british_sailor1"

/obj/item/clothing/under/british_sailor2
	name = "open british sailor clothes"
	desc = "A set of royal navy sailor clothes, with an unbuttoned white shirt and trousers."
	icon_state = "british_sailor2"
	item_state = "british_sailor2"
	worn_state = "british_sailor2"

/obj/item/clothing/under/british_sailor3
	name = "british sailor trousers"
	desc = "White british sailor trousers. For when it's too hot to wear a shirt."
	icon_state = "british_sailor3"
	item_state = "british_sailor3"
	worn_state = "british_sailor3"

/obj/item/clothing/under/british_sailor4
	name = "grey british sailor clothes"
	desc = "A set of royal navy sailor clothes, with a grey shirt and trousers."
	icon_state = "british_sailor4"
	item_state = "british_sailor4"
	worn_state = "british_sailor4"

/obj/item/clothing/head/tricorne_british
	name = "Royal Navy tricorne"
	desc = "A blue tricorne, used by the British Royal Navy."
	icon_state = "tricorne_british"
	item_state = "tricorne_british"

/obj/item/clothing/head/bicorne_british_soldier
	name = "British Army bicorne"
	desc = "A back bicorne, used by the British Army and Marines."
	icon_state = "tricorne_british_soldier"
	item_state = "tricorne_british_soldier"

/obj/item/clothing/accessory/armband/british_scarf
	name = "blue scarf"
	desc = "A blue scarf, used by Royal Navy sailors."
	icon_state = "british_scarf"
	item_state = "british_scarf"

/obj/item/clothing/suit/storage/jacket/british_captain
	name = "Royal Navy Captain jacket"
	desc = "A standard Captain jacket of the Royal Navy. Blue with golden buttons, white laces and golden cuffs."
	icon_state = "british_captain"
	item_state = "british_captain"
	worn_state = "british_captain"

/obj/item/clothing/suit/storage/jacket/british_officer
	name = "Royal Navy Officer jacket"
	desc = "A standard Officer jacket of the Royal Navy. Blue with golden buttons."
	icon_state = "british_officer"
	item_state = "british_officer"
	worn_state = "british_officer"

/obj/item/clothing/suit/storage/jacket/british_soldier
	name = "British soldier jacket"
	desc = "The british redcoat, used by the British Army and Marines."
	icon_state = "british_soldier_jacket"
	item_state = "british_soldier_jacket"
	worn_state = "british_soldier_jacket"

/////////indian stuff/////////

/obj/item/clothing/under/indian1
	name = "short indian clothing"
	desc = "A wrap of leather cloth, worn around the waist."
	icon_state = "indian1"
	item_state = "indian1"
	worn_state = "indian1"

/obj/item/clothing/under/indian2
	name = "long indian clothing"
	desc = "A wrap of leather cloth, worn around the waist."
	icon_state = "indian2"
	item_state = "indian2"
	worn_state = "indian2"

/obj/item/clothing/under/indian3
	name = "covering indian clothing"
	desc = "A wrap of leather cloth, worn around the waist and the chest."
	icon_state = "indian3"
	item_state = "indian3"
	worn_state = "indian3"

/obj/item/clothing/under/indianchief
	name = "indian chief clothing"
	desc = "An elaborate wrap of leather cloth, worn by tribal chiefs."
	icon_state = "indianchef"
	item_state = "indianchef"
	worn_state = "indiancgef"

/obj/item/clothing/under/indianshaman
	name = "indian shaman clothing"
	desc = "A white cloth, worn around the waist, painted with religious symbols."
	icon_state = "indianshaman"
	item_state = "indianshaman"
	worn_state = "indianshaman"

/obj/item/clothing/under/indianhuge
	name = "big leopard pelt"
	desc = "A massive leopard pelt."
	icon_state = "giant_leopard_pelt"
	item_state = "giant_leopard_pelt"
	worn_state = "giant_leopard_pelt"

/obj/item/clothing/accessory/armband/indian1
	name = "indian acessories"
	desc = "red face paint and indian necklaces."
	icon_state = "indian1"
	item_state = "indian1"

/obj/item/clothing/accessory/armband/indian2
	name = "indian acessories"
	desc = "Gold indian necklaces."
	icon_state = "indian2"
	item_state = "indian2"

/obj/item/clothing/accessory/armband/indianshaman
	name = "indian shaman bodypaint"
	desc = "Red and white bodypaint, worn by native shamans."
	icon_state = "indianshaman"
	item_state = "indianshaman"

/obj/item/clothing/head/skullmask
	name = "skull mask"
	desc = "A skull mask, used by native shamans."
	icon_state = "skull_mask"
	item_state = "skull_mask"

/obj/item/clothing/head/chief_hat
	name = "Chief hat"
	desc = "A hat made with withe feathers. Worn by tribal leaders."
	icon_state = "chief_hat"
	item_state = "chief_hat"
/////////Portuguese/////////
/obj/item/clothing/head/tricorne_portuguese
	name = "Portuguese Navy tricorne"
	desc = "A blue tricorne, used by the Portuguese Navy."
	icon_state = "tricorne_portuguese"
	item_state = "tricorne_portuguese"

/obj/item/clothing/suit/storage/jacket/portuguese_captain
	name = "Portuguese Captain jacket"
	desc = "A standard Captain jacket of the Portuguese Navy. Blue with golden buttons, white laces and golden cuffs."
	icon_state = "portuguese_captain"
	item_state = "portuguese_captain"
	worn_state = "portuguese_captain"

/obj/item/clothing/suit/storage/jacket/portuguese_officer
	name = "Portuguese Officer jacket"
	desc = "A standard Officer jacket of the Portuguese Navy. Blue with golden buttons."
	icon_state = "portuguese_officer"
	item_state = "portuguese_officer"
	worn_state = "portuguese_officer"

/obj/item/clothing/under/portuguese_sailor1
	name = "portuguese sailor clothes"
	desc = "A set of portuguese navy sailor clothes, with a white shirt and green trousers."
	icon_state = "portuguese_sailor1"
	item_state = "portuguese_sailor1"
	worn_state = "portuguese_sailor1"

/obj/item/clothing/under/portuguese_sailor2
	name = "open portuguese sailor clothes"
	desc = "A set of portuguese navy sailor clothes, with an unbuttoned white shirt and geen trousers."
	icon_state = "portuguese_sailor2"
	item_state = "portuguese_sailor2"
	worn_state = "portuguese_sailor2"

/obj/item/clothing/under/portuguese_sailor3
	name = "portuguese sailor trousers"
	desc = "Green portuguese sailor trousers. For when it's too hot to wear a shirt."
	icon_state = "portuguese_sailor3"
	item_state = "portuguese_sailor3"
	worn_state = "portuguese_sailor3"

/obj/item/clothing/under/portuguese_sailor4
	name = "portuguese sailor clothes with scarf"
	desc = "A set of portuguese navy sailor clothes, with a white shirt and green trousers. There's a green scarf attached."
	icon_state = "portuguese_sailor4"
	item_state = "portuguese_sailor4"
	worn_state = "portuguese_sailor4"


/////////Spanish/////////
/obj/item/clothing/head/tricorne_spanish
	name = "Spanish Navy tricorne"
	desc = "A yellow tricorne, used by the Spanish Navy."
	icon_state = "tricorne_spanish"
	item_state = "tricorne_spanish"

/obj/item/clothing/suit/storage/jacket/spanish_captain
	name = "Spanish Captain jacket"
	desc = "A standard Captain jacket of the Spanish Navy. Yellow with golden buttons, white laces and golden cuffs."
	icon_state = "spanish_captain"
	item_state = "spanish_captain"
	worn_state = "spanish_captain"

/obj/item/clothing/suit/storage/jacket/spanish_officer
	name = "Spanish Officer jacket"
	desc = "A standard Officer jacket of the Spanish Navy. Yellow with golden buttons."
	icon_state = "spanish_officer"
	item_state = "spanish_officer"
	worn_state = "spanish_officer"

/obj/item/clothing/under/spanish_sailor1
	name = "spanish sailor clothes"
	desc = "A set of spanish navy sailor clothes, with brown shirt and trousers."
	icon_state = "spanish_sailor1"
	item_state = "spanish_sailor1"
	worn_state = "spanish_sailor1"

/obj/item/clothing/under/spanish_sailor2
	name = "open spanish sailor clothes"
	desc = "A set of spanish navy sailor clothes, with an unbuttoned brown shirt and trousers."
	icon_state = "spanish_sailor2"
	item_state = "spanish_sailor2"
	worn_state = "spanish_sailor2"

/obj/item/clothing/under/spanish_sailor3
	name = "spanish sailor trousers"
	desc = "Brown spanish sailor trousers. For when it's too hot to wear a shirt."
	icon_state = "spanish_sailor3"
	item_state = "spanish_sailor3"
	worn_state = "spanish_sailor3"


/////////French/////////
/obj/item/clothing/head/tricorne_french
	name = "French Navy tricorne"
	desc = "A white and blue tricorne, used by the French Navy."
	icon_state = "tricorne_french"
	item_state = "tricorne_french"

/obj/item/clothing/suit/storage/jacket/french_captain
	name = "French Captain jacket"
	desc = "A standard Captain jacket of the French Navy. White with golden buttons, blue laces and golden cuffs."
	icon_state = "french_captain"
	item_state = "french_captain"
	worn_state = "french_captain"

/obj/item/clothing/suit/storage/jacket/french_officer
	name = "French Officer jacket"
	desc = "A standard Officer jacket of the French Navy. White with golden buttons."
	icon_state = "french_officer"
	item_state = "french_officer"
	worn_state = "french_officer"

/obj/item/clothing/under/french_officer
	name = "french officer clothes"
	desc = "A set of french officer clothes, with a light blue shirt and black trousers, both with golden buttons."
	icon_state = "french_officer"
	item_state = "french_officer"
	worn_state = "french_officer"

/obj/item/clothing/under/french_sailor1
	name = "french sailor clothes"
	desc = "A set of french navy sailor clothes, with light blue shirt and trousers."
	icon_state = "french_sailor1"
	item_state = "french_sailor1"
	worn_state = "french_sailor1"

/obj/item/clothing/under/french_sailor2
	name = "open french sailor clothes"
	desc = "A set of french navy sailor clothes, with an unbuttoned light blue shirt and trousers."
	icon_state = "french_sailor2"
	item_state = "french_sailor2"
	worn_state = "french_sailor2"

/obj/item/clothing/under/french_sailor3
	name = "french sailor trousers"
	desc = "Light blue french sailor trousers. For when it's too hot to wear a shirt."
	icon_state = "french_sailor3"
	item_state = "french_sailor3"
	worn_state = "french_sailor3"

/////////Dutch/////////
/obj/item/clothing/head/tricorne_dutch
	name = "United Provinces Navy tricorne"
	desc = "An orange tricorne, used by the United Provinces Navy."
	icon_state = "tricorne_dutch"
	item_state = "tricorne_dutch"

/obj/item/clothing/suit/storage/jacket/dutch_captain
	name = "United Provinces Captain jacket"
	desc = "A standard Captain jacket of the United Provinces Navy. Orange with golden buttons, white laces and golden cuffs."
	icon_state = "dutch_captain"
	item_state = "dutch_captain"
	worn_state = "dutch_captain"

/obj/item/clothing/suit/storage/jacket/dutch_officer
	name = "United Provinces Officer jacket"
	desc = "A standard Officer jacket of the United Provinces Navy. Orange with golden buttons."
	icon_state = "dutch_officer"
	item_state = "dutch_officer"
	worn_state = "dutch_officer"

/obj/item/clothing/under/dutch_sailor1
	name = "dutch sailor clothes"
	desc = "A set of dutch navy sailor clothes, with a white shirt and orange trousers."
	icon_state = "dutch_sailor1"
	item_state = "dutch_sailor1"
	worn_state = "dutch_sailor1"

/obj/item/clothing/under/dutch_sailor2
	name = "open dutch sailor clothes"
	desc = "A set of dutch navy sailor clothes, with an unbuttoned white shirt and orange trousers."
	icon_state = "dutch_sailor2"
	item_state = "dutch_sailor2"
	worn_state = "dutch_sailor2"

/obj/item/clothing/under/dutch_sailor3
	name = "dutch sailor trousers"
	desc = "Orange dutch sailor trousers. For when it's too hot to wear a shirt."
	icon_state = "dutch_sailor3"
	item_state = "dutch_sailor3"
	worn_state = "dutch_sailor3"
/////////GENERIC/////////
/obj/item/clothing/head/red_beret
	name = "red sailor beret"
	desc = "A red berret."
	icon_state = "redberet"
	item_state = "redberet"

/obj/item/clothing/head/blue_beret
	name = "blue sailor beret"
	desc = "A red berret."
	icon_state = "blueberet"
	item_state = "blueberet"

/obj/item/clothing/under/generic_officer
	name = "officer clothes"
	desc = "A set of officer clothes, with a white shirt and black trousers, both with golden buttons."
	icon_state = "officer"
	item_state = "officer"
	worn_state = "officer"

/obj/item/clothing/head/tarred_hat
	name = "tarred hat"
	desc = "A tarred hat, commonly used by sailors."
	icon_state = "tarred_hat"
	item_state = "tarred_hat"

/obj/item/clothing/head/strawhat
	name = "straw hat"
	icon_state = "boater_hat"
	desc = "A straw hat, commonly used by sailors."

/obj/item/clothing/head/tricorne_black
	name = "black tricorne"
	desc = "A black tricorne. In fashion."
	icon_state = "tricorne_black"
	item_state = "tricorne_black"

/obj/item/clothing/shoes/blackboots1
	name = "black sailor boots"
	desc = "Classic black boots."
	icon_state = "sailorboots1"
	item_state = "sailorboots1"
	worn_state = "sailorboots1"
	force = WEAPON_FORCE_WEAK
	armor = list(melee = 600, bullet = 50, laser = 50,energy = 25, bomb = 50, bio = 10, rad = FALSE)
	item_flags = NOSLIP
	siemens_coefficient = 0.6

/obj/item/clothing/shoes/leatherboots1
	name = "leather boots"
	desc = "Classic leather boots."
	icon_state = "sailorboots2"
	item_state = "sailorboots2"
	worn_state = "sailorboots2"
	force = WEAPON_FORCE_WEAK
	armor = list(melee = 60, bullet = 50, laser = 50,energy = 25, bomb = 50, bio = 10, rad = FALSE)
	item_flags = NOSLIP
	siemens_coefficient = 0.6