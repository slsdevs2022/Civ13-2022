// APPAREL RACKS

/obj/structure/vending/piratesapparel
	name = "Pirate clothes rack"
	desc = "Basic wear for pirates soldiers."
	icon_state = "apparel_pirates"
	products = list(
		/obj/item/clothing/suit/storage/jacket/piratejacket1 = 15,
		/obj/item/clothing/suit/storage/jacket/piratejacket3 = 15,
		/obj/item/clothing/suit/storage/jacket/piratejacket4 = 15,
		/obj/item/clothing/under/pirate1 = 15,
		/obj/item/clothing/under/pirate2 = 15,
		/obj/item/clothing/under/pirate3 = 15,
		/obj/item/clothing/under/pirate4 = 15,
		/obj/item/clothing/under/pirate5 = 15,
		/obj/item/clothing/head/piratebandana1 = 25,
	)

/obj/structure/vending/muskets
	name = "Musket rack"
	desc = "A rack of war muskets."
	icon_state = "apparel_rifles"
	products = list(
		/obj/item/weapon/gun/projectile/flintlock/musket = 15,

	)

/obj/structure/vending/muskets/small
	name = "musket rack"
	desc = "A rack of war muskets."
	icon_state = "apparel_rifles"
	products = list(
		/obj/item/weapon/gun/projectile/flintlock/musket = 5,

	)

/obj/structure/vending/muskets/english
	name = "English musket rack"
	desc = "A rack of war muskets."
	icon_state = "apparel_rifles"
	products = list(
		/obj/item/weapon/gun/projectile/flintlock/brownbess = 15,

	)

/obj/structure/vending/muskets/french
	name = "French musket rack"
	desc = "A rack of smoothbore charleville muskets ."
	icon_state = "apparel_rifles"
	products = list(
		/obj/item/weapon/gun/projectile/flintlock/charleville = 15,

	)

/obj/structure/vending/muskets/spanish
	name = "Spanish musket rack"
	desc = "A rack of smoothbore M1752 muskets ."
	icon_state = "apparel_rifles"
	products = list(
		/obj/item/weapon/gun/projectile/flintlock/m1752 = 15,

	)

/obj/structure/vending/muskets/portuguese
	name = "Portuguese musket rack"
	desc = "A rack of smoothbore Portuguese muskets ."
	icon_state = "apparel_rifles"
	products = list(
		/obj/item/weapon/gun/projectile/flintlock/m1752 = 15,

	)

/obj/structure/vending/flintlock
	name = "Flintlock weapon rack"
	desc = "An assorted rack of flintlock weapons."
	icon_state = "apparel_rifles"
	products = list(
		/obj/item/weapon/gun/projectile/flintlock/musketoon = 5,
		/obj/item/weapon/gun/projectile/flintlock/pistol = 5,
		/obj/item/weapon/gun/projectile/flintlock/blunderbuss = 5,

	)

/obj/structure/vending/capnball
	name = "Cap n Ball weapon rack"
	desc = "An assorted rack of Cap n Ball weapons."
	icon_state = "apparel_rifles"
	products = list(
		/obj/item/weapon/gun/projectile/flintlock/springfield = 15,
		/obj/item/weapon/gun/projectile/flintlock/springfield1795 = 5,
		/obj/item/weapon/attachment/bayonet = 15,
		/obj/item/weapon/material/shovel/trench = 15,
	)

/obj/structure/vending/confederate_apparel
	name = "confederate apparel rack"
	desc = "An assorted rack of confederate apparel."
	icon_state = "apparel_confed"
	products = list(
		/obj/item/clothing/head/confederatecap = 15,
		/obj/item/clothing/under/confederate_uniform/grey = 15,
		/obj/item/clothing/under/confederate_uniform/grey_blue = 15,
		/obj/item/clothing/head/confederatehat = 5,
		/obj/item/clothing/accessory/storage/webbing/civil_war = 15,
	)
/obj/structure/vending/union_apparel
	name = "union apparel rack"
	desc = "An assorted rack of union apparel."
	icon_state = "apparel_japan"
	products = list(
		/obj/item/clothing/head/unioncap = 15,
		/obj/item/clothing/under/union_uniform = 15,
		/obj/item/clothing/head/unionhat = 5,
		/obj/item/clothing/head/unionhatlight = 5,
		/obj/item/clothing/accessory/storage/webbing/civil_war = 15,

	)

/obj/structure/vending/britishapparel
	name = "Royal Navy sailor clothes rack"
	desc = "Basic wear for sailors of the Royal Navy."
	icon_state = "apparel_british"
	products = list(
		/obj/item/clothing/under/british_sailor1 = 15,
		/obj/item/clothing/under/british_sailor2 = 15,
		/obj/item/clothing/under/british_sailor3 = 15,
		/obj/item/clothing/under/british_sailor4 = 15,
		/obj/item/clothing/head/tarred_hat = 25,
		/obj/item/clothing/accessory/armband/british_scarf = 25,

	)

//	idle_power_usage = 0

/obj/structure/vending/rusweapons
	name = "Russian Weapon rack"
	desc = "A rack of war equipment."
	icon_state = "equipment_russia"
	products = list(
		/obj/item/weapon/gun/projectile/boltaction/mosin = 15,
		/obj/item/ammo_magazine/mosin = 50,
		/obj/item/ammo_magazine/mosinbox = 10,
		/obj/item/weapon/attachment/bayonet/military = 25,
	)

/obj/structure/vending/ww1gerweapons
	name = "German rifle rack"
	desc = "A rack of rifles and ammunition."
	icon_state = "modern_german"
	products = list(
		/obj/item/weapon/gun/projectile/boltaction/gewehr98 = 15,
		/obj/item/ammo_magazine/gewehr98 = 50,
		/obj/item/ammo_magazine/mauser = 20,
		/obj/item/weapon/attachment/bayonet/military = 25,
	)

/obj/structure/vending/ww1britweapons
	name = "British rifle rack"
	desc = "A rack of rifles and ammunition."
	icon_state = "modern_british"
	products = list(
		/obj/item/weapon/gun/projectile/boltaction/enfield = 15,
		/obj/item/ammo_magazine/enfield = 50,
		/obj/item/ammo_magazine/c455 = 20,
		/obj/item/weapon/attachment/bayonet/military = 25,
	)
/obj/structure/vending/ww1frenchweapons
	name = "French rifle rack"
	desc = "A rack of rifles and ammunition."
	icon_state = "modern_france"
	products = list(
		/obj/item/weapon/gun/projectile/boltaction/lebel = 15,
		/obj/item/ammo_magazine/c8x50 = 20,
		/obj/item/ammo_magazine/c8x50_3clip = 30,
		/obj/item/ammo_magazine/c8x27 = 20,
		/obj/item/weapon/attachment/bayonet/military = 25,
	)
/obj/structure/vending/ww1frenchapparel
	name = "French Army apparel rack"
	desc = "Basic wear for soldiers of the French Army."
	icon_state = "apparel_france"
	products = list(
		/obj/item/clothing/shoes/leatherboots1 = 15,
		/obj/item/clothing/under/ww1/french = 15,
		/obj/item/clothing/suit/storage/coat/frenchcoat = 15,
		/obj/item/clothing/head/ww/frenchcap = 15,
		/obj/item/clothing/accessory/storage/webbing/ww1/french = 15,
		/obj/item/clothing/head/helmet/ww/adrian = 15,
		/obj/item/clothing/mask/gas/french = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/french = 50,
	)
/obj/structure/vending/ww1britapparel
	name = "British Army apparel rack"
	desc = "Basic wear for soldiers of the Royal Army."
	icon_state = "apparel_russia"
	products = list(
		/obj/item/clothing/shoes/leatherboots1 = 15,
		/obj/item/clothing/under/ww1/british = 15,
		/obj/item/clothing/suit/storage/coat/britishcoat = 15,
		/obj/item/clothing/head/ww/britishcap = 15,
		/obj/item/clothing/accessory/storage/webbing/ww1/british = 15,
		/obj/item/clothing/head/helmet/ww/mk1brodieag = 15,
	    /obj/item/clothing/head/helmet/ww/mk1brodiedeb = 15,
		/obj/item/clothing/mask/gas/british = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/ww2/german = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/british = 50,
	)
/obj/structure/vending/ww1gerapparel
	name = "German Army apparel rack"
	desc = "Basic wear for soldiers of the Imperial German Army."
	icon_state = "apparel_german2"
	products = list(
		/obj/item/clothing/shoes/blackboots1 = 15,
		/obj/item/clothing/under/ww1/german = 15,
		/obj/item/clothing/suit/storage/coat/germcoat = 15,
		/obj/item/clothing/head/ww/germcap = 15,
		/obj/item/clothing/accessory/storage/webbing/ww1/german = 15,
		/obj/item/clothing/head/helmet/ww/stahlhelm = 15,
		/obj/item/clothing/head/helmet/modern/pickelhaube = 15,
		/obj/item/clothing/mask/gas/german = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/german = 50,
	)
/obj/structure/vending/japweapons
	name = "Japanese Weapon rack"
	desc = "A rack of war equipment."
	icon_state = "equipment_japan"
	products = list(
		/obj/item/weapon/gun/projectile/boltaction/arisaka30 = 15,
		/obj/item/ammo_magazine/arisakabox = 10,
		/obj/item/ammo_magazine/arisaka = 50,
		/obj/item/weapon/attachment/bayonet/military = 15,
	)

/obj/structure/vending/japaneseapparel
	name = "Imperial Japanese Army apparel rack"
	desc = "Basic wear for soldiers of the Imperial Japanese Army."
	icon_state = "apparel_japan"
	products = list(
		/obj/item/clothing/shoes/japboots = 15,
		/obj/item/clothing/under/japuni = 15,
		/obj/item/clothing/suit/storage/coat/japcoat = 15,
		/obj/item/clothing/suit/storage/coat/japcoat2 = 15,
		/obj/item/clothing/suit/armor/japmisc/japvest = 5,
		/obj/item/clothing/head/japcap = 15,
		/obj/item/clothing/head/japcap2 = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/japanese = 50,
	)

/obj/structure/vending/chineseweapons
	name = "Chinese Weapon rack"
	desc = "A rack of war equipment."
	icon_state = "equipment_japan"
	products = list(
		/obj/item/weapon/gun/projectile/boltaction/gewehr98/karabiner98k/chinese = 15,
		/obj/item/ammo_magazine/gewehr98box = 10,
		/obj/item/ammo_magazine/gewehr98 = 50,
		/obj/item/weapon/attachment/bayonet/military = 15,
	)

/obj/structure/vending/chineseweapons_korean_war
	name = "Chinese Weapon rack"
	desc = "A rack of war equipment."
	icon_state = "equipment_japan"
	products = list(
		/obj/item/weapon/gun/projectile/boltaction/gewehr98/karabiner98k/chinese = 15,
		/obj/item/ammo_magazine/gewehr98box = 10,
		/obj/item/ammo_magazine/gewehr98 = 50,
		/obj/item/ammo_magazine/c762x25_ppsh = 15,
		/obj/item/ammo_magazine/dp = 15,
		/obj/item/ammo_magazine/mauser = 10,
		/obj/item/weapon/attachment/bayonet/military = 15,
	)
/obj/structure/vending/chineseapparel_korean_war
	name = "Chinese apparel rack"
	desc = "Basic wear for soldiers of the People's Liberation Army."
	icon_state = "apparel_china"
	products = list(
		/obj/item/clothing/shoes/heavyboots/wrappedboots = 15,
		/obj/item/clothing/under/chinese_winter = 15,
		/obj/item/clothing/suit/storage/coat/chinese = 15,
		/obj/item/clothing/head/chinese_ushanka = 15,
		/obj/item/clothing/head/ww2/chicap = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/militarylight_alt = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/clothing/accessory/storage/webbing/ww1/leather = 30,
	)


/obj/structure/vending/chineseapparel
	name = "Chinese apparel rack"
	desc = "Basic wear for soldiers of the Chinese Army."
	icon_state = "apparel_china"
	products = list(
		/obj/item/clothing/shoes/heavyboots/wrappedboots = 15,
		/obj/item/clothing/under/ww2/chiuni = 15,
		/obj/item/clothing/under/ww2/chiuni2 = 15,
		/obj/item/clothing/under/ww2/german = 15,
		/obj/item/clothing/head/ww2/chicap = 15,
		/obj/item/clothing/head/ww2/chicap2 = 15,
		/obj/item/clothing/head/ww2/german_fieldcap = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/militarylight_alt = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/clothing/accessory/storage/webbing/ww1/leather = 30,
	)

/obj/structure/vending/usa_apparel_ww2
	name = "US Army apparel rack"
	desc = "Basic wear for soldiers of the US Army."
	icon_state = "apparel_usa"
	products = list(
		/obj/item/clothing/shoes/jackboots = 15,
		/obj/item/clothing/under/ww2/us = 15,
		/obj/item/clothing/under/ww2/us_shirtless = 15,
		/obj/item/clothing/head/helmet/ww2/usm1camogreen = 5,
		/obj/item/clothing/head/helmet/ww2/usgreennet = 5,
		/obj/item/clothing/head/helmet/ww2/ustannet = 5,
		/obj/item/clothing/head/helmet/ww2/usm1 = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/militarylight = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/ww2/us = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/american = 50,
	)

/obj/structure/vending/usa_apparel_korean_war
	name = "US Army apparel rack"
	desc = "Basic wear for soldiers of the US Army."
	icon_state = "apparel_usa"
	products = list(
		/obj/item/clothing/shoes/jackboots = 15,
		/obj/item/clothing/under/us_uni_korean = 15,
		/obj/item/clothing/head/helmet/korean/usgreennet = 5,
		/obj/item/clothing/head/helmet/korean/ustannet = 5,
		/obj/item/clothing/head/helmet/korean/usm1 = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/militarylight = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/american = 50,
	)

/obj/structure/vending/usa_equipment_ww2
	name = "US Army equipment rack"
	desc = "Basic gear for soldiers of the US Army."
	icon_state = "equipment_usa"
	products = list(
		/obj/item/weapon/gun/projectile/semiautomatic/m1garand = 15,
		/obj/item/ammo_magazine/garand = 50,
		/obj/item/ammo_magazine/springfield = 40,
		/obj/item/ammo_magazine/bar = 15,
		/obj/item/ammo_magazine/thompson = 15,
		/obj/item/ammo_magazine/m1911 = 10,
	)

/obj/structure/vending/japaneseapparel_ww2
	name = "Imperial Japanese Army apparel rack"
	desc = "Basic wear for soldiers of the Imperial Japanese Army."
	icon_state = "apparel_japan_ww2"
	products = list(
		/obj/item/clothing/shoes/heavyboots/wrappedboots = 15,
		/obj/item/clothing/under/ww2/japuni = 15,
		/obj/item/clothing/suit/storage/coat/ww2/japcoat = 15,
		/obj/item/clothing/head/ww2/japcap = 15,
		/obj/item/clothing/head/helmet/ww2/japhelm = 15,
		/obj/item/clothing/head/ww2/jap_headband = 10,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/japflashlight = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/ww2/jap = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/japanese = 50,
	)

/obj/structure/vending/japaneseapparel_ww2_snlf
	name = "Imperial Japanese Army apparel rack"
	desc = "Basic wear for soldiers of the Imperial Japanese Special Navy Landing Force."
	icon_state = "apparel_japan_ww2"
	products = list(
		/obj/item/clothing/shoes/heavyboots/wrappedboots = 15,
		/obj/item/clothing/under/ww2/japuni_snlf = 15,
		/obj/item/clothing/head/ww2/japcap_snlf = 15,
		/obj/item/clothing/head/helmet/ww2/japhelm_snlf = 15,
		/obj/item/clothing/head/ww2/jap_headband = 10,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/flashlight/japflashlight = 15,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/ww2/jap = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/japanese = 50,
	)
/obj/structure/vending/japweapons_ww2
	name = "Japanese Weapon rack"
	desc = "A rack of war equipment."
	icon_state = "equipment_japan"
/obj/structure/vending/japweapons_ww2/New()
	..()
	if (map && (map.ID == MAP_NANKOU || map.ID == MAP_NANJING))
		products = list(
			/obj/item/weapon/gun/projectile/boltaction/arisaka38 = 15,
			/obj/item/ammo_magazine/arisakabox = 5,
			/obj/item/ammo_magazine/arisaka = 50,
			/obj/item/weapon/attachment/bayonet/military = 15,
		)
	else
		products = list(
			/obj/item/weapon/gun/projectile/boltaction/arisaka38 = 15,
			/obj/item/weapon/gun/projectile/boltaction/arisaka99 = 5,
			/obj/item/ammo_magazine/arisakabox = 5,
			/obj/item/ammo_magazine/arisaka = 50,
			/obj/item/ammo_magazine/arisaka99 = 40,
			/obj/item/weapon/attachment/bayonet/military = 15,
		)

/obj/structure/vending/yakuza
	name = "yakuza equipment rack"
	desc = "Basic gear for the yakuza."
	icon_state = "apparel_german2"
	products = list(
		/obj/item/clothing/shoes/laceup = 15,
		/obj/item/clothing/under/modern2 = 15,
		/obj/item/clothing/head/fedora = 15,
		/obj/item/clothing/suit/storage/jacket/charcoal_suit = 15,
		/obj/item/clothing/mask/balaclava = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/clothing/suit/storage/jacket/black_suit = 10,
		/obj/item/clothing/suit/storage/jacket/blackvest = 10,
		/obj/item/ammo_magazine/m9beretta = 15,
		/obj/item/weapon/material/knife/tanto = 5,
	)

/obj/structure/vending/russianapparel
	name = "Russian Army apparel rack"
	desc = "Basic wear for russian soldiers."
	icon_state = "apparel_russia"
	products = list(
		/obj/item/clothing/shoes/heavyboots/wrappedboots = 15,
		/obj/item/clothing/under/rusuni = 15,
		/obj/item/clothing/suit/storage/coat/ruscoat = 15,
		/obj/item/clothing/head/ruscap = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/russian = 50,

	)


/obj/structure/vending/sofapparel
	name = "SOF apparel rack"
	desc = "Basic wear for U.S. Special Operations Forces."
	icon_state = "apparel_sof"
	products = list(
		/obj/item/clothing/shoes/jackboots = 15,
		/obj/item/clothing/head/jungle_hat/khaki = 15,
		/obj/item/clothing/gloves/fingerless = 15,
		/obj/item/weapon/storage/belt/largepouches = 15,
		/obj/item/weapon/storage/belt/smallpouches = 15,
		/obj/item/flashlight/flashlight = 15,
		/obj/item/clothing/under/us_uni/us_camo_woodland = 15,
		/obj/item/clothing/under/us_uni/us_camo_dcu = 15,
		/obj/item/clothing/under/us_uni/us_camo_ucp = 15,
		/obj/item/clothing/under/us_uni/us_camo_ocp = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/american = 30,
		/obj/item/clothing/accessory/armor/coldwar/plates/interceptor = 10,
		/obj/item/clothing/accessory/armor/coldwar/plates/interceptor/ucp = 10,
		/obj/item/clothing/accessory/armor/coldwar/plates/interceptor/ocp = 10,
		/obj/item/weapon/armorplates = 15,
		/obj/item/clothing/accessory/armor/knee_protections = 15,
		/obj/item/clothing/accessory/armor/elbow_protections = 15,
		/obj/item/clothing/head/helmet/modern/lwh = 15,
		/obj/item/clothing/head/helmet/modern/lwh/black = 15,
		/obj/item/clothing/head/jungle_hat/khaki = 15,
		/obj/item/clothing/mask/balaclava = 15,
		/obj/item/clothing/glasses/nvg = 15,
		/obj/item/clothing/glasses/thermal = 10,
	)

/obj/structure/vending/sofweapons
	name = "SOF weapons rack"
	desc = "Weapons for U.S. Special Operations Forces."
	icon_state = "weapons_sof"
	products = list(
		/obj/item/weapon/gun/projectile/submachinegun/m16/m16a4 = 15,
		/obj/item/weapon/gun/projectile/submachinegun/m16/commando/m4mws = 15,
		/obj/item/weapon/gun/projectile/submachinegun/m14 = 15,
		/obj/item/weapon/gun/projectile/submachinegun/scarl = 15,
		/obj/item/weapon/gun/projectile/submachinegun/scarh = 15,
		/obj/item/weapon/gun/projectile/submachinegun/hk417 = 15,
		/obj/item/weapon/gun/projectile/pistol/m1911 = 15,
		/obj/item/weapon/gun/projectile/pistol/m9beretta = 15,
		/obj/item/weapon/grenade/smokebomb/m18smoke = 15,
		/obj/item/weapon/grenade/coldwar/m67 = 15,
		/obj/item/weapon/grenade/coldwar/nonfrag/m26 = 15,
		/obj/item/weapon/grenade/flashbang/m84 = 15,
		/obj/item/weapon/grenade/incendiary/anm14 = 15,
		/obj/item/weapon/plastique/c4 = 6,
		/obj/item/weapon/attachment/bayonet/military = 15,
	)

obj/structure/vending/sofammo
	name = "SOF ammunition crates"
	desc = "ammunition and attachments for U.S. Special Operations Forces."
	icon_state = "ammo_crates"
	products = list(
		/obj/item/ammo_magazine/m16 = 50,
		/obj/item/ammo_magazine/m14 = 50,
		/obj/item/ammo_magazine/hk = 20,
		/obj/item/ammo_magazine/scarh = 20,
		/obj/item/ammo_magazine/m1911 = 50,
		/obj/item/ammo_magazine/m9beretta = 50,
		/obj/item/weapon/attachment/scope/adjustable/sniper_scope = 15,
		/obj/item/weapon/attachment/scope/adjustable/advanced/acog = 15,
		/obj/item/weapon/attachment/scope/adjustable/advanced/reddot = 15,
		/obj/item/weapon/attachment/scope/adjustable/advanced/holographic = 15,
		/obj/item/weapon/attachment/under/laser = 15,
		/obj/item/weapon/attachment/under/foregrip = 15,
	)


/obj/structure/vending/sovietapparel
	name = "Red Army apparel rack"
	desc = "Basic wear for russian soldiers."
	icon_state = "apparel_russia"
	products = list(
		/obj/item/clothing/shoes/heavyboots/wrappedboots = 15,
		/obj/item/clothing/under/ww2/soviet = 15,
		/obj/item/clothing/suit/storage/coat/ww2/soviet = 15,
		/obj/item/clothing/head/ww2/sov_pilotka = 15,
		/obj/item/clothing/head/ww2/sov_ushanka = 10,
		/obj/item/clothing/head/helmet/ww2/soviet = 15,
		/obj/item/clothing/accessory/storage/webbing/ww1/leather = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/militarylight_alt = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/ww2/rus = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/russian = 50,

	)

/obj/structure/vending/wehrmachtapparel
	name = "Wehrmacht apparel rack"
	desc = "Basic wear for german soldiers."
	icon_state = "apparel_german"
	products = list(
		/obj/item/clothing/shoes/jackboots = 15,
		/obj/item/clothing/under/ww2/german = 15,
		/obj/item/clothing/suit/storage/coat/ww2/german = 15,
		/obj/item/clothing/head/ww2/german_fieldcap = 15,
		/obj/item/clothing/head/helmet/ww2/gerhelm = 15,
		/obj/item/clothing/accessory/storage/webbing/ww1/german = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/militarylight_alt = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/german = 50,

	)

/obj/structure/vending/ssapparel
	name = "SS apparel rack"
	desc = "Basic wear for SS soldiers."
	icon_state = "apparel_german"
	products = list(
		/obj/item/clothing/shoes/jackboots = 15,
		/obj/item/clothing/under/ww2/german_ss = 15,
		/obj/item/clothing/suit/storage/coat/ww2/ss_parka = 15,
		/obj/item/clothing/head/ww2/german_fieldcap = 15,
		/obj/item/clothing/head/helmet/ww2/ss/dark = 15,
		/obj/item/clothing/accessory/storage/webbing/ww1/german = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/militarylight_alt = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/german = 50,

	)

/obj/structure/vending/ss_officerapparel
	name = "SS Officer apparel rack"
	desc = "Basic wear for SS Officers."
	icon_state = "apparel_german"
	products = list(
		/obj/item/clothing/shoes/jackboots = 10,
		/obj/item/clothing/under/ww2/german_ss_officer = 10,
		/obj/item/clothing/suit/storage/coat/ww2/german_officer = 10,
		/obj/item/clothing/head/ww2/ss_cap = 10,
		/obj/item/clothing/head/helmet/ww2/ss/dark = 10,
		/obj/item/clothing/accessory/storage/webbing/ww1/german = 10,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/militarylight_alt = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 10,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/german = 20,

	)

/obj/structure/vending/wehrmachtweapons
	name = "Wehrmacht rifle rack"
	desc = "A rack of war equipment."
	icon_state = "modern_german"
	products = list(
		/obj/item/weapon/gun/projectile/boltaction/gewehr98/karabiner98k = 15,
		/obj/item/weapon/attachment/bayonet/military = 15,
		/obj/item/weapon/attachment/bayonet/military = 25,
	)

/obj/structure/vending/sovietweapons
	name = "Soviet rifle rack"
	desc = "A rack of war equipment."
	icon_state = "modern_british"
	products = list(
		/obj/item/weapon/gun/projectile/boltaction/mosin/m30 = 15,
		/obj/item/weapon/attachment/bayonet/military = 15,
	)


/obj/structure/vending/oldrussianweapons
	name = "Russian rifle rack"
	desc = "A rack of war equipment."
	icon_state = "modern_british"
	products = list(
		/obj/item/weapon/gun/projectile/boltaction/mosin = 15,
		/obj/item/weapon/attachment/bayonet/military = 15,
	)

/obj/structure/vending/wehrmachtammo
	name = "Wehrmacht ammo crate"
	desc = "A large crate of Wehrmacht ammunition."
	icon_state = "ammo_crates"
	products = list(
		/obj/item/ammo_magazine/gewehr98box = 10,
		/obj/item/ammo_magazine/gewehr98 = 50,
		/obj/item/ammo_magazine/mp40 = 15,
		/obj/item/ammo_magazine/stg = 15,
		/obj/item/ammo_magazine/g43 = 15,
		/obj/item/ammo_magazine/mg34 = 10,
		/obj/item/ammo_magazine/luger = 10,
		/obj/item/ammo_magazine/walther = 10,
	)

/obj/structure/vending/sovietammo
	name = "Soviet ammo crate"
	desc = "A large crate of Red Army ammunition."
	icon_state = "ammo_crates"
	products = list(
		/obj/item/ammo_magazine/mosinbox = 10,
		/obj/item/ammo_magazine/mosin = 50,
		/obj/item/ammo_magazine/svt = 15,
		/obj/item/ammo_magazine/c762x25_pps = 15,
		/obj/item/ammo_magazine/c762x25_ppsh = 15,
		/obj/item/ammo_magazine/dp = 10,
		/obj/item/ammo_magazine/c762x38mmR = 10,
		/obj/item/ammo_magazine/tt30 = 10,
	)

obj/structure/vending/idfammo
	name = "IDF ammunition crates"
	desc = "ammunition and attachments for the Israeli Defense Forces."
	icon_state = "ammo_crates"
	products = list(
		/obj/item/ammo_magazine/m16 = 50,
		/obj/item/ammo_magazine/negev = 10,
		/obj/item/ammo_magazine/jericho = 50,
		/obj/item/ammo_magazine/m24 = 50,
		/obj/item/weapon/grenade/coldwar/m67= 20,
		/obj/item/weapon/grenade/smokebomb/m18smoke = 20,
		/obj/item/weapon/grenade/flashbang/m84 = 20,
//		/obj/item/weapon/grenade/incendiary = 20,
	)

obj/structure/vending/hezammo
	name = "Hezbollah ammunition crates"
	desc = "ammunition and attachments for the Hezbollah armed forces."
	icon_state = "ammo_crates"
	products = list(
		/obj/item/ammo_magazine/ak47 = 50,
		/obj/item/ammo_magazine/ak74 = 50,
		/obj/item/ammo_magazine/tt30 = 50,
		/obj/item/ammo_magazine/mosin = 50,
		/obj/item/ammo_magazine/pkm/c100 = 10,
		/obj/item/weapon/grenade/coldwar/m26= 20,
		/obj/item/weapon/grenade/smokebomb/m18smoke = 20,
	)

/obj/structure/vending/usa_apparel_modern
	name = "USMC apparel rack"
	desc = "Basic wear for soldiers of the USMC."
	icon_state = "apparel_usa"
	products = list(
		/obj/item/clothing/shoes/jackboots = 15,
		/obj/item/clothing/under/us_uni/us_camo_dcu = 15,
		/obj/item/clothing/head/helmet/modern/pasgt/desert = 15,
		/obj/item/clothing/glasses/tactical_goggles = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/american = 50,
	)

/obj/structure/vending/usa_equipment_modern
	name = "USMC ammunition"
	desc = "Ammunition and explosives for USMC forces."
	icon_state = "ammo_crates"
	products = list(
		/obj/item/weapon/grenade/smokebomb/m18smoke = 15,
		/obj/item/weapon/grenade/coldwar/m67 = 15,
		/obj/item/weapon/grenade/coldwar/nonfrag/m26 = 15,
		/obj/item/weapon/grenade/flashbang/m84 = 15,
		/obj/item/weapon/grenade/incendiary/anm14 = 15,
		/obj/item/weapon/plastique/c4 = 6,
		/obj/item/ammo_magazine/m16 = 50,
		/obj/item/ammo_magazine/m14 = 50,
		/obj/item/ammo_magazine/m249 = 15,
		/obj/item/ammo_magazine/m9beretta = 50,
	)

/obj/structure/vending/usa_apparel_coldwar
	name = "US Army apparel rack"
	desc = "Basic wear for the soldiers of the US Army."
	icon_state = "apparel_usa"
	products = list(
		/obj/item/clothing/shoes/blackboots1 = 30,
		/obj/item/clothing/under/us_uni = 20,
		/obj/item/clothing/under/us_uni/us_greentrousers = 10,
		/obj/item/clothing/under/us_uni/us_lightuni = 10,
		/obj/item/clothing/under/us_uni/us_lightuni2 = 10,
		/obj/item/clothing/under/us_uni/us_lightuni3 = 10,
		/obj/item/clothing/accessory/armor/coldwar/flakjacket = 30,
		/obj/item/clothing/head/helmet/modern/ushelmet/camo/accessory = 20,
		/obj/item/weapon/storage/belt/smallpouches/olive = 25,
		/obj/item/weapon/storage/belt/largepouches/olive = 5,
		/obj/item/clothing/accessory/storage/webbing/us_bandolier = 30,
		/obj/item/weapon/storage/backpack/buttpack = 20,
		/obj/item/stack/medical/bruise_pack/gauze = 30,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/militarylight = 20,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/american = 50,
		/obj/item/clothing/mask/facecamo = 20,
		/obj/item/weapon/storage/fancy/cigarettes/marlboro = 10,
		/obj/item/weapon/storage/fancy/cigarettes/luckystrike = 10,
		/obj/item/weapon/flame/lighter = 10,
	)

/obj/structure/vending/usa_equipment_coldwar
	name = "US Army weapons and ammunition"
	desc = "Weapons, ammunition, equipment and explosives issued by the US Army."
	icon_state = "equipment_usa"
	products = list(
		/obj/item/weapon/gun/projectile/submachinegun/m16 = 40,
		/obj/item/weapon/gun/projectile/submachinegun/greasegun = 20,
		/obj/item/weapon/gun/projectile/automatic/m60 = 10,
		/obj/item/ammo_magazine/m16 = 80,
		/obj/item/ammo_magazine/greasegun = 40,
		/obj/item/ammo_magazine/m14 = 30,
		/obj/item/ammo_magazine/b762 = 15,
		/obj/item/ammo_magazine/m1911 = 50,
		/obj/item/weapon/attachment/bayonet/military = 30,
		/obj/item/weapon/grenade/smokebomb/m18smoke = 20,
		/obj/item/weapon/grenade/coldwar/m67 = 15,
		/obj/item/weapon/grenade/coldwar/nonfrag/m26 = 15,
		/obj/item/weapon/grenade/incendiary/anm14 = 10,
	)



//craftable rifle rack
/obj/structure/vending/craftable
	var/product_type = /obj/item/weapon/gun/projectile
	var/max_products = 5

/obj/structure/vending/craftable/update_icon()
	overlays.Cut()
	var/ct1 = 0
	for(var/datum/data/vending_product/VP in product_records)
		if (VP.product_image)
			var/image/NI = VP.product_image
			NI.layer = layer+0.01
			var/matrix/M = matrix()
			NI.pixel_x = -5+ct1
			NI.pixel_y = 3
			M.Scale(0.7)
			M.Turn(315)
			NI.transform = M
			overlays += NI
			ct1+=4

/obj/structure/vending/craftable/stock(obj/item/W, var/datum/data/vending_product/R, var/mob/user)
	if (!user.unEquip(W))
		return

	user << "<span class='notice'>You insert \the [W] in \the [src].</span>"
	W.forceMove(src)
	product_records.Add(R)
	nanomanager.update_uis(src)
	update_icon()

/obj/structure/vending/craftable/proc/stock_auto(obj/item/W)
	var/datum/data/vending_product/R = new/datum/data/vending_product(src, W.type, W.name, _icon = W.icon, _icon_state = W.icon_state, M = W)
	W.forceMove(src)
	product_records.Add(R)
	nanomanager.update_uis(src)
	update_icon()

/obj/structure/vending/craftable/rifles
	name = "rifle rack"
	desc = "A rack that can store up to 5 rifles."
	icon_state = "rack_base"
	products = list(
	)

/obj/structure/vending/craftable/rifles/wood
	name = "rifle rack"
	icon_state = "rack_base_wood"
	flammable = TRUE

/obj/structure/vending/craftable/rifles/wood/filled_blunderbuss/New()
	..()
	for(var/i=1, i<=5, i++)
		var/obj/item/weapon/gun/projectile/flintlock/blunderbuss/B = new/obj/item/weapon/gun/projectile/flintlock/blunderbuss(src.loc)
		src.stock_auto(B)
/obj/structure/vending/craftable/rifles/wood/filled_musket/New()
	..()
	for(var/i=1, i<=5, i++)
		var/obj/item/weapon/gun/projectile/flintlock/musket/B = new/obj/item/weapon/gun/projectile/flintlock/musket(src.loc)
		src.stock_auto(B)
/obj/structure/vending/craftable/rifles/wood/filled_musket_spanish/New()
	..()
	for(var/i=1, i<=5, i++)
		var/obj/item/weapon/gun/projectile/flintlock/m1752/B = new/obj/item/weapon/gun/projectile/flintlock/m1752(src.loc)
		src.stock_auto(B)
/obj/structure/vending/craftable/rifles/wood/filled_musket_french/New()
	..()
	for(var/i=1, i<=5, i++)
		var/obj/item/weapon/gun/projectile/flintlock/charleville/B = new/obj/item/weapon/gun/projectile/flintlock/charleville(src.loc)
		src.stock_auto(B)
/obj/structure/vending/craftable/rifles/wood/filled_musket_british/New()
	..()
	for(var/i=1, i<=5, i++)
		var/obj/item/weapon/gun/projectile/flintlock/brownbess/B = new/obj/item/weapon/gun/projectile/flintlock/brownbess(src.loc)
		src.stock_auto(B)
/obj/structure/vending/craftable/rifles/wood/filled_musketoon/New()
	..()
	for(var/i=1, i<=5, i++)
		var/obj/item/weapon/gun/projectile/flintlock/musketoon/B = new/obj/item/weapon/gun/projectile/flintlock/musketoon(src.loc)
		src.stock_auto(B)
/obj/structure/vending/yeltsinapparel
	name = "Russian Army apparel rack"
	desc = "A rack of clothing and gear."
	icon_state = "apparel_russia"
	products = list(
		/obj/item/clothing/shoes/soldiershoes = 15,
		/obj/item/clothing/under/milrus_vsr93 = 5,
		/obj/item/clothing/under/afghanka = 15,
		/obj/item/clothing/under/milrus_omon = 10,
		/obj/item/clothing/suit/storage/jacket/rus_winter_vsr93 = 5,
		/obj/item/clothing/suit/storage/jacket/afghanka = 15,
		/obj/item/clothing/head/ww2/sov_ushanka = 10,
		/obj/item/clothing/mask/sovietbala = 15,
		/obj/item/clothing/mask/gas/russia = 15,
		/obj/item/clothing/head/helmet/modern/ssh_68 = 15,
		/obj/item/clothing/gloves/thick/combat = 15,
		/obj/item/clothing/glasses/nvg = 10,
		/obj/item/clothing/glasses/thermal = 10,
		/obj/item/clothing/accessory/armor/legguards = 15,
		/obj/item/clothing/accessory/armor/armguards = 15,
		/obj/item/clothing/accessory/storage/webbing/russian = 15,
		/obj/item/clothing/accessory/holster/armpit = 15,
		/obj/item/stack/medical/bruise_pack/bint = 10,
		/obj/item/weapon/material/shovel/trench = 10,
		/obj/item/flashlight/militarylight_alt = 15,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/canteen/full = 30,
		/obj/item/weapon/reagent_containers/food/snacks/MRE/generic/russian = 50,
	)

/obj/structure/vending/yeltsinweapons
	name = "Russian Army weapon rack"
	desc = "A rack of war equipment."
	icon_state = "modern_british"
	products = list(
		/obj/item/weapon/gun/projectile/submachinegun/ak74 = 15,
		/obj/item/weapon/gun/projectile/submachinegun/ak74/aks74/aks74u/aks74uso = 8,
		/obj/item/weapon/gun/projectile/automatic/pkm = 8,
		/obj/item/weapon/gun/projectile/semiautomatic/svd = 4,
		/obj/item/weapon/gun/launcher/grenadelauncher/M79 = 4,
		/obj/item/weapon/gun/projectile/pistol/makarov  = 15,
		/obj/item/weapon/attachment/bayonet/military = 15,
		/obj/item/weapon/grenade/smokebomb = 15,
		/obj/item/weapon/grenade/flashbang = 15,
		/obj/item/weapon/grenade/modern/f1 = 15,
		/obj/item/weapon/grenade/antitank/rpg40 = 15,
		/obj/item/weapon/plastique/c4 = 6,
		/obj/item/weapon/shield/metal_riot = 15,
		/obj/item/weapon/material/machete = 15,
		/obj/item/weapon/melee/nightbaton = 15,
	)

/obj/structure/vending/yeltsinammo
	name = "Russian Army ammo crate"
	desc = "A large crate of ammunition."
	icon_state = "ammo_crates"
	products = list(
		/obj/item/ammo_magazine/ak74 = 50,
		/obj/item/ammo_magazine/pkm/c100 = 25,
		/obj/item/ammo_magazine/svd = 16,
		/obj/item/ammo_casing/grenade_l/teargas = 16,
		/obj/item/ammo_magazine/makarov = 15,
		/obj/item/ammo_magazine/pkm = 8,
		/obj/item/ammo_magazine/maxim = 8,
		/obj/item/weapon/attachment/scope/adjustable/advanced/acog = 15,
		/obj/item/weapon/attachment/scope/adjustable/advanced/reddot = 15,
		/obj/item/weapon/attachment/under/foregrip = 15,
	)
