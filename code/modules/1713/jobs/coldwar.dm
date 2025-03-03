
/datum/job/vietnamese
	faction = "Human"

/datum/job/vietnamese/give_random_name(var/mob/living/human/H)
	H.name = H.species.get_random_vietnamese_name(H.gender)
	H.real_name = H.name
	var/new_hair = "Black"
	var/hex_hair = hair_colors[new_hair]
	H.r_hair = hex2num(copytext(hex_hair, 2, 4))
	H.g_hair = hex2num(copytext(hex_hair, 4, 6))
	H.b_hair = hex2num(copytext(hex_hair, 6, 8))
	H.r_facial = hex2num(copytext(hex_hair, 2, 4))
	H.g_facial = hex2num(copytext(hex_hair, 4, 6))
	H.b_facial = hex2num(copytext(hex_hair, 6, 8))

/datum/job/vietnamese/vietcong_officer
	title = "Si Quan"
	en_meaning = "Vietcong Officer"
	rank_abbreviation = "Si Quan"

	spawn_location = "JoinLateJPCap"
	is_vietcong = TRUE
	is_coldwar = TRUE
	is_officer = TRUE
	whitelisted = TRUE

	min_positions = 2
	max_positions = 8

/datum/job/vietnamese/vietcong_officer/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/nlfsandal1(H), slot_shoes)
	else if (prob(40))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/nlfsandal2(H), slot_shoes)

//clothes
	var/pickuni = rand(1,5)
	if (pickuni == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf1(H), slot_w_uniform)
	if (pickuni == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf2(H), slot_w_uniform)
	if (pickuni == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf3(H), slot_w_uniform)
	if (pickuni == 4)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf4(H), slot_w_uniform)
	if (pickuni == 5)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf5(H), slot_w_uniform)

//head
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/rice_hat(H), slot_head)
	else if (prob(20))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat/khaki(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat(H), slot_head)
//back
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/m1892(H), slot_l_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/luger(H), slot_l_hand)

	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/vc_officer(H), slot_belt)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(30))
			if (prob(50))
				H.equip_to_slot_or_del(new /obj/item/flashlight/japflashlight(H), slot_wear_id)
			else
				H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight_alt(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	var/obj/item/clothing/accessory/armband/red_scarf/rscarf = new /obj/item/clothing/accessory/armband/red_scarf(null)
	uniform.attackby(rscarf, H)
	give_random_name(H)
	H.s_tone = rand(-32,-24)
	if (H.f_style != "Shaved" && H.f_style != "Short Facial Hair" && H.f_style != "Goatee")
		H.f_style = pick("Shaved","Short Facial Hair","Goatee")

	H.add_note("Role", "You are a <b>[title]</b>, lead the Viet Cong in the fight against the imperialists!")
	H.add_note("Vietcong Mechanics", "- Press <b>C</b> to place a booby trap while holding a grenade.<br><br>- The tunnel entrances connecting to your underground compound are only accessible by fellow Vietnamese and american commandos. Americans won't be able to crawl inside.<br><br>- Drag yourself to a Jungle Tree to hide on it.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	return TRUE

/datum/job/vietnamese/vietcong_doctor
	title = "Bac Si"
	en_meaning = "Vietcong Medic"
	rank_abbreviation = "Bac Si"
	can_be_female = TRUE
	spawn_location = "JoinLateJP"

	is_medic = TRUE
	is_coldwar = TRUE
	is_vietcong = TRUE

	min_positions = 3
	max_positions = 18

/datum/job/vietnamese/vietcong_doctor/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/nlfsandal1(H), slot_shoes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/nlfsandal2(H), slot_shoes)

//clothes
	var/pickuni = rand(1,5)
	if (pickuni == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf1(H), slot_w_uniform)
	if (pickuni == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf2(H), slot_w_uniform)
	if (pickuni == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf3(H), slot_w_uniform)
	if (pickuni == 4)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf4(H), slot_w_uniform)
	if (pickuni == 5)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf5(H), slot_w_uniform)

//head
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/rice_hat(H), slot_head)
	else if (prob(20))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat/khaki(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat(H), slot_head)

//back
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/m1892(H), slot_l_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/luger(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/medical/full_vc(H), slot_belt)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(30))
			if (prob(50))
				H.equip_to_slot_or_del(new /obj/item/flashlight/japflashlight(H), slot_wear_id)
			else
				H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight_alt(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/pickscarf = rand(1,2)
	if (pickscarf == 1)
		var/obj/item/clothing/accessory/armband/khan_ran/black = new /obj/item/clothing/accessory/armband/khan_ran/black(null)
		uniform.attackby(black, H)
	else if (pickscarf == 2)
		var/obj/item/clothing/accessory/armband/khan_ran/blue = new /obj/item/clothing/accessory/armband/khan_ran/blue(null)
		uniform.attackby(blue, H)
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	H.s_tone = rand(-32,-24)
	if (H.f_style != "Shaved" && H.f_style != "Short Facial Hair" && H.f_style != "Goatee")
		H.f_style = pick("Shaved","Short Facial Hair","Goatee")

	H.add_note("Role", "You are a <b>[title]</b>. Keep your comrades healthy!")
	H.add_note("Vietcong Mechanics", "- Press <b>C</b> to place a booby trap while holding a grenade.<br><br>- The tunnel entrances connecting to your underground compound are only accessible by fellow Vietnamese and american commandos. Americans won't be able to crawl inside.<br><br>- Drag yourself to a Jungle Tree to hide on it.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_HIGH)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	return TRUE

/datum/job/vietnamese/vietcong_comms
	title = "Tuy Phai"
	en_meaning = "Vietcong Courer/Runner"
	rank_abbreviation = "Tuy Phai"

	spawn_location = "JoinLateJP"

	is_coldwar = TRUE
	uses_squads = TRUE
	is_squad_leader = TRUE
	is_vietcong = TRUE
	can_be_female = TRUE

	min_positions = 2
	max_positions = 12

/datum/job/vietnamese/vietcong_comms/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/nlfsandal1(H), slot_shoes)
	else if (prob(40))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/nlfsandal2(H), slot_shoes)

//clothes
	var/pickuni = rand(1,5)
	if (pickuni == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf1(H), slot_w_uniform)
	if (pickuni == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf2(H), slot_w_uniform)
	if (pickuni == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf3(H), slot_w_uniform)
	if (pickuni == 4)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf4(H), slot_w_uniform)
	if (pickuni == 5)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf5(H), slot_w_uniform)

//head
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/rice_hat(H), slot_head)
	else if (prob(20))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat/khaki(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/m1892(H), slot_l_hand)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(30))
			if (prob(50))
				H.equip_to_slot_or_del(new /obj/item/flashlight/japflashlight(H), slot_wear_id)
			else
				H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight_alt(H), slot_wear_id)
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/faction2(H), slot_back)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	var/pickscarf = rand(1,2)
	if (pickscarf == 1)
		var/obj/item/clothing/accessory/armband/khan_ran/black = new /obj/item/clothing/accessory/armband/khan_ran/black(null)
		uniform.attackby(black, H)
	else if (pickscarf == 2)
		var/obj/item/clothing/accessory/armband/khan_ran/blue = new /obj/item/clothing/accessory/armband/khan_ran/blue(null)
		uniform.attackby(blue, H)
	give_random_name(H)
	H.s_tone = rand(-32,-24)
	if (H.f_style != "Shaved" && H.f_style != "Short Facial Hair" && H.f_style != "Goatee")
		H.f_style = pick("Shaved","Short Facial Hair","Goatee")

	H.add_note("Role", "You are a <b>[title]</b>, in charge of the communications and also acting as a courier for ammunition, grenades, and so on. Keep the squads up to date and supplied!")
	H.add_note("Vietcong Mechanics", "- Press <b>C</b> to place a booby trap while holding a grenade.<br><br>- The tunnel entrances connecting to your underground compound are only accessible by fellow Vietnamese and american commandos. Americans won't be able to crawl inside.<br><br>- Drag yourself to a Jungle Tree to hide on it.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	H.setStat("stamina", STAT_VERY_HIGH)

	return TRUE

/datum/job/vietnamese/vietcong
	title = "Binh Ni"
	en_meaning = "Vietcong Soldier"
	rank_abbreviation = ""
	can_be_female = TRUE
	spawn_location = "JoinLateJP"

	is_coldwar = TRUE
	uses_squads = TRUE
	is_vietcong = TRUE

	min_positions = 20
	max_positions = 200

/datum/job/vietnamese/vietcong/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/nlfsandal1(H), slot_shoes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/nlfsandal2(H), slot_shoes)

//clothes
	var/pickuni = rand(1,5)
	if (pickuni == 1)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf1(H), slot_w_uniform)
	if (pickuni == 2)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf2(H), slot_w_uniform)
	if (pickuni == 3)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf3(H), slot_w_uniform)
	if (pickuni == 4)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf4(H), slot_w_uniform)
	if (pickuni == 5)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/localnlf5(H), slot_w_uniform)

//head
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/rice_hat(H), slot_head)
	else if (prob(20))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat/khaki(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat(H), slot_head)
//back
	var/pickgun = rand(1,4)
	if (pickgun == 1)
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/semiautomatic/sks(H), slot_shoulder)
	else if (pickgun == 2)
		if (prob(50))
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/m1892(H), slot_belt)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/luger(H), slot_belt)
	else if (pickgun == 3)
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ak47(H), slot_shoulder)
	else if (pickgun == 4)
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/m30(H), slot_shoulder)
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/garrote(H), slot_l_store)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/attachment/bayonet/military(H), slot_l_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	if (prob(40))
		var/obj/item/clothing/accessory/storage/webbing/nlfchestrig = new /obj/item/clothing/accessory/storage/webbing/nlfchestrig(null)
		uniform.attackby(nlfchestrig, H)
	else if (prob(60))
		var/obj/item/clothing/accessory/storage/webbing/nlfsmallpouches = new /obj/item/clothing/accessory/storage/webbing/nlfsmallpouches(null)
		uniform.attackby(nlfsmallpouches, H)
	var/pickscarf = rand(1,2)
	if (pickscarf == 1)
		var/obj/item/clothing/accessory/armband/khan_ran/black = new /obj/item/clothing/accessory/armband/khan_ran/black(null)
		uniform.attackby(black, H)
	else if (pickscarf == 2)
		var/obj/item/clothing/accessory/armband/khan_ran/blue = new /obj/item/clothing/accessory/armband/khan_ran/blue(null)
		uniform.attackby(blue, H)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(30))
			if (prob(50))
				H.equip_to_slot_or_del(new /obj/item/flashlight/japflashlight(H), slot_wear_id)
			else
				H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight_alt(H), slot_wear_id)
	give_random_name(H)
	H.s_tone = rand(-32,-24)
	if (H.f_style != "Shaved" && H.f_style != "Short Facial Hair" && H.f_style != "Goatee")
		H.f_style = pick("Shaved","Short Facial Hair","Goatee")

	H.add_note("Role", "You are a <b>[title]</b>, fighting guerilla warfare against the imperialists!")
	H.add_note("Vietcong Mechanics", "- Press <b>C</b> to place a booby trap while holding a grenade.<br><br>- The tunnel entrances connecting to your underground compound are only accessible by fellow Vietnamese and american commandos. Americans won't be able to crawl inside.<br><br>- Drag yourself to a Jungle Tree to hide on it.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)

	return TRUE

////////////////////////////////////////////////US////////////////////////////////////////

/datum/job/american
	faction = "Human"

/datum/job/american/give_random_name(var/mob/living/human/H)
	H.name = H.species.get_random_english_name(H.gender)
	H.real_name = H.name


/datum/job/american/american_lieutenant
	title = "USA Lieutenant"
	rank_abbreviation = "Lt."

	spawn_location = "JoinLateRNCap"

	is_coldwar = TRUE
	is_officer = TRUE
	is_commander = TRUE
	whitelisted = TRUE

	min_positions = 1
	max_positions = 2

/datum/job/american/american_lieutenant/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)

//clothes
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni(H), slot_w_uniform)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/ushelmet/camo/lt(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses(H), slot_eyes)

	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/greasegun(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/olive/us_off(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/m1911(H), slot_l_hand)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	var/obj/item/clothing/accessory/armband/yellow_scarf/yscarf = new /obj/item/clothing/accessory/armband/yellow_scarf(null)
	uniform.attackby(yscarf, H)

	if (prob(60))
		H.f_style = pick("Shaved","Selleck Mustache")
	else
		H.f_style = pick("Selleck Mustache","Van Dyke Mustache","Elvis Sideburns","Goatee")

	H.s_tone = rand(-40,-20)
	H.h_style = pick("Bald","Short Hair","Buzzcut","Crewcut","Combover","Skinhead","Balding Hair","Flat Top","Mulder","Gelled Back","CIA","Joestar","Slick","Fade","Average Joe","Undercut")

	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>. You are in charge of the whole platoon. Organize your troops accordingly!")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_VERY_HIGH)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_NORMAL)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	return TRUE

/datum/job/american/american_sergeant
	title = "USA Sergeant"
	rank_abbreviation = "Sgt."

	spawn_location = "JoinLateRNSL"

	is_coldwar = TRUE
	is_squad_leader = TRUE
	uses_squads = TRUE
	can_get_coordinates = TRUE

	min_positions = 2
	max_positions = 8

/datum/job/american/american_sergeant/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)

//clothes
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni(H), slot_w_uniform)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/ushelmet/camo/accessory(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/m16(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/olive/us_off(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/m1911(H), slot_l_hand)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight(H), slot_wear_id)
	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/bayonet/military(H), slot_l_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	var/obj/item/clothing/accessory/armor/coldwar/flakjacket/fj = new /obj/item/clothing/accessory/armor/coldwar/flakjacket(null)
	uniform.attackby(fj, H)

	if (prob(60))
		H.f_style = pick("Shaved","Selleck Mustache")
	else
		H.f_style = pick("Selleck Mustache","Van Dyke Mustache","Elvis Sideburns","Goatee")

	H.s_tone = rand(-40,-20)
	H.h_style = pick("Bald","Short Hair","Buzzcut","Crewcut","Combover","Skinhead","Balding Hair","Flat Top","Mulder","Gelled Back","CIA","Joestar","Slick","Fade","Average Joe","Undercut")

	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, lead a squad against the Vietcong!")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_NORMAL)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	return TRUE

/datum/job/american/american_sf
	title = "USA Commando"
	rank_abbreviation = "Cpl."

	spawn_location = "JoinLateRN"

	is_coldwar = TRUE
	whitelisted = TRUE

	min_positions = 1
	max_positions = 4

/datum/job/american/american_sf/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_tigerstripes(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/color/grey(H), slot_gloves)
	H.equip_to_slot_or_del(new /obj/item/clothing/mask/facecamo(H), slot_wear_mask)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/commando_bandana(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/m16/commando(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/olive/m16/sf(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/bayonet/military(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/garrote(H), slot_l_store)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/storage/webbing/light/lw = new /obj/item/clothing/accessory/storage/webbing/light(null)
	uniform.attackby(lw, H)

	if (prob(60))
		H.f_style = pick("Shaved","Selleck Mustache")
	else
		H.f_style = pick("Selleck Mustache","Van Dyke Mustache","Elvis Sideburns","Goatee")

	H.s_tone = rand(-40,-20)
	H.h_style = pick("Bald","Short Hair","Buzzcut","Crewcut","Combover","Skinhead","Balding Hair","Flat Top","Mulder","Gelled Back","CIA","Joestar","Slick","Fade","Average Joe","Undercut")

	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a member of the Special Forces tasked with commando operations behind enemy lines. Coordinate with the Army and defeat the Viet Cong!")
	H.add_note("Special Forces", "As a member of the special forces, you are able to check coordinates like Officers. You are also able to crawl down Viet Cong tunnels, but be careful!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_HIGH)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_MEDIUM_HIGH)
	H.setStat("medical", STAT_MEDIUM_HIGH)
	H.setStat("machinegun", STAT_MEDIUM_HIGH)
	return TRUE

/datum/job/american/american_medic
	title = "USA Corpsman"
	rank_abbreviation = "Cpl."

	spawn_location = "JoinLateRNMed"

	is_medic = TRUE
	is_coldwar = TRUE

	min_positions = 2
	max_positions = 8

/datum/job/american/american_medic/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)

//clothes
	var/randuni4 = rand(1,4)
	switch(randuni4)
		if (1)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni(H), slot_w_uniform)
		if (2)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni(H), slot_w_uniform)
		if (3)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni2(H), slot_w_uniform)
		if (4)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni3(H), slot_w_uniform)

//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/ww2/us_medic(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/adv(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/combat(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/m1911(H), slot_l_hand)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/custom/armband/medicalarm = new /obj/item/clothing/accessory/armband/redcross(null)
	uniform.attackby(medicalarm, H)
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	var/obj/item/clothing/accessory/armor/coldwar/flakjacket/fj = new /obj/item/clothing/accessory/armor/coldwar/flakjacket(null)
	uniform.attackby(fj, H)

	if (prob(60))
		H.f_style = pick("Shaved","Selleck Mustache")
	else
		H.f_style = pick("Selleck Mustache","Van Dyke Mustache","Elvis Sideburns","Goatee")

	H.s_tone = rand(-40,-20)
	H.h_style = pick("Bald","Short Hair","Buzzcut","Crewcut","Combover","Skinhead","Balding Hair","Flat Top","Mulder","Gelled Back","CIA","Joestar","Slick","Fade","Average Joe","Undercut")

	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>. Keep your fellow soldiers healthy!")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_MEDIUM_LOW)
	H.setStat("pistol", STAT_MEDIUM_LOW)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_VERY_HIGH)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	return TRUE

/datum/job/american/american_radioman
	title = "USA Radio Operator"
	rank_abbreviation = "Cpl."

	spawn_location = "JoinLateRN"

	is_coldwar = TRUE
	is_radioman = TRUE
	uses_squads = TRUE

	min_positions = 1
	max_positions = 5

/datum/job/american/american_radioman/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)

//clothes
	var/randuni4 = rand(1,4)
	switch(randuni4)
		if (1)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni(H), slot_w_uniform)
		if (2)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni(H), slot_w_uniform)
		if (3)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni2(H), slot_w_uniform)
		if (4)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni3(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/ushelmet/camo/accessory(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/greasegun(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/olive/greasegun(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/faction1(H), slot_back)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight(H), slot_wear_id)

	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/armor/coldwar/flakjacket/fj = new /obj/item/clothing/accessory/armor/coldwar/flakjacket(null)
	uniform.attackby(fj, H)

	if (prob(60))
		H.f_style = pick("Shaved","Selleck Mustache")
	else
		H.f_style = pick("Selleck Mustache","Van Dyke Mustache","Elvis Sideburns","Goatee")

	H.s_tone = rand(-40,-20)
	H.h_style = pick("Bald","Short Hair","Buzzcut","Crewcut","Combover","Skinhead","Balding Hair","Flat Top","Mulder","Gelled Back","CIA","Joestar","Slick","Fade","Average Joe","Undercut")

	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, in charge of your squad communications. Keep the line open between the <b>Squad Leader</b> and HQ!")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_VERY_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)

	return TRUE

/datum/job/american/american_marksman
	title = "USA Marksman"
	rank_abbreviation = "Spc."

	spawn_location = "JoinLateRN"

	is_coldwar = TRUE
	uses_squads = TRUE

	min_positions = 2
	max_positions = 12

/datum/job/american/american_marksman/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)

//clothes
	var/randuni3 = rand(1,3)
	switch(randuni3)
		if (1)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni(H), slot_w_uniform)
		if (2)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni(H), slot_w_uniform)
		if (3)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni2(H), slot_w_uniform)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/storage/webbing/us_vest/fullwebbing = new /obj/item/clothing/accessory/storage/webbing/us_bandolier(null)
	uniform.attackby(fullwebbing, H)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/ushelmet/camo/accessory(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/m14/sniper(H), slot_shoulder)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight(H), slot_wear_id)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/olive/m14(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/bayonet/military(H), slot_l_store)
	if (prob(40))
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/buttpack(H), slot_back)

	if (prob(60))
		H.f_style = pick("Shaved","Selleck Mustache")
	else
		H.f_style = pick("Selleck Mustache","Van Dyke Mustache","Elvis Sideburns","Goatee")

	H.s_tone = rand(-40,-20)
	H.h_style = pick("Bald","Short Hair","Buzzcut","Crewcut","Combover","Skinhead","Balding Hair","Flat Top","Mulder","Gelled Back","CIA","Joestar","Slick","Fade","Average Joe","Undercut")

	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, fighting against the Vietcong!")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_VERY_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	return TRUE

/datum/job/american/american_lmg
	title = "USA Automatic Rifleman"
	rank_abbreviation = "Pfc."

	spawn_location = "JoinLateRN"

	is_coldwar = TRUE
	uses_squads = TRUE

	min_positions = 2
	max_positions = 8

/datum/job/american/american_lmg/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)

//clothes
	var/randuni2 = rand(1,4)
	switch(randuni2)
		if (1)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni(H), slot_w_uniform)
		if (2)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_greentrousers(H), slot_w_uniform)
		if (3)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni2(H), slot_w_uniform)
		if (4)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni3(H), slot_w_uniform)
//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/ushelmet/camo/accessory(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/automatic/m60(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/largepouches/olive/m60(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/m1911(H), slot_l_hand)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight(H), slot_wear_id)
	if (prob(40))
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/buttpack(H), slot_back)

	if (prob(78))
		H.f_style = pick("Shaved","Selleck Mustache")
	else
		H.f_style = pick("Van Dyke Mustache","Elvis Sideburns","Goatee")

	if (prob(25))
		H.s_tone = rand(-210,-170)
		H.h_style = pick("Bald","Short Hair","Buzzcut","Crewcut","Afro","Mohawk","Skinhead","Flat Top","Balding Hair","Mulder","Slick","Fade","Average Joe","Undercut","Joestar")
		var/new_hair = "Black"
		var/hex_hair = hair_colors[new_hair]
		H.r_hair = hex2num(copytext(hex_hair, 2, 4))
		H.g_hair = hex2num(copytext(hex_hair, 4, 6))
		H.b_hair = hex2num(copytext(hex_hair, 6, 8))
		H.r_facial = hex2num(copytext(hex_hair, 2, 4))
		H.g_facial = hex2num(copytext(hex_hair, 4, 6))
		H.b_facial = hex2num(copytext(hex_hair, 6, 8))
	else
		H.s_tone = rand(-40,-20)
		H.h_style = pick("Bald","Short Hair","Buzzcut","Crewcut","Combover","Skinhead","Balding Hair","Flat Top","Mulder","Gelled Back","CIA","Joestar","Slick","Fade","Average Joe","Undercut")

	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/armor/coldwar/flakjacket/fj = new /obj/item/clothing/accessory/armor/coldwar/flakjacket(null)
	uniform.attackby(fj, H)

	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, carrying a light machine gun. Keep your squad covered!")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_VERY_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_HIGH)
	return TRUE

/datum/job/american/american_soldier
	title = "USA Rifleman"
	rank_abbreviation = "Pvt."

	spawn_location = "JoinLateRN"

	is_coldwar = TRUE
	uses_squads = TRUE

	min_positions = 10
	max_positions = 100

/datum/job/american/american_soldier/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)

//clothes
	var/randuni = rand(1,5)
	switch(randuni)
		if (1)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni(H), slot_w_uniform)
		if (2)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni(H), slot_w_uniform)
		if (3)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_greentrousers(H), slot_w_uniform)
		if (4)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni2(H), slot_w_uniform)
		if (5)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni3(H), slot_w_uniform)

	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/armor/coldwar/flakjacket/fj = new /obj/item/clothing/accessory/armor/coldwar/flakjacket(null)
	uniform.attackby(fj, H)

//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/ushelmet/camo/accessory(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/m16(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/olive/m16(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/bayonet/military(H), slot_l_store)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight(H), slot_wear_id)
	if (prob(40))
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/buttpack(H), slot_back)


	if (prob(78))
		H.f_style = pick("Shaved","Selleck Mustache")
	else
		H.f_style = pick("Van Dyke Mustache","Elvis Sideburns","Goatee")

	if (prob(25))
		H.s_tone = rand(-200,-170)
		H.h_style = pick("Bald","Short Hair","Buzzcut","Crewcut","Afro","Mohawk","Skinhead","Flat Top","Balding Hair","Mulder","Slick","Fade","Average Joe","Undercut","Joestar")
		var/new_hair = "Black"
		var/hex_hair = hair_colors[new_hair]
		H.r_hair = hex2num(copytext(hex_hair, 2, 4))
		H.g_hair = hex2num(copytext(hex_hair, 4, 6))
		H.b_hair = hex2num(copytext(hex_hair, 6, 8))
		H.r_facial = hex2num(copytext(hex_hair, 2, 4))
		H.g_facial = hex2num(copytext(hex_hair, 4, 6))
		H.b_facial = hex2num(copytext(hex_hair, 6, 8))
	else
		H.s_tone = rand(-40,-20)
		H.h_style = pick("Bald","Short Hair","Buzzcut","Crewcut","Combover","Skinhead","Balding Hair","Flat Top","Mulder","Gelled Back","CIA","Joestar","Slick","Fade","Average Joe","Undercut")

	give_random_name(H)
	H.add_note("Role", "You are a <b>[title]</b>, a basic grunt. Follow orders and defeat the enemy!")
	H.setStat("strength", STAT_NORMAL)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_NORMAL)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	return TRUE

/////////////////////////////////////////////////////////////////////////
/datum/job/american/specops_leader
	title = "SOF Team Leader"
	rank_abbreviation = "Lt."
	can_be_female = TRUE
	spawn_location = "JoinLateRN"

	is_coldwar = TRUE
	is_specops = TRUE
	whitelisted = TRUE
	is_officer = TRUE
	is_commander = TRUE

	min_positions = 1
	max_positions = 1

/datum/job/american/specops_leader/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_camo_ocp(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat/khaki(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses(H), slot_eyes)

	H.equip_to_slot_or_del(new /obj/item/garrote(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/walkietalkie/faction1(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	H.add_note("Role", "You are a <b>[title]</b>, an officer of the Special Operation Forces team tasked with the rescue of the hostages. You should stay in the base and keep the operation organized! You also speak <b>Arabic</b> and can listen to insurgent communications.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_HIGH)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_MEDIUM_HIGH)
	H.setStat("medical", STAT_MEDIUM_HIGH)
	H.setStat("machinegun", STAT_MEDIUM_HIGH)
	spawn(20)
		H.add_language("Arabic",TRUE)
	return TRUE

/datum/job/american/specops_doctor
	title = "SOF Medic"
	rank_abbreviation = "Sfc."
	can_be_female = TRUE
	spawn_location = "JoinLateRN"

	is_medic = TRUE
	is_coldwar = TRUE
	is_specops = TRUE

	min_positions = 1
	max_positions = 3

/datum/job/american/specops_doctor/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni_modern(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/adv(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/combat/modern(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/walkietalkie/faction1(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)

	H.add_note("Role", "You are a <b>[title]</b>, a trained doctor of the Special Operation Forces team tasked with the rescue of the hostages. You should stay in the base and keep your teammates and prioners alive!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_HIGH)
	H.setStat("rifle", STAT_MEDIUM_HIGH)
	H.setStat("dexterity", STAT_HIGH)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_MEDIUM_HIGH)
	H.setStat("bows", STAT_MEDIUM_HIGH)
	H.setStat("medical", STAT_VERY_HIGH)
	H.setStat("machinegun", STAT_MEDIUM_HIGH)
	return TRUE

/datum/job/american/specops_operator
	title = "SOF Operator"
	rank_abbreviation = "Sgt."

	spawn_location = "JoinLateRN"
	can_be_female = TRUE
	is_coldwar = TRUE
	is_specops = TRUE

	min_positions = 6
	max_positions = 33

/datum/job/american/specops_operator/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/us_uni/us_lightuni_modern(H), slot_w_uniform)

	H.equip_to_slot_or_del(new /obj/item/garrote(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/walkietalkie/faction1(H), slot_wear_id)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches(H), slot_belt)

	H.add_note("Role", "You are a <b>[title]</b>, a member of the Special Operation Forces team tasked with the rescue of the hostages. You will only be successfull if you coordinate with the rest of your team!")
	H.setStat("strength", STAT_HIGH)
	H.setStat("crafting", STAT_HIGH)
	H.setStat("rifle", STAT_VERY_HIGH)
	H.setStat("dexterity", STAT_HIGH)
	H.setStat("swords", STAT_VERY_HIGH)
	H.setStat("pistol", STAT_VERY_HIGH)
	H.setStat("bows", STAT_VERY_HIGH)
	H.setStat("medical", STAT_MEDIUM_HIGH)
	H.setStat("machinegun", STAT_HIGH)
	return TRUE

/////////////////////////////////////////////////////

/datum/job/arab/insurgent_leader
	title = "Insurgent Leader"
	en_meaning = ""
	rank_abbreviation = "Leader"

	spawn_location = "JoinLateAR"

	is_coldwar = TRUE
	is_officer = TRUE
	is_specops = TRUE
	is_modernday = TRUE
	is_squad_leader = TRUE
	uses_squads = TRUE

	min_positions = 2
	max_positions = 8

/datum/job/arab/insurgent_leader/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)
//clothes
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/under/insurgent_black(H), slot_w_uniform)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/under/insurgent_leader(H), slot_w_uniform)

	H.equip_to_slot_or_del(new /obj/item/clothing/head/black_shemagh(H), slot_head)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/m16/commando/m4mws(H), slot_shoulder)

	H.equip_to_slot_or_del(new /obj/item/weapon/material/sword/arabsword(H), slot_belt)

	H.equip_to_slot_or_del(new /obj/item/weapon/radio/walkietalkie/faction2(H), slot_wear_id)
	H.equip_to_slot_or_del(new /obj/item/flashlight/flashlight(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/insurgent(H), slot_l_store)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/armor/coldwar/pasgt/fullwebbing = new /obj/item/clothing/accessory/armor/coldwar/pasgt(null)
	uniform.attackby(fullwebbing, H)
	give_random_name(H)
	if (H.f_style != "Full Beard" && H.f_style != "Medium Beard" && H.f_style != "Long Beard" && H.f_style != "Very Long Beard")
		H.f_style = pick("Full Beard","Medium Beard","Long Beard","Very Long Beard")
	H.s_tone = rand(-92,-80)
	var/new_hair = pick("Dark Brown","Black")
	var/new_eyes = pick("Dark Brown", "Black")
	var/hex_hair = hair_colors[new_hair]
	H.r_hair = hex2num(copytext(hex_hair, 2, 4))
	H.g_hair = hex2num(copytext(hex_hair, 4, 6))
	H.b_hair = hex2num(copytext(hex_hair, 6, 8))
	H.r_facial = hex2num(copytext(hex_hair, 2, 4))
	H.g_facial = hex2num(copytext(hex_hair, 4, 6))
	H.b_facial = hex2num(copytext(hex_hair, 6, 8))
	var/hex_eyes = eye_colors[new_eyes]
	H.r_eyes = hex2num(copytext(hex_eyes, 2, 4))
	H.g_eyes = hex2num(copytext(hex_eyes, 4, 6))
	H.b_eyes = hex2num(copytext(hex_eyes, 6, 8))
	H.change_eye_color(H.r_eyes, H.g_eyes, H.b_eyes)
	H.force_update_limbs()
	H.update_body()
	H.add_note("Role", "You are an <b>[title]</b>, a team leader for the Insurgents in this map. Organize your brothers and repel the westerners!")
	H.add_note("Insurgent Mechanics", "- You have a radio on your vest. Use \";\" to broadcast. Be aware that americans can probably listen to your radio communications! This can be both an advantage and a disadvantage...")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_NORMAL)
	H.setStat("machinegun", STAT_MEDIUM_LOW)

	return TRUE


/datum/job/arab/insurgent
	title = "Insurgent"
	en_meaning = ""
	rank_abbreviation = ""

	spawn_location = "JoinLateAR"

	is_coldwar = TRUE
	is_specops = TRUE
	is_modernday = TRUE
	uses_squads = TRUE

	min_positions = 22
	max_positions = 66

/datum/job/arab/insurgent/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/blackboots1(H), slot_shoes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/leatherboots1(H), slot_shoes)
//clothes
	var/pickclothes = rand(1,4)
	switch (pickclothes)
		if (1)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/insurgent_sand(H), slot_w_uniform)
		if (2)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/insurgent_sand_green(H), slot_w_uniform)
		if (3)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/insurgent_sand_woodland(H), slot_w_uniform)
		if (4)
			H.equip_to_slot_or_del(new /obj/item/clothing/under/insurgent_sand_dcu(H), slot_w_uniform)
//head
	if (prob(50))
		if (prob(20))
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/balaclava(H), slot_wear_mask)
		else
			H.equip_to_slot_or_del(new /obj/item/clothing/head/black_bandana(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/black_shemagh(H), slot_head)
//back
	if (prob(33))
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/g3(H), slot_shoulder)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ak47(H), slot_shoulder)

	H.equip_to_slot_or_del(new /obj/item/weapon/material/kitchen/utensil/knife/bowie(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/key/insurgent(H), slot_l_store)
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/walkietalkie/faction2(H), slot_wear_id)

	var/obj/item/clothing/under/uniform = H.w_uniform
	if (prob(50))
		var/obj/item/clothing/accessory/storage/webbing/green_webbing/fullwebbing = new /obj/item/clothing/accessory/storage/webbing/green_webbing(null)
		uniform.attackby(fullwebbing, H)
	else
		var/obj/item/clothing/accessory/storage/webbing/khaki_webbing/fullwebbing = new /obj/item/clothing/accessory/storage/webbing/khaki_webbing(null)
		uniform.attackby(fullwebbing, H)
	give_random_name(H)
	if (H.f_style != "Full Beard" && H.f_style != "Medium Beard" && H.f_style != "Long Beard" && H.f_style != "Very Long Beard")
		H.f_style = pick("Full Beard","Medium Beard","Long Beard","Very Long Beard")
	H.s_tone = rand(-92,-80)
	var/new_hair = pick("Dark Brown","Black")
	var/new_eyes = pick("Dark Brown", "Black")
	var/hex_hair = hair_colors[new_hair]
	H.r_hair = hex2num(copytext(hex_hair, 2, 4))
	H.g_hair = hex2num(copytext(hex_hair, 4, 6))
	H.b_hair = hex2num(copytext(hex_hair, 6, 8))
	H.r_facial = hex2num(copytext(hex_hair, 2, 4))
	H.g_facial = hex2num(copytext(hex_hair, 4, 6))
	H.b_facial = hex2num(copytext(hex_hair, 6, 8))
	var/hex_eyes = eye_colors[new_eyes]
	H.r_eyes = hex2num(copytext(hex_eyes, 2, 4))
	H.g_eyes = hex2num(copytext(hex_eyes, 4, 6))
	H.b_eyes = hex2num(copytext(hex_eyes, 6, 8))
	H.change_eye_color(H.r_eyes, H.g_eyes, H.b_eyes)
	H.force_update_limbs()
	H.update_body()
	H.add_note("Role", "You are an <b>[title]</b>, fighting guerilla warfare against the westerners. Protect the cave!")
	H.add_note("Insurgent Mechanics", "- You have a radio on your vest. Use \";\" to broadcast. Be aware that americans can probably listen to your radio communications!")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)

	return TRUE

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////VIETNAMESE NVA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/datum/job/vietnamese/vietcong_officer_nva
	title = "NVA Si Quan"
	en_meaning = "NVA Officer"
	rank_abbreviation = "Si Quan"

	spawn_location = "JoinLateJPCap"

	is_coldwar = TRUE
	is_officer = TRUE
	whitelisted = TRUE
	is_nva = TRUE

	min_positions = 2
	max_positions = 8

/datum/job/vietnamese/vietcong_officer_nva/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)

//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/nva/officer(H), slot_w_uniform)

//head
	H.equip_to_slot_or_del(new /obj/item/clothing/head/nva_hat(H), slot_head)
//back
	if (prob(20))
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/nagant_revolver(H), slot_l_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/tt30(H), slot_l_hand)

	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/smallpouches/vc_officer(H), slot_belt)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(70))
			if (prob(50))
				H.equip_to_slot_or_del(new /obj/item/flashlight/japflashlight(H), slot_wear_id)
			else
				H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight_alt(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	var/obj/item/clothing/accessory/armband/red_scarf/rscarf = new /obj/item/clothing/accessory/armband/red_scarf(null)
	uniform.attackby(rscarf, H)
	give_random_name(H)
	H.s_tone = rand(-32,-24)
	if (H.f_style != "Shaved" && H.f_style != "Short Facial Hair" && H.f_style != "Goatee")
		H.f_style = pick("Shaved","Short Facial Hair","Goatee")
	H.add_note("Role", "You are a <b>[title]</b>, lead the NVA in the fight against the imperialists!")
	H.add_note("Vietcong Mechanics", "- Press <b>C</b> to place a booby trap while holding a grenade.<br><br>- The tunnel entrances connecting to your underground compound are only accessible by fellow Vietnamese and american commandos. Americans won't be able to crawl inside.<br><br>- Drag yourself to a Jungle Tree to hide on it.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	return TRUE

/datum/job/vietnamese/vietcong_doctor_nva
	title = "NVA Bac Si"
	en_meaning = "NVA Medic"
	rank_abbreviation = "Bac Si"

	spawn_location = "JoinLateJP"
	can_be_female = TRUE
	is_medic = TRUE
	is_coldwar = TRUE
	is_nva = TRUE

	min_positions = 3
	max_positions = 8

/datum/job/vietnamese/vietcong_doctor_nva/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/nva(H), slot_w_uniform)

//head
	if (prob(90))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/vchelmet(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat/khaki(H), slot_head)

//back
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/m1892(H), slot_l_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/tt30(H), slot_l_hand)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/medical/full_vc(H), slot_belt)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(70))
			if (prob(50))
				H.equip_to_slot_or_del(new /obj/item/flashlight/japflashlight(H), slot_wear_id)
			else
				H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight_alt(H), slot_wear_id)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	var/pickscarf = rand(1,2)
	if (pickscarf == 1)
		var/obj/item/clothing/accessory/armband/khan_ran/black = new /obj/item/clothing/accessory/armband/khan_ran/black(null)
		uniform.attackby(black, H)
	else if (pickscarf == 2)
		var/obj/item/clothing/accessory/armband/khan_ran/blue = new /obj/item/clothing/accessory/armband/khan_ran/blue(null)
		uniform.attackby(blue, H)
	give_random_name(H)
	H.s_tone = rand(-32,-24)
	if (H.f_style != "Shaved" && H.f_style != "Short Facial Hair" && H.f_style != "Goatee")
		H.f_style = pick("Shaved","Short Facial Hair","Goatee")

	H.add_note("Role", "You are a <b>[title]</b>. Keep your comrades healthy!")
	H.add_note("Vietcong Mechanics", "- Press <b>C</b> to place a booby trap while holding a grenade.<br><br>- The tunnel entrances connecting to your underground compound are only accessible by fellow Vietnamese and american commandos. Americans won't be able to crawl inside.<br><br>- Drag yourself to a Jungle Tree to hide on it.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_HIGH)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	return TRUE

/datum/job/vietnamese/vietcong_comms_nva
	title = "NVA Tuy Phai"
	en_meaning = "NVA Radio man"
	rank_abbreviation = "Tuy Phai"

	spawn_location = "JoinLateJP"

	is_coldwar = TRUE
	uses_squads = TRUE
	is_squad_leader = TRUE
	is_nva = TRUE

	min_positions = 2
	max_positions = 12

/datum/job/vietnamese/vietcong_comms_nva/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/nva(H), slot_w_uniform)

//head
	if (prob(90))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/vchelmet(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat/khaki(H), slot_head)

	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/m1892(H), slot_l_hand)

	H.equip_to_slot_or_del(new /obj/item/weapon/radio/faction2(H), slot_back)
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/obj/item/clothing/accessory/holster/hip/holsterh = new /obj/item/clothing/accessory/holster/hip(null)
	uniform.attackby(holsterh, H)
	var/pickscarf = rand(1,2)
	if (pickscarf == 1)
		var/obj/item/clothing/accessory/armband/khan_ran/black = new /obj/item/clothing/accessory/armband/khan_ran/black(null)
		uniform.attackby(black, H)
	else if (pickscarf == 2)
		var/obj/item/clothing/accessory/armband/khan_ran/blue = new /obj/item/clothing/accessory/armband/khan_ran/blue(null)
		uniform.attackby(blue, H)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(60))
			if (prob(50))
				H.equip_to_slot_or_del(new /obj/item/flashlight/japflashlight(H), slot_wear_id)
			else
				H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight_alt(H), slot_wear_id)
	give_random_name(H)
	H.s_tone = rand(-32,-24)
	if (H.f_style != "Shaved" && H.f_style != "Short Facial Hair" && H.f_style != "Goatee")
		H.f_style = pick("Shaved","Short Facial Hair","Goatee")

	H.add_note("Role", "You are a <b>[title]</b>, in charge of the communications and also acting as a squad officer. Keep the squads organized and efficient!")
	H.add_note("Vietcong Mechanics", "- Press <b>C</b> to place a booby trap while holding a grenade.<br><br>- The tunnel entrances connecting to your underground compound are only accessible by fellow Vietnamese and american commandos. Americans won't be able to crawl inside.<br><br>- Drag yourself to a Jungle Tree to hide on it.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_NORMAL)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)
	H.setStat("stamina", STAT_VERY_HIGH)

	return TRUE

/datum/job/vietnamese/vietcong_nva
	title = "NVA Binh Ni"
	en_meaning = "NVA Soldier"
	rank_abbreviation = ""

	spawn_location = "JoinLateJP"

	is_coldwar = TRUE
	uses_squads = TRUE
	is_nva = TRUE

	min_positions = 20
	max_positions = 200

/datum/job/vietnamese/vietcong_nva/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/heavyboots/wrappedboots(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/clothing/under/nva(H), slot_w_uniform)
//head
	if (prob(90))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/vchelmet(H), slot_head)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/jungle_hat/khaki(H), slot_head)
//back
	var/obj/item/clothing/under/uniform = H.w_uniform
	var/pickgun = rand(1,4)
	if (pickgun == 1)
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/semiautomatic/sks(H), slot_shoulder)
		if (prob(70))
			var/obj/item/clothing/accessory/storage/webbing/nlfchestrig = new /obj/item/clothing/accessory/storage/webbing/nlfchestrig(null)
			uniform.attackby(nlfchestrig, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/sks, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/sks, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/sks, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/sks, H)
		else
			var/obj/item/clothing/accessory/storage/webbing/nlfsmallpouches = new /obj/item/clothing/accessory/storage/webbing/nlfsmallpouches(null)
			uniform.attackby(nlfsmallpouches, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/sks, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/sks, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/sks, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/sks, H)
	else if (pickgun == 2)
		if (prob(50))
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/revolver/m1892(H), slot_belt)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/pistol/luger(H), slot_belt)
			if (prob(70))
				var/obj/item/clothing/accessory/storage/webbing/nlfchestrig = new /obj/item/clothing/accessory/storage/webbing/nlfchestrig(null)
				uniform.attackby(nlfchestrig, H)
				nlfchestrig.attackby(new/obj/item/ammo_magazine/luger, H)
				nlfchestrig.attackby(new/obj/item/ammo_magazine/luger, H)
				nlfchestrig.attackby(new/obj/item/ammo_magazine/luger, H)
				nlfchestrig.attackby(new/obj/item/ammo_magazine/luger, H)
			else
				var/obj/item/clothing/accessory/storage/webbing/nlfsmallpouches = new /obj/item/clothing/accessory/storage/webbing/nlfsmallpouches(null)
				uniform.attackby(nlfsmallpouches, H)
				nlfsmallpouches.attackby(new/obj/item/ammo_magazine/luger, H)
				nlfsmallpouches.attackby(new/obj/item/ammo_magazine/luger, H)
				nlfsmallpouches.attackby(new/obj/item/ammo_magazine/luger, H)
				nlfsmallpouches.attackby(new/obj/item/ammo_magazine/luger, H)
	else if (pickgun == 3)
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/ak47/akms(H), slot_shoulder)
		if (prob(70))
			var/obj/item/clothing/accessory/storage/webbing/nlfchestrig = new /obj/item/clothing/accessory/storage/webbing/nlfchestrig(null)
			uniform.attackby(nlfchestrig, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/ak47, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/ak47, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/ak47, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/ak47, H)
		else
			var/obj/item/clothing/accessory/storage/webbing/nlfsmallpouches = new /obj/item/clothing/accessory/storage/webbing/nlfsmallpouches(null)
			uniform.attackby(nlfsmallpouches, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/ak47, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/ak47, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/ak47, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/ak47, H)
	else if (pickgun == 4)
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/boltaction/mosin/m30(H), slot_shoulder)
		if (prob(70))
			var/obj/item/clothing/accessory/storage/webbing/nlfchestrig = new /obj/item/clothing/accessory/storage/webbing/nlfchestrig(null)
			uniform.attackby(nlfchestrig, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/mosin, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/mosin, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/mosin, H)
			nlfchestrig.attackby(new/obj/item/ammo_magazine/mosin, H)
		else
			var/obj/item/clothing/accessory/storage/webbing/nlfsmallpouches = new /obj/item/clothing/accessory/storage/webbing/nlfsmallpouches(null)
			uniform.attackby(nlfsmallpouches, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/mosin, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/mosin, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/mosin, H)
			nlfsmallpouches.attackby(new/obj/item/ammo_magazine/mosin, H)
	if (prob(50))
		H.equip_to_slot_or_del(new /obj/item/garrote(H), slot_l_store)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/attachment/bayonet/military(H), slot_l_store)
	if (time_of_day == "Night" || time_of_day == "Evening" || time_of_day == "Early Morning")
		if (prob(40))
			if (prob(50))
				H.equip_to_slot_or_del(new /obj/item/flashlight/japflashlight(H), slot_wear_id)
			else
				H.equip_to_slot_or_del(new /obj/item/flashlight/militarylight_alt(H), slot_wear_id)
	give_random_name(H)
	H.s_tone = rand(-32,-24)
	if (H.f_style != "Shaved" && H.f_style != "Short Facial Hair" && H.f_style != "Goatee")
		H.f_style = pick("Shaved","Short Facial Hair","Goatee")

	H.add_note("Role", "You are a <b>[title]</b>, fighting a war against the imperialists!")
	H.add_note("Vietcong Mechanics", "- Press <b>C</b> to place a booby trap while holding a grenade.<br><br>- The tunnel entrances connecting to your underground compound are only accessible by fellow Vietnamese and american commandos. Americans won't be able to crawl inside.<br><br>- Drag yourself to a Jungle Tree to hide on it.")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_NORMAL)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_NORMAL)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)

	return TRUE