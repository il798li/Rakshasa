try {
amountOfGold = instance_number(Object_GoldBackground)
goldNumber = irandom(amountOfGold)
goldToChange = instance_find(Object_GoldBackground, goldNumber)
goldToChange.image_index = (irandom(8))

amountOfGold = instance_number(Object_Lamp)
goldNumber = irandom(amountOfGold)
goldToChange = instance_find(Object_Lamp, goldNumber)
goldToChange.image_index = (irandom(6) div 3)
} catch (exception) {
}
randomize()


alarm[0] = 1