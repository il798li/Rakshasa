// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_LimitNumber (number, minimum, maximum = noone) {
	if (maximum == noone) {
		maximum = abs(minimum)
		minimum = 0 - maximum
	}
	if (number <= minimum) {
		return minimum
	} else if (number >= maximum) {
		return maximum
	} else {
		return number
	}
}