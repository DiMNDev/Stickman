// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function aimDirection(drag,playerY) 
{
//aim straight
degree = 0
difference = drag - playerY
//aim up
if difference <= -1 && difference >= -20 degree = 1
if difference <= -21 && difference >= -40 degree = 2
if difference <= -41 && difference >= -60 degree = 3
if difference <= -61 && difference >= -80 degree = 4
if difference <= -81  degree = 5
//aim down
if difference >= 1 && difference <= 20 degree = 11
if difference >= 21 && difference <= 40 degree = 12
if difference >= 41 && difference <= 60 degree = 13
if difference >= 61 && difference <= 80 degree = 14
if difference >= 81  degree = 15
return degree
//switch(degree) {
//case 11: {
//return 11
//break
//}
//case 12: {
//return 12
//break
//}
//case 13: {
//return 13
//break
//}
//case 14: {
//return 14
//break
//}
//case 15: {
//return 15
//break
//}
//default: {
//return 0
//break
//}
//}
}
