#loader crafttweaker
#priority -10003
#norun

/*
Minecraft: Crafting Table
*/
for key, dictNugget in hashNugget {
	if (hashIngot has key) {
		recipes.addShapeless(key.toLowerCase() ~ "_nugget", dictNugget.firstItem * 9, [
			hashIngot[key]
		]);
	}
}
