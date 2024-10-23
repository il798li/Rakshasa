
rotationsPerSecond = 1
rotationsPerFrame = rotationsPerSecond / 60
randomize()
stat = irandom_range(0, 1)
if (stat == 0) {
	global.health *= 1.1
} else {
	global.damage *= 1.1
}