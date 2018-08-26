/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////BRITISH///////////////////////////////////////////////////////

/datum/job/british
	faction = "Station"

/datum/job/british/give_random_name(var/mob/living/carbon/human/H)
	H.name = H.species.get_random_english_name(H.gender)
	H.real_name = H.name

/datum/job/british/captain
	title = "Royal Navy Captain"
	en_meaning = "Ship Captain"
	rank_abbreviation = "Captain"
	head_position = TRUE
	selection_color = "#2d2d63"
	spawn_location = "JoinLateRNCap"
	is_officer = TRUE
	is_commander = TRUE
	whitelisted = TRUE
	SL_check_independent = TRUE

	// AUTOBALANCE
	min_positions = 1
	max_positions = 1

/datum/job/british/captain/equip(var/mob/living/carbon/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sailorboots1(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/generic_officer(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/british_captain(H), slot_wear_suit)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/tricorne_british(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/scope/adjustable/binoculars(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/spadroon(H), slot_belt)
	world << "<b><big>[H.real_name] is the Captain of the Royal Navy ship!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, the highest ranking officer present. Your job is to command the ship.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)

	return TRUE

/datum/job/british/qm
	title = "Royal Navy Quartermaster"
	en_meaning = "2IC / Supplies Officer"
	rank_abbreviation = "Quartermaster"
	selection_color = "#2d2d63"
	spawn_location = "JoinLateRNQM"
	is_commander = TRUE
	is_officer = TRUE
	whitelisted = TRUE
	SL_check_independent = TRUE

	// AUTOBALANCE
	min_positions = 1
	max_positions = 1

/datum/job/british/qm/equip(var/mob/living/carbon/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sailorboots1(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/generic_officer(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/british_officer(H), slot_wear_suit)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/tricorne_british(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/spadroon(H), slot_belt)
	world << "<b><big>[H.real_name] is the Quartermaster of the Royal Navy ship!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, an officer in charge of the ship's supply allocation. You are also the second in command, after the <b>Captain</b>.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)

	return TRUE

/datum/job/british/boatswain
	title = "Royal Navy Boatswain"
	en_meaning = "Head of Personnel Officer"
	rank_abbreviation = "Boatswain"
	head_position = TRUE
	selection_color = "#2d2d63"
	spawn_location = "JoinLateRNBoatswain"
	whitelisted = TRUE
	SL_check_independent = TRUE
	is_commander = TRUE
	is_officer = TRUE

	// AUTOBALANCE
	min_positions = 1
	max_positions = 1

/datum/job/british/boatswain/equip(var/mob/living/carbon/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sailorboots1(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/generic_officer(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/british_officer(H), slot_wear_suit)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/tricorne_british(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/scope/adjustable/binoculars(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/spadroon(H), slot_belt)
	world << "<b><big>[H.real_name] is the Boatswain of the Royal Navy ship!</big></b>"
	H.add_note("Role", "You are a <b>[title]</b>, an officer in charge of the crew and their job allocation. The whole ship relies on you!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/british/midshipman
	title = "Royal Navy Midshipman"
	en_meaning = "Petty Officer"
	rank_abbreviation = "Midshipman"
	selection_color = "#2d2d63"
	spawn_location = "JoinLateRNMidshipman"
	is_officer = TRUE
	SL_check_independent = TRUE

	// AUTOBALANCE
	min_positions = 1
	max_positions = 10

/datum/job/british/midshipman/equip(var/mob/living/carbon/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sailorboots1(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor1(H), slot_w_uniform)
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/british_officer(H), slot_wear_suit)

	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/scope/adjustable/binoculars(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/spadroon(H), slot_belt)
	H.add_note("Role", "You are a <b>[title]</b>, a petty officer in the ship. Organize your group according to the <b>Boatswain</b>'s orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_HIGH)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/british/surgeon
	title = "Royal Navy Surgeon"
	en_meaning = "Medic"
	rank_abbreviation = "Surgeon"
	selection_color = "#2d2d63"
	spawn_location = "JoinLateRNSurgeon"
	SL_check_independent = TRUE

	// AUTOBALANCE
	min_positions = 1
	max_positions = 10

/datum/job/british/surgeon/equip(var/mob/living/carbon/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sailorboots1(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor1(H), slot_w_uniform) // for now
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/powdered_wig(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/surgery(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/doctor_handbook(H), slot_l_store)

	H.add_note("Role", "You are a <b>[title]</b>, the most qualified medic present, and you are in charge of keeping the sailors healthy.")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW) //muskets
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_NORMAL) //not used
	H.setStat("medical", STAT_VERY_HIGH)


	return TRUE

/datum/job/british/carpenter
	title = "Royal Navy Carpenter"
	en_meaning = "Carpenter"
	rank_abbreviation = "Carpenter"
	selection_color = "#2d2d63"
	spawn_location = "JoinLateRNCarpenter"
	SL_check_independent = TRUE

	// AUTOBALANCE
	min_positions = 1
	max_positions = 10

/datum/job/british/carpenter/equip(var/mob/living/carbon/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sailorboots2(H), slot_shoes)

//clothes
	var/randcloth = rand(1,4)
	if (randcloth == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor1(H), slot_w_uniform)
	else if (randcloth == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor2(H), slot_w_uniform)
	else if (randcloth == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor3(H), slot_w_uniform)
	else if (randcloth == 4)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor4(H), slot_w_uniform)

	var/obj/item/clothing/accessory/armband/british_scarf/british_scarf_a = new /obj/item/clothing/accessory/armband/british_scarf(null)
	var/obj/item/clothing/under/uniform = H.w_uniform
	uniform.attackby(british_scarf_a, H)

	H.equip_to_slot_or_del(new 	/obj/item/weapon/material/hatchet(H), slot_belt)
	H.equip_to_slot_or_del(new 	/obj/item/weapon/wrench(H), slot_l_store)
	H.add_note("Role", "You are a <b>[title]</b>, in charge of keeping the ship in good condition. Work with the <b>Quartermaster</b> to ensure everyting is in good conditions!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_HIGH)
	H.setStat("rifle", STAT_MEDIUM_LOW) //muskets
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_NORMAL) //not used
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE

/datum/job/british/cook
	title = "Royal Navy Cook"
	en_meaning = "Cook"
	rank_abbreviation = "Cook"
	selection_color = "#2d2d63"
	spawn_location = "JoinLateRNCook"
	SL_check_independent = TRUE

	// AUTOBALANCE
	min_positions = 1
	max_positions = 10

/datum/job/british/cook/equip(var/mob/living/carbon/human/H)
	if (!H)	return FALSE
//jacket
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/chef/classic(H), slot_wear_suit)

//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sailorboots2(H), slot_shoes)

//clothes
	var/randcloth = rand(1,4)
	if (randcloth == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor1(H), slot_w_uniform)
	else if (randcloth == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor2(H), slot_w_uniform)
	else if (randcloth == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor3(H), slot_w_uniform)
	else if (randcloth == 4)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor4(H), slot_w_uniform)

	var/obj/item/clothing/accessory/armband/british_scarf/british_scarf_a = new /obj/item/clothing/accessory/armband/british_scarf(null)
	var/obj/item/clothing/under/uniform = H.w_uniform
	uniform.attackby(british_scarf_a, H)
	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/smallsword(H), slot_belt)

	H.add_note("Role", "You are the cook of the ship. Feed the whole crew according to the <b>Quartermaster</b>'s orders!")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW) //muskets
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_LOW) //not used
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_NORMAL) //not used
	H.setStat("medical", STAT_MEDIUM_LOW)





////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/job/british/seaman
	title = "Royal Navy Seaman"
	en_meaning = "Seaman"
	rank_abbreviation = ""
	selection_color = "#2d2d63"
	spawn_location = "JoinLateRN"
	SL_check_independent = TRUE

	// AUTOBALANCE
	min_positions = 6
	max_positions = 200

/datum/job/british/seaman/equip(var/mob/living/carbon/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sailorboots2(H), slot_shoes)

//clothes
	var/randcloth = rand(1,4)
	if (randcloth == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor1(H), slot_w_uniform)
	else if (randcloth == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor2(H), slot_w_uniform)
	else if (randcloth == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor3(H), slot_w_uniform)
	else if (randcloth == 4)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/british_sailor4(H), slot_w_uniform)

	var/obj/item/clothing/accessory/armband/british_scarf/british_scarf_a = new /obj/item/clothing/accessory/armband/british_scarf(null)
	var/obj/item/clothing/under/uniform = H.w_uniform
	uniform.attackby(british_scarf_a, H)
//head
	if (prob(70))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/tarred_hat(H), slot_head)
	var/randweapon = rand(1,2)
	if (randweapon == 1)
		H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/smallsword(H), slot_belt)
	else if (randweapon == 2)
		H.equip_to_slot_or_del(new 	/obj/item/weapon/material/harpoon(H), slot_belt)

	H.add_note("Role", "You are a <b>[title]</b>, a simple seaman employed by the Royal Navy. Follow your Captain's orders!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW) //muskets
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL) //not used
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL) //not used
	H.setStat("medical", STAT_MEDIUM_LOW)


	return TRUE