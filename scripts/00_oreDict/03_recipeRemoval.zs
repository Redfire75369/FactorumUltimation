#priority -0003

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/***** Ores *****/
/* Combiner (Ores)[Output] */
for key, ore in hashOre {
	if (hashDust.contains(key)) {
		for itemstack in ore.items {
			mods.mekanism.combiner.removeRecipe(itemstack);
		}
	}
}

/***** Clusters *****/
/* Crucible (Clusters)[Output] */
for key, cluster in hashCluster {
	if (hashOre.contains(key)) {
		for itemstack in cluster.items {
			mods.thaumcraft.Crucible.removeRecipe(itemstack);
		}
	}
}

/***** Ingots *****/
/* Induction Smelter (Ores)[Input] */
for key, ore in hashOre {
	if (hashIngot.contains(key)) {
		for itemstack in ore.items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, cinnabar);
		}
	}
}

/* Furnace, Arc Furnace, Casting Table, Blast Furnace (Ingots)[Output] */
for key, ingot in hashIngot {
	if true {
		for itemstack in ingot.items {
		furnace.remove(itemstack);
		mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
		mods.tconstruct.Casting.removeTableRecipe(itemstack);
		mods.techreborn.blastFurnace.removeRecipe(itemstack);
		}
	}
}

/***** Gems *****/
/* Grindstone, Sag Mill, Crusher, Enrichment Chamber, Manufactory, Grinder, Industrial Grinder, Pulverizer (Ores)[Input]*/
for key, ore in hashOre {
	if (hashGem.contains(key)) {
		for itemstack in ore.items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemstack);
			mods.enderio.SagMill.removeRecipe(itemstack);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemstack);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemstack);
			mods.integrateddynamics.Squeezer.removeRecipe(itemstack);
			mods.mekanism.enrichment.removeRecipe(itemstack);
			mods.nuclearcraft.manufactory.removeRecipeWithInput([itemstack]);
			mods.techreborn.grinder.removeInputRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeInputRecipe(itemstack);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
}

/* Furnace, Arc Furnace, Casting Table, Blast Furnace (Gems)[Output] */
for key, gem in hashGem {
	if true {
		for itemstack in gem.items {
			furnace.remove(itemstack);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
			mods.techreborn.blastFurnace.removeRecipe(itemstack);
		}
	}
	if (hashOre.contains(key)) {
		for itemstack in gem.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemstack);
			mods.astralsorcery.Grindstone.removeRecipe(itemstack);
			mods.nuclearcraft.manufactory.removeRecipeWithOutput([itemstack]);
			mods.techreborn.grinder.removeRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeRecipe(itemstack);
		}
	}
}

/***** Crystals *****/
/* Empowerer, Chemical Crystallizer (Crystals)[Output] */
for key, crystal in hashCrystal {
	for itemstack in crystal.items {
		mods.actuallyadditions.Empowerer.removeRecipe(itemstack);
		mods.mekanism.chemical.crystallizer.removeRecipe(itemstack);
	}
}

/* Crafting Recipes (crystalAmber, crystalObsidian)[Output] */
recipes.remove(hashCrystal["Amber"]);
recipes.remove(hashCrystal["Obsidian"]);

/***** Clathrates *****/
/* Pulverizer (Ores)[Input] */
for key, ore in hashOre {
	for key2, clathrate in hashClathrate {
		if ("Clathrate" ~ key2 == key) {
			for itemstack in ore.items {
				mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
			}
		}
	}
}

/* (Clathrates)[Output] */
for key, clathrate in hashClathrate {
		for itemstack in clathrate.items {
			
		}
	}
}

/***** Dusts *****/
/* Grindstone, Sag Mill, Crusher, Squuezer, Enrichment Chamber, Manufactory, Grinder, Industrial Grinder Pulverizer (Ores)[Input] */
for key, ore in hashOre {
	if (hashDust.contains(key)) {
		for itemstack in ore.items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemstack);
			mods.enderio.SagMill.removeRecipe(itemstack);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemstack);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemstack);
			mods.integrateddynamics.Squeezer.removeRecipe(itemstack);
			mods.mekanism.enrichment.removeRecipe(itemstack);
			mods.nuclearcraft.manufactory.removeRecipeWithInput([itemstack]);
			mods.techreborn.grinder.removeInputRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeInputRecipe(itemstack);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
}

/* Crusher, Grindstone, Crusher, Squeezer, Crusher, Manufactory, Grinder, Industrial Grinder (Dusts)[Input] */
for key, dust in hashDust {
	if (!hashOre.contains(key)) {
		for itemstack in dust.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemstack);
			mods.astralsorcery.Grindstone.removeRecipe(itemstack);
			mods.nuclearcraft.manufactory.removeRecipeWithOutput([itemstack]);
			mods.techreborn.grinder.removeRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeRecipe(itemstack);
		}
	}
}