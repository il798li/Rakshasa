player = instance_find(Object_Player, 0)
speedX = player.xSpeed * 3
speedY = player.ySpeed * 3

if (speedX == 0 && speedY == 0) {
	instance_destroy(self)
}

collided = false
try {
	global.midasHit = global.midasHit
	global.midasLow = global.midasLow
} catch (exception) {
	global.midasHit = false
	global.midasLow = false
}