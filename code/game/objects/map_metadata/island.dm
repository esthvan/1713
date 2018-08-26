#define NO_WINNER "No faction has captured the enemy's base."
/obj/map_metadata/island
	ID = MAP_ISLAND
	title = "Skull Island (125x125x2)"
//	lobby_icon_state = "pirates"
	caribbean_blocking_area_types = list(/area/caribbean/no_mans_land/invisible_wall/)
	respawn_delay = 60
	squad_spawn_locations = FALSE
	reinforcements = FALSE
	var/do_once_activations = TRUE
//	min_autobalance_players = 90
	faction_organization = list(
		BRITISH,
		PIRATES)
	available_subfactions = list(
		)
	roundend_condition_sides = list(
		list(BRITISH) = /area/caribbean/british/ship/,
		list(PIRATES) = /area/caribbean/pirates/land/inside
		)
	front = "Pacific"
	faction_distribution_coeffs = list(BRITISH = 0.5, PIRATES = 0.5)
	//songs = list()
	meme = TRUE
	battle_name = "Skull Island"
	mission_start_message = "<font size=4>All factions have <b>5 minutes</b> to prepare before the combat starts.</font>"
	var/done = FALSE
obj/map_metadata/island/job_enabled_specialcheck(var/datum/job/J)
	if (istype(J, /datum/job/pirates/battleroyale))
		. = FALSE
	else if (istype(J, /datum/job/indians/tribes))
		. = FALSE
	else
		. = TRUE
/obj/map_metadata/island/faction2_can_cross_blocks()
	return (processes.ticker.playtime_elapsed >= 3000 || admin_ended_all_grace_periods)

/obj/map_metadata/island/faction1_can_cross_blocks()
	return (processes.ticker.playtime_elapsed >= 3000 || admin_ended_all_grace_periods)

/obj/map_metadata/island/reinforcements_ready()
	return (faction2_can_cross_blocks() && faction1_can_cross_blocks())

/obj/map_metadata/island/tick()
	..()
	if (processes.ticker.playtime_elapsed >= 3600 || admin_ended_all_grace_periods)
		for (var/obj/effect/area_teleporter/AT)
			AT.Activated()
		do_once_activations = FALSE

#undef NO_WINNER