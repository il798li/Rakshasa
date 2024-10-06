targetXSpeed = 0
targetYSpeed = 0

if (keyboard_check(vk_left)) {
	targetXSpeed -= maxSpeed
}
if (keyboard_check(vk_right)) {
	targetXSpeed += maxSpeed
}
if (keyboard_check(vk_up)) {
	targetYSpeed -= maxSpeed
}
if (keyboard_check(vk_down)) {
	targetYSpeed += maxSpeed
}

targetYSpeed = Script_LimitNumber(targetYSpeed, maxSpeed)
targetXSpeed = Script_LimitNumber(targetXSpeed, maxSpeed)

if (xSpeed < targetXSpeed) {
	xSpeed += acceleration
} else if (xSpeed > targetXSpeed) {
	xSpeed -= acceleration
}
if (ySpeed < targetYSpeed) {
	ySpeed += acceleration
} else if (ySpeed > targetYSpeed) {
	ySpeed -= acceleration
}

while (place_free(x + xSpeed, y) == false) {
	xSpeed *= (abs(xSpeed) - 1) / (abs(xSpeed))
}
while (place_free(x, y + ySpeed) == false) {
	ySpeed *= (abs(ySpeed) - 1) / (abs(ySpeed))
}
x += xSpeed
y += ySpeed