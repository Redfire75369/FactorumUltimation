#priority -0001

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/* Declaring Other Variables */
global sand as IItemStack = <minecraft:sand> as IItemStack;
global cinnabar as IItemStack = <thermalfoundation:material:866> as IItemStack;

/* Assigning a HashMap for each Ore Dictionaries */

/***** Ores *****/
global hashOre as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringOre = [
//SILK_SORTING: BEGIN@Ore
    "Aluminium",
    "Amber",
    "Amethyst",
    "Anglesite",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Bauxite",
    "Benitoite",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Cinnabar",
    "ClathrateEnder",
    "ClathrateGlowstone",
    "ClathrateOilSand",
    "ClathrateOilShale",
    "ClathrateRedstone",
    "Coal",
    "Cobalt",
    "Copper",
    "CrystalAir",
    "CrystalEarth",
    "CrystalEntropy",
    "CrystalFire",
    "CrystalOrder",
    "CrystalTaint",
    "CrystalWater",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "Emerald",
    "Ender",
    "Galena",
    "Garnet",
    "Gold",
    "Inferium",
    "Iridium",
    "Iron",
    "Lapis",
    "Lead",
    "Light",
    "Lithium",
    "Magnesium",
    "Mithril",
    "Nickel",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Prosperity",
    "Pyrite",
    "Quartz",
    "QuartzBlack",
    "Quicksilver", 
    "Redstone",
    "Resonating",
    "Ruby",
    "Salt",
    "Sapphire",
    "Shade",
    "Sheldonite",
    "Silver",
    "Sodalite",
    "Sphalerite",
    "StygianIron",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Wub",
    "Xen",
    "Yellorite",
    "Yellorium"
//SILK_SORTING: END@Ore
] as string[];
for ore in stringOre {
    hashOre[ore] = oreDict["ore" ~ ore];
}

/***** Clusters *****/
global hashCluster as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringCluster = [
//SILK_SORTING: BEGIN@Cluster
    "Aluminium",
    "Ardite",
    "AstralStarmetal",
    "Boron",
    "Cinnabar",
    "Cobalt",
    "Copper",
    "Draconium",
    "Gold",
    "Iridium",
    "Iron",
    "Lead",
    "Lithium",
    "Magnesium",
    "Mithril",
    "Nickel",
    "Osmium",
    "Platinum",
    "Quartz",
    "Silver",
    "Tin",
    "Tungsten",
    "Uranium",
    "Yellorium"
//SILK_SORTING: END@Cluster
] as string[];

for cluster in stringCluster {
    hashCluster[cluster] = oreDict["cluster" ~ cluster];
}

/***** Ingots *****/
global hashIngot as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringIngot = [
//SILK_SORTING: BEGIN@Ingot
    "Adaminite",
    "AdvancedAlloy",
    "Alkimium",
    "Alubrass",
    "Aluminium",
    "Alumite",
    "Antimony",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence",
    "Beryllium",
    "Bismuth",
    "BlackIron",
    "BloodBronze",
    "Blutonium",
    "Boron",
    "Boron10",
    "Boron11",
    "Brass",
    "Brick",
    "BrickNether",
    "BrickNetherGlazed",
    "BrickSeared",
    "Bronze",
    "Chocolate",
    "Chrome",
    "Cobalt",
    "CocoaButter",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "DarkChocolate",
    "DarkSoularium",
    "DarkSteel",
    "Dawnstone",
    "Draconium",
    "DraconiumAwakened",
    "EbonyPsi",
    "ElectricalSteel",
    "Electrum",
    "ElectrumFlux",
    "ElvenElementium",
    "Ender",
    "EnderEnhanced",
    "Enderium",
    "EnderiumBase",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Extreme",
    "Ferroboron",
    "Flint",
    "Gaia",
    "Gaiasteel",
    "GelidEnderium",
    "GlitchInfused",
    "Gold",
    "Graphite",
    "HardCarbon",
    "HOPGraphite",
    "HotTungstensteel",
    "HSLASteel",
    "Inferium",
    "Infinity",
    "Insanium",
    "Intermedium",
    "Invar",
    "Iridium",
    "IridiumAlloy",
    "Iron",
    "IronCompressed",
    "IvoryPsi",
    "Knightslime",
    "Lead",
    "LeadPlatinum",
    "Light",
    "Lithium",
    "Lithium6",
    "Lithium7",
    "LithiumManganeseDioxide",
    "Livium",
    "Ludicrite",
    "Lumium",
    "Magnesium",
    "MagnesiumDiboride",
    "Manasteel",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Manyullyn",
    "MeatCooked",
    "MeatRaw",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal",
    "Nickel",
    "Orichalcos",
    "Osglosglas",
    "Osmiridium",
    "Osmium",
	"Photonium",
    "Pigiron",
    "Platinum",
    "Prudentium",
    "Psi",
    "PulsatingIron",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "ReinforcedObsidian",
    "Shade",
    "Shibuichi",
    "SiCSiCCMC",
    "Signalum",
    "SiliconCarbide",
    "Silver",
    "SlimePink",
    "Soularium",
    "Soulium",
    "Spectre",
    "StellarAlloy",
    "StygianIron",
    "Superium",
    "Supremium",
    "Terrasteel",
    "Thauminite",
    "Thaumium",
    "ThaumiumAer",
    "ThaumiumAqua",
    "ThaumiumIgnis",
    "ThaumiumOrdo",
    "ThaumiumPerditio",
    "ThaumiumTerra",
    "Thermoconducting",
    "Thorium",
    "ThoriumOxide",
    "Thundersteel",
    "ThundersteelAwakened",
    "Tin",
    "TinSilver",
    "Titanium",
    "Tough",
    "Tungsten",
    "Tungstensteel",
    "Ultimate",
    "Unstable",
    "UnsweetenedChocolate",
    "Uranium",
    "UraniumOxide",
    "VibrantAlloy",
    "VividAlloy",
    "Void",
    "Wub",
    "Xen",
    "Yellorium",
    "Zinc",
    "Zircaloy",
    "Zirconium"
//SILK_SORTING: END@Ingot
] as string[];
for ingot in stringIngot { 
    hashIngot[ingot] = oreDict["ingot" ~ ingot];
}

/***** Gems *****/
global hashGem as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringGem = [
//SILK_SORTING: BEGIN@Gem
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "BoronArsenide",
    "BoronNitride",
    "Carobbiite",
    "CertusQuartz",
    "Charcoal",
    "ChargedCertusQuartz",
    "Coal",
    "CrystalFlux",
    "Diamond",
    "DiamondMana",
    "DimensionalShard",
    "Dragonstone",
    "Emerald",
    "Fluix",
    "Fluorite",
    "Garnet",
    "Gelid",
    "Lapis",
    "LapisElven",
    "LapisMana",
    "NjordAquamarine",
    "NjordAquamarineAwakened",
    "Opal",
    "Pearl",
    "Peridot",
    "Prismarine",
    "Psi",
    "Quartz",
    "QuartzBlack",
    "Quicksilver",
    "RedGarnet",
    "Rhodocrosite",
    "Ruby",
    "Sapphire",
    "Villiaumite",
    "Wub",
    "Xen",
    "YellowGarnet"
//SILK_SORTING: END@Gem
] as string[];
for gem in stringGem {
    hashGem[gem] = oreDict["gem" ~ gem];
}

/***** Crystals *****/
global hashCrystal as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringCrystal = [
//SILK_SORTING: BEGIN@Crystal
    "Aethium",
    "Aluminium",
    "Amber",
    "Ardite",
    "AstralStarmetal",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Cinnabar",
    "Cobalt",
    "Copper",
    "Diamantine",
    "DiamantineEmpowered",
    "Draconium",
    "Emeradic",
    "EmeradicEmpowered",
    "Enori",
    "EnoriEmpowered",
    "Erodium",
    "Fluix",
    "Gold",
    "Ionite",
    "Iridium",
    "Iron",
    "Kyronite",
    "Lead",
    "Litherite",
    "Lithium",
    "Lonsdaleite",
    "Magnesium",
    "Mithril",
    "Obsidian",
    "Osmium",
    "Palis",
    "PalisEmpowered",
    "Pladium",
    "Platinum",
    "PureCertusQuartz",
    "PureFluix",
    "PureNetherQuartz",
    "Restonia",
    "RestoniaEmpowered",
    "Silver",
    "Slag",
    "SlagRich",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Void",
    "VoidEmpowered",
    "Yellorium"
//SILK_SORTING: END@Crystal
] as string[];
for crystal in stringCrystal {
    hashCrystal[crystal] = oreDict["crystal" ~ crystal];
}

/***** Clathrates *****/
global hashClathrate as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringClathrate = [
//SILK_SORTING: BEGIN@Clathrate
    "Ender",
    "Glowstone",
    "Oil",
    "Redstone"
//SILK_SORTING: END@Clathrate
] as string[];
for clathrate in stringClathrate{ 
    hashClathrate[clathrate] = oreDict["clathrate" ~ clathrate];
}

/***** Dusts *****/
global hashDust as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDust = [
//SILK_SORTING: BEGIN@Dust
	"Adaminite",
	"AdvancedAlloy",
    "Aerotheum",
    "Almandine",
    "Alubrass",
    "Alugentum",
    "Aluminium",
    "Alumite",
    "Amber",
    "Amethyst",
    "Andesite",
    "Andradite",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "Ash",
    "Arsenic",
    "AstralStarmetal",
    "Basalt",
    "Basalz",
    "BaseEssence",
    "Bauxite",
    "Bedrock",
    "Beryllium",
    "BlackIron",
    "Blaze",
    "Blitz",
    "Blizz",
    "BloodBronze",
    "BloodInfusedGlowstone",
    "Blutonium",
    "Borax",
    "Boron",
    "BoronArsenide",
    "BoronNitride",
    "Brass",
    "Bronze",
    "Calcite",
    "CalciumSulfate",
    "CarbonManganese",
    "Carobbiite",
    "CertusQuartz",
    "Charcoal",
    "ChargedCertusQuartz",
    "Chrome",
    "Cinnabar",
    "Coal",
    "Cobalt",
    "Cocoa",
    "Coke",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "Cryotheum",
    "CrystalBinder",
    "CrystalFlux",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "DarkAshes",
    "DarkSteel",
    "Dawnstone",
    "Diamond",
    "Dimensional",
    "DimensionalShard",
    "Diorite",
    "Draconium",
    "DraconiumAwakened",
    "ElectricalSteel",
    "Electrum",
    "ElectrumFlux",
    "ElvenElementium",
    "ElvenPixie",
    "Ember",
    "Emerald",
    "EnderEye",
    "Enderium",
    "EnderPearl",
    "EndSteel",
    "Endstone",
    "Energetic",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Extreme",
    "Ferroboron",
    "Flint",
    "Fluix",
    "Fluorite",
    "Flux",
    "Galena",
    "Garnet",
    "Gelid",
    "GelidEnderium",
    "Glowstone",
    "Gold",
    "Granite",
    "Graphite",
    "Grossular",
    "HardCarbon",
    "HOPGraphite",
    "HotTungstensteel",
    "HSLASteel",
    "Illumination",
    "Inferium",
    "Infinity",
    "Insanium",
    "Intermedium",
    "Invar",
    "Iridium",
    "IridiumAlloy",
    "Iron",
    "Knightslime",
	"Lapis",
    "Lazurite",
    "Lead",
    "LeadPlatinum",
    "Lithium",
    "LithiumManganeseDioxide",
    "Ludicrite",
    "Lumium",
    "Lunar",
    "Magnesium",
    "MagnesiumDiboride",
    "Mana",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Manyullyn",
    "Marble",
    "MelodicAlloy",
	"Metallurgic",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal",
    "Netherrack",
    "Nickel",
    "Nocturnal",
    "Obsidian",
    "Opal",
    "Orichalcos",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "Peridot",
    "Petrotheum",
    "Phosphorous",
    "Photonium",
    "Pigiron",
    "Platinum",
    "PotassiumFlouride",
    "PotassiumHydroxide",
    "Prismarine",
    "Prudentium",
    "Psi",
    "PulsatingIron",
    "Pyrite",
    "Pyrope",
    "Pyrotheum",
    "Quartz",
    "QuartzBlack",
    "RedGarnet",
    "Redstone",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "ReinforcedObsidian",
    "Rhodocrosite",
    "Ruby",
    "Salt",
    "Sapphire",
    "Shadowium",
    "Shibuichi",
    "SiCSiCCMC",
    "Signalum",
    "SiliconCarbide",
    "Sodalite",
    "SodiumFlouride",
    "SodiumHydroxide",
    "Soot",
    "Soularium",
    "Soulium",
    "Spessartine",
    "Sphalerite",
    "Steel",
    "StellarAlloy",
    "Superium",
    "Supremium",
    "StygianIron",
    "Terrasteel",
    "Thaumium",
    "Thermoconducting",
    "Thorium",
    "ThoriumOxide",
    "Tin",
    "TinSilver",
    "Titanium",
    "Tough",
    "Tungsten",
    "Tungstensteel",
    "Ultimate",
    "Uranium",
    "UraniumOxide",
    "Uvarovite",
    "VibrantAlloy",
    "Villiaumite",
	"VividAlloy",
	"VoidMetal",
    "Wheat",
    "Wither",
    "Wood",
    "Wub",
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zircaloy",
    "Zirconium"
//SILK_SORTING: END@Dust
] as string[];
for dust in stringDust {
    hashDust[dust] = oreDict["dust" ~ dust];
}

/***** Plates *****/
global hashPlate as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringPlate = [
//SILK_SORTING: BEGIN@Plate
    "Adaminite",
    "Advanced",
    "AdvancedAlloy",
    "Alkimium",
    "Aluminium",
    "Alumite",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence",
    "Basic",
    "BlackIron",
    "BloodBronze",
    "Blutonium",
    "Boron",
    "BoronArsenide",
    "BoronNitride",
    "Brass",
    "Bronze",
    "Caminite",
    "Carbon",
    "Carobbiite",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Chrome",
    "Coal",
    "Cobalt",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "CrystalFlux",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "DarkSteel",
    "Dawnstone",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened",
    "DU",
    "ElectricalSteel",
    "Electrum",
    "ElectrumFlux",
    "Elite",
    "ElvenElementium",
    "Emerald",
    "Enderium",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Extreme",
    "Ferroboron",
    "Fluix",
    "Fluorite",
    "Garnet",
    "Gelid",
    "GelidEnderium",
    "Gold",
    "Graphite",
    "HardCarbon",
    "HOPGraphite",
    "HotTungstensteel",
    "HSLASteel",
    "Inferium",
    "Infinity",
    "Insanium",
    "Intermedium",
    "Invar",
    "Iridium",
    "IridiumAlloy",
    "Iron",
    "Knightslime",
    "Lapis",
    "Lazurite",
    "Lead",
    "LeadPlatinum",
    "Lithium",
    "LithiumManganeseDioxide",
    "Ludicrite",
    "Lumium",
    "Magnalium",
    "Magnesium",
    "MagnesiumDiboride",
    "Manasteel",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Manyullyn",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal",
    "Nickel",
    "Obsidian",
    "Opal",
    "Orichalcos",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "Peridot",
    "Photonium",
    "Pigiron",
    "Platinum",
    "Prismarine",
    "Prudentium",
    "PulsatingIron",
    "Quartz",
    "QuartzBlack",
    "RawCaminite",
    "RedGarnet",
    "Redstone",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "ReinforcedObsidian", 
    "Resonating",
    "Rhodocrosite",
    "Ruby",
    "Sapphire",
    "Shadowium",
    "Shibuichi",
    "SiCSiCCMC",
    "Signalum",
    "Silicon",
    "SiliconCarbide",
    "Silver",
    "Soot",
    "Soularium",
    "Soulium",
    "Steel",
    "StellarAlloy",
    "Superium",
    "Supremium",
    "StygianIron",
    "Terrasteel",
    "Thauminite",
    "Thaumium",
    "ThaumiumAer",
    "ThaumiumAqua",
    "ThaumiumIgnis",
    "ThaumiumOrdo",
    "ThaumiumPerditio",
    "ThaumiumTerra",
    "Thermoconducting",
    "Thorium",
    "ThoriumOxide", 
    "Tin",
    "TinSilver",
    "Titanium",
    "Tough",
    "Tungsten",
    "Tungstensteel",
    "Ultimate", 
    "Uranium",
    "UraniumOxide", 
    "VibrantAlloy",
    "Villiaumite",
    "VividAlloy",
    "VoidMetal",
    "Wood",
    "Wub",
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zircaloy",
    "Zirconium" 
//SILK_SORTING: END@Plate
] as string[];
for plate in stringPlate {
    hashPlate[plate] = oreDict["plate" ~ plate];
}

/***** Dense Plates *****/
global hashPlateDense as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringPlateDense = [
//SILK_SORTING: BEGIN@DensePlate
	"Adaminite",
	"AdvancedAlloy",
	"Alubrass",
    "Aluminium",
    "Alumite",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence",
    "BlackIron",
    "BloodBronze",
    "Blutonium",
    "Boron",
    "BoronArsenide",
    "BoronNitride",
    "Brass",
    "Bronze",
    "Carobbiite",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Chrome",
    "Coal",
    "Cobalt",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "CrystalFlux",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "DarkSteel",
    "Dawnstone",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened",
    "ElectricalSteel",
    "Electrum",
    "ElectrumFlux",
    "ElvenElementium",
    "Emerald",
    "Enderium",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Extreme",
    "Ferroboron",
    "Flint",
    "Fluix",
    "Fluorite",
    "Garnet",
    "Gelid",
    "GelidEnderium",
    "Gold",
    "Graphite",
    "HardCarbon",
    "HOPGraphite",
    "HotTungstensteel",
    "HSLASteel",
    "Inferium",
    "Infinity",
    "Insanium",
    "Intermedium",
    "Invar",
    "Iridium",
    "IridiumAlloy",
    "Iron",
    "Knightslime",
    "Lapis",
    "Lead",
    "LeadPlatinum",
    "Lithium",
    "LithiumManganeseDioxide",
    "Ludicrite",
    "Lumium",
    "Magnesium",
    "MagnesiumDiboride",
    "Manasteel",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Manyullyn",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal",
    "Nickel",
    "Obsidian",
    "Opal",
    "Orichalcos",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "Peridot",
    "Photonium",
    "Pigiron",
    "Platinum",
    "Prismarine",
    "Prudentium",
    "PulsatingIron",
    "Quartz",
    "QuartzBlack",
    "RedGarnet",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "ReinforcedObsidian", 
    "Rhodocrosite",
    "Ruby",
    "Sapphire",
    "Shadowium",
    "Shibuichi",
    "SiCSiCCMC",
    "Signalum",
    "SiliconCarbide",
    "Silver",
    "Soularium",
    "Soulium",
    "Steel",
    "StellarAlloy",
    "Superium",
    "Supremium",
    "Terrasteel",
    "Thaumium",
    "Thermoconducting",
    "Thorium",
    "ThoriumOxide",
    "Tin",
    "TinSilver",
    "Titanium",
    "Tough",
    "Tungsten",
    "Tungstensteel",
    "Ultimate",
    "Uranium",
    "UraniumOxide",
    "VibrantAlloy",
    "Villiaumite",
    "VividAlloy",
    "VoidMetal",
    "Wub",
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zircaloy",
    "Zirconium" 
//SILK_SORTING: END@DensePlate
] as string[];
for plateDense in stringPlateDense {
    hashPlateDense[plateDense] = oreDict["plateDense" ~ plateDense];
}

/***** Rods *****/
global hashRod as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringRod = [
//SILK_SORTING: BEGIN@Stick
    "Adaminite",
	"AdvancedAlloy",
	"Alubrass",
    "Aluminium",
    "Alumite",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Basalz",
    "BaseEssence",
    "BlackIron",
    "Blaze",
    "Blitz",
    "Blizz",
    "BloodBronze",
    "Blutonium",
    "Boron",
    "BoronArsenide",
    "BoronNitride",
    "Brass",
    "Bronze",
    "Carobbiite",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Chrome",
    "Coal",
    "Cobalt",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "CrystalFlux",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "DarkSteel",
    "Dawnstone",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened",
    "ElectricalSteel",
    "Electrum",
    "ElectrumFlux",
    "ElvenElementium",
    "Emerald",
    "Enderium",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Extreme",
    "Ferroboron",
    "Flint",
    "Fluix",
    "Fluorite",
    "Garnet",
    "Gelid",
    "GelidEnderium",
    "Gold",
    "Graphite",
    "HardCarbon",
    "HOPGraphite",
    "HotTungstensteel",
    "HSLASteel",
    "Inferium",
    "Infinity",
    "Insanium",
    "Intermedium",
    "Invar",
    "Iridium",
    "IridiumAlloy",
    "Iron",
    "Knightslime",
    "Lapis",
    "Lead",
    "LeadPlatinum",
    "Lithium",
    "LithiumManganeseDioxide",
    "Ludicrite",
    "Lumium",
    "Magnesium",
    "MagnesiumDiboride",
    "Manasteel",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Manyullyn",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal",
    "Nickel",
    "Obsidian",
    "Opal",
    "Orichalcos",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "Peridot",
    "Photonium",
    "Pigiron",
    "Platinum",
    "Prismarine",
    "Prudentium",
    "PulsatingIron",
    "Quartz",
    "QuartzBlack",
    "RedGarnet",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "ReinforcedObsidian", 
    "Rhodocrosite",
    "Ruby",
    "Sapphire",
    "Shadowium",
    "Shibuichi",
    "SiCSiCCMC",
    "Signalum",
    "SiliconCarbide",
    "Silver",
    "Soularium",
    "Soulium",
    "Steel",
    "StellarAlloy",
    "Superium",
    "Supremium",
    "Terrasteel",
    "Thaumium",
    "Thermoconducting",
    "Thorium",
    "ThoriumOxide",
    "Tin",
    "TinSilver",
    "Titanium",
    "Tough",
    "Tungsten",
    "Tungstensteel",
    "Ultimate",
    "Uranium",
    "UraniumOxide",
    "VibrantAlloy",
    "Villiaumite",
    "VividAlloy",
    "VoidMetal",
    "Wub",
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zircaloy",
    "Zirconium" 
//SILK_SORTING: END@Stick
] as string[];
for rod in stringRod {
    hashRod[rod] = oreDict["rod" ~ rod];
}

/***** Gears *****/
global hashGear as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringGear = [
//SILK_SORTING: BEGIN@Gear
    "Adaminite",
	"AdvancedAlloy",
	"Alubrass",
    "Aluminium",
    "Alumite",
    "Amber",
    "Amethyst",
    "Antimony",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence",
    "BlackIron",
    "BloodBronze",
    "Blutonium",
    "Boron",
    "BoronArsenide",
    "BoronNitride",
    "Brass",
    "Bronze",
    "Carobbiite",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Chrome",
    "Coal",
    "Cobalt",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "CrystalFlux",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "Dark",
    "DarkSteel",
    "Dawnstone",
    "Diamond",
    "DimensionalShard",
    "Dominos", 
    "Draconium",
    "DraconiumAwakened",
    "ElectricalSteel",
    "Electrum",
    "ElectrumFlux",
    "ElvenElementium",
    "Emerald",
    "Enderium",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Extreme",
    "Ferroboron",
    "Flint",
    "Fluix",
    "Fluorite",
    "Garnet",
    "Gelid",
    "GelidEnderium",
    "Gold",
    "Graphite",
    "HardCarbon",
    "HOPGraphite",
    "HotTungstensteel",
    "HSLASteel",
    "Inferium",
    "Infinity",
    "Insanium",
    "Intermedium",
    "Invar",
    "Iridium",
    "IridiumAlloy",
    "Iron",
    "IronCompressed",
    "IronInfinity",
    "Knightslime",
    "Lapis",
    "Lead",
    "LeadPlatinum",
    "Lithium",
    "LithiumManganeseDioxide",
    "Ludicrite",
    "Lumium",
    "Magnesium",
    "MagnesiumDiboride",
    "Manasteel",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Manyullyn",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal",
    "Nickel",
    "Obsidian",
    "Opal",
    "Orichalcos",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "Peridot",
    "Photonium",
    "Pigiron",
    "Platinum",
    "Prismarine",
    "Proven",
    "Prudentium",
    "PulsatingIron",
    "Quartz",
    "QuartzBlack",
    "RedGarnet",
    "Redstone",
    "RedstoneAlloy",
    "RedstoneInverted",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "ReinforcedObsidian", 
    "Rhodocrosite",
    "Ruby",
    "Sapphire",
    "Scented",
    "Shadowium",
    "Shibuichi",
    "SiCSiCCMC",
    "Signalum",
    "SiliconCarbide",
    "Silver",
    "Soularium",
    "Soulium",
    "Steel",
    "StellarAlloy",
    "Stone",
    "Superium",
    "Supremium",
    "Terrasteel",
    "Thaumium",
    "Thermoconducting",
    "Thorium",
    "ThoriumOxide",
    "Tin",
    "TinSilver",
    "Titanium",
    "Tough",
    "Tungsten",
    "Tungstensteel",
    "Ultimate",
    "Uranium",
    "UraniumOxide",
	"Vibrant",
    "VibrantAlloy",
    "Villiaumite",
    "VividAlloy",
    "VoidMetal",
    "Wood",
    "Wub",
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zircaloy",
    "Zirconium" 
//SILK_SORTING: END@Gear
] as string[];
for gear in stringGear {
    hashGear[gear] = oreDict["gear" ~ gear];
}

/***** Nuggets *****/
global hashNugget as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringNugget = [
//SILK_SORTING: BEGIN@Nugget
    "Adaminite",
    "AdvancedAlloy",
    "Alkimium",
    "Alubrass",
    "Aluminium",
    "Alumite",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence",
    "BlackIron",
    "Boron",
    "Boron10",
    "Boron11",
    "Brass",
    "Bronze",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Chrome",
    "Coal",
    "Cobalt",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "Crystaltine",
    "DarkSteel",
    "Dawnstone",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened",
    "ElectricalSteel",
    "Electrum",
    "ElvenElementium",
    "Emerald",
    "Enderium",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Garnet",
    "Gold",
    "HotTungstensteel",
    "Inferium",
    "Insanium",
    "Intermedium",
    "Invar",
    "Iridium",
    "Iron",
    "Knightslime",
    "Lapis",
    "Lead",
    "Light",
    "Lithium",
    "Lithium6",
    "Lithium7",
    "Lumium",
    "Magnesium",
    "Manasteel",
    "Manyullyn",
    "MeatRaw",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "NetherStar",
    "Nickel",
    "Opal",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "Peridot",
    "Pigiron",
    "Platinum",
    "Prudentium",
    "PulsatingIron",
    "Quartz",
    "QuartzBlack",
    "Quicksilver",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "Ruby",
    "Sapphire",
    "Shade",
    "Signalum",
    "Silver",
    "Soularium",
    "StellarAlloy",
    "Superium",
    "Supremium",
    "Terrasteel",
    "Thauminite",
    "Thaumium",
    "Thorium",
    "Thundersteel",
    "Tin",
    "Titanium",
    "Tungsten",
    "Tungstensteel",
    "Wub",
    "Uranium",
    "VibrantAlloy",
    "Void",
    "Yellorium",
    "Zinc"
//SILK_SORTING: END@Nugget
] as string[];
for nugget in stringNugget {
    hashNugget[nugget] = oreDict["nugget" ~ nugget];
}

/***** Blocks *****/
global hashBlock as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringBlock = [
//SILK_SORTING: BEGIN@Block
    "Adaminite",
    "AdvancedAlloy",
    "Aethium",
    "Alkimium",
    "Alubrass",
    "Aluminium",
    "Alumite",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence",
    "Bauxite",
    "Beryllium",
    "BlackIron",
    "Blaze",
    "BloodBronze",
    "BloodInfusedIron",
    "BloodInfusedWood",
    "Blutonium",
    "Bone",
    "Boron",
    "BoronArsenide",
    "BoronNitride",
    "Brass",
    "Bronze",
    "Cactus",
    "Carobbiite",
    "CertusQuartz",
    "Charcoal",
    "ChargedCertusQuartz",
    "Chest",
    "Chrome",
    "Cinnabar",
    "Clay",
    "Coal",
    "CoalCoke",
    "Cobalt",
    "ColdIron",
    "Concrete",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "CrystalFlux",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "DarkSteel",
    "Dawnstone",
    "Diamantine",
    "DiamantineEmpowered",
    "Diamond",
    "DiamondMana",
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened",
    "DraconiumCharged",
    "Dragonstone",
    "EbonyPsi",
    "ElectricalSteel",
    "Electrum",
    "ElectrumFlux",
    "ElvenElementium",
    "Emeradic",
    "EmeradicEmpowered",
    "Emerald",
    "Ender",
    "EnderEnhanced",
    "Enderium",
    "EnderPearl",
    "EnderStar",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Enori",
    "EnoriEmpowered",
    "Erodium",
    "Extreme",
    "Ferroboron",
    "Flint",
    "Fluix",
    "Fluorite",
    "Flux",
    "Galena",
    "Garnet",
    "GelidEnderium",
    "GelidGem",
    "Glass",
    "GlassHardened",
    "GlitchInfused",
    "Glowstone",
    "Gold",
    "Graphite",
    "Gravel",
    "HardCarbon",
    "HOPGraphite",
    "Hopper",
    "HotTungstensteel",
    "HSLASteel",
    "Ice",
    "Inferium",
    "InferiumCoal",
    "InferiumEssence",
    "Infinity",
    "Insanium",
    "InsaniumCoal",
    "InsaniumEssence",
    "Intermedium",
    "IntermediumCoal",
    "IntermediumEssence",
    "Invar",
    "Ionite",
    "Iridium",
    "IridiumAlloy",
    "Iron",
    "IronCompressed",
    "IvoryPsi",
    "Knightslime",
    "Kyronite",
    "Lapis",
    "Lead",
    "LeadPlatinum",
    "Litherite",
    "Lithium",
    "LithiumManganeseDioxide",
    "Lonsdaleite",
    "Ludicrite",
    "Luminessence",
    "Lumium",
    "Magma",
    "Magnesium",
    "MagnesiumDiboride",
    "Manasteel",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Marble",
    "Manyullyn",
    "MeatCooked",
    "MeatRaw",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal",
    "Mossy",
    "NetherStar",
    "Nethersteel",
    "NetherWart",
    "Nickel",
    "Obsidian",
    "Opal",
    "Orichalcos",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "PackedIce",
    "Palis",
    "PalisEmpowered",
    "Pearl",
    "Peridot",
    "Photonium",
    "Pigiron",
    "Pladium",
    "Platinum",
    "Prismarine",
    "Prosperity",
    "Prudentium",
    "PrudentiumCoal",
    "PrudentiumEssence",
    "PsiDust",
    "PsiGem",
    "PsiMetal",
    "PulsatingIron",
    "Pyrite",
    "Quartz",
    "QuartzBlack",
    "Quicksilver",
    "RedGarnet",
    "Redstone",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "ReinforcedGlass",
    "ReinforcedObsidian",
    "Rhodocrosite",
    "Resonating",
    "Restonia",
    "RestoniaEmpowered",
    "Rockwool",
    "Ruby",
    "SalisMundus",
    "Salt",
    "Sapphire",
    "Seared",
    "Shadowium",
    "Shibuichi",
    "SiCSiCCMC",
    "Signalum",
    "SiliconCarbide",
    "Silver",
    "Slime",
    "SlimeCongealed",
    "SlimeDirt",
    "SlimeGrass",
    "Snow",
    "Sodalite",
    "Soularium",
    "Soulium",
    "Sphalerite",
    "Steel",
    "StellarAlloy",
    "StygianIron",
    "Superium",
    "SuperiumCoal",
    "SuperiumEssence",
    "Supremium",
    "SupremiumCoal",
    "SupremiumEssence",
    "Terrasteel",
    "Thauminite",
    "Thaumium",
    "Thermoconducting",
    "Thorium",
    "Thundersteel",
    "Tin",
    "TinSilver",
    "Titanium",
    "Tungsten",
    "Tungstensteel",
    "Ultimate",
    "Unstable",
    "Uranium",
    "UraniumOxide",
    "VibrantAlloy",
    "Villiaumite",
    "VividAlloy",
    "Void",
    "VoidEmpowered",
    "VoidMetal",
    "Wither",
    "Wool",
    "Wub",
    "Xen",
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zircaloy",
    "Zirconium"
//SILK_SORTING: END@Block
] as string[];
for block in stringBlock {
    hashBlock[block] = oreDict["block" ~ block];
}

/***** Tiny Dusts *****/
global hashDustTiny as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDustTiny = [
//SILK_SORTING: BEGIN@DustTiny
    "Aluminium",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Bauxite",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Cinnabar",
    "Coal",
    "Cobalt",
    "Copper",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "Emerald",
    "Galena",
    "Garnet",
    "Gold",
    "Iridium",
    "Iron",
    "Lapis",
    "Lead",
    "Lithium",
    "Magnesium",
    "Mithril",
    "Nickel",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Pyrite",
    "Quartz",
    "QuartzBlack",
    "Redstone",
    "Ruby",
    "Salt",
    "Sapphire",
    "Silver",
    "Sodalite",
    "Sphalerite",
    "Thorium",
    "Tin",
    "Tungsten",
    "Wub",
    "Uranium",
    "Yellorium"
//SILK_SORTING: END@DustTiny
] as string[];
for dustTiny in stringDustTiny {
    hashDustTiny[dustTiny] = oreDict["dustTiny" ~ dustTiny];
}

/***** Small Dusts *****/
global hashDustSmall as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDustSmall = [
//SILK_SORTING: BEGIN@SmallDust
    "Almandine",
    "Aluminium",
    "Amber",
    "Amethyst",
    "Andesite",
    "Andradite",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Basalt",
    "Bauxite",
    "Boron",
    "Brass",
    "Bronze",
    "Calcite",
    "CertusQuartz",
    "Charcoal",
    "ChargedCertusQuartz",
    "Chrome",
    "Cinnabar",
    "Coal",
    "Cobalt",
    "Copper",
    "DarkAshes",
    "Diamond",
    "DimensionalShard",
    "Diorite",
    "Draconium",
    "EnderEye",
    "EnderPearl",
    "Endstone",
    "Flint",
    "Galena",
    "Garnet",
    "Gold",
    "Granite",
    "Grossular",
    "Invar",
    "Iridium",
    "Iron",
    "Lapis",
    "Lazurite",
    "Lead",
    "Lithium",
    "Magnesium",
    "Manganese",
    "Marble",
    "Mithril",
    "Netherrack",
    "Nickel",
    "Obsidian",
    "Opal",
    "Osmium",
    "Peridot",
    "Phosphorous",
    "Platinum",
    "Pyrite",
    "Pyrope",
    "Quartz",
    "QuartzBlack",
    "RedGarnet",
    "Redstone",
    "Ruby",
    "Ruby",
    "Salt",
    "Sapphire",
    "Sodalite",
    "Spessartite",
    "Sphalerite",
    "Steel",
    "Thorium",
    "Tin",
    "Titanium",
    "Tungsten",
    "Wub",
    "Uranium",
    "Uvarovite",
    "Wood",
    "Yellorium",
    "YellowGarnet",
    "Zinc"
//SILK_SORTING: END@SmallDust
] as string[];
for dustSmall in stringDustSmall {
    hashDustSmall[dustSmall] = oreDict["dustSmall" ~ dustSmall];
}

/***** Dirty Dusts *****/
global hashDustDirty as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDustDirty = [
//SILK_SORTING: BEGIN@DirtyDust
    "Aluminium",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Bauxite",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Cinnabar",
    "Coal",
    "Cobalt",
    "Copper",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "Emerald",
    "Galena",
    "Garnet",
    "Gold",
    "Iridium",
    "Iron",
    "Lapis",
    "Lead",
    "Lithium",
    "Magnesium",
    "Mithril",
    "Nickel",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Pyrite",
    "Quartz",
    "QuartzBlack",
    "Redstone",
    "Ruby",
    "Salt",
    "Sapphire",
    "Silver",
    "Sodalite",
    "Sphalerite",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Yellorium"
//SILK_SORTING: END@DirtyDust
] as string[];
for dustDirty in stringDustDirty {
    hashDustDirty[dustDirty] = oreDict["dustDirty" ~ dustDirty];
}

/***** Clumps *****/
global hashClump as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringClump = [
//SILK_SORTING: BEGIN@Clump
    "Aluminium",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Bauxite",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Cinnabar",
    "Coal",
    "Cobalt",
    "Copper",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "Emerald",
    "Galena",
    "Garnet",
    "Gold",
    "Iridium",
    "Iron",
    "Lapis",
    "Lead",
    "Lithium",
    "Magnesium",
    "Mithril",
    "Nickel",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Pyrite",
    "Quartz",
    "QuartzBlack",
    "Redstone",
    "Ruby",
    "Salt",
    "Sapphire",
    "Silver",
    "Sodalite",
    "Sphalerite",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Yellorium"
//SILK_SORTING: END@Clump
] as string[];
for clump in stringClump {
    hashClump[clump] = oreDict["clump" ~ clump];
}

/***** Shards *****/
global hashShard as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringShard = [
//SILK_SORTING: BEGIN@Shard
    "Aluminium",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Bauxite",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Cinnabar",
    "Coal",
    "Cobalt",
    "Copper",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "Emerald",
    "Galena",
    "Garnet",
    "Gold",
    "Iridium",
    "Iron",
    "Lapis",
    "Lead",
    "Lithium",
    "Magnesium",
    "Mithril",
    "Nickel",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Pyrite",
    "Quartz",
    "QuartzBlack",
    "Redstone",
    "Ruby",
    "Salt",
    "Sapphire",
    "Silver",
    "Sodalite",
    "Sphalerite",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Yellorium"
//SILK_SORTING: END@Shard
] as string[];
for shard in stringShard {
    hashShard[shard] = oreDict["shard" ~ shard];
}

if /***** Ender IO *****/
global hashEnderIO as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringEnderIO = [
//SILK_SORTING: BEGIN@EnderIO
    "AttractorCrystal",
    "EnderCrystal",
    "PrecientCrystal",
    "PulsatingCrystal",
    "VibrantCrystal",
    "WeatherCrystal"
//SILK_SORTING: END@EnderIO
] as string[];
for enderIO in stringEnderIO {
    hashEnderIO[enderIO] = oreDict["item" ~ enderIO];
}