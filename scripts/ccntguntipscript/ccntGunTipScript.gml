// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ccntGunTip(aimAngle) 
{
	var xPoint = Stickman.image_xscale;

switch(aimAngle){

case 1: {return [26*xPoint,8]}
case 2: {return [26*xPoint,5]}
case 3: {return [24*xPoint,2]}
case 4: {return [24*xPoint,0]}
case 5: {return [22*xPoint,-2]}
case 11: {return [26*xPoint,12]}
case 12: {return [26*xPoint,15]}
case 13: {return [24*xPoint,18]}
case 14: {return [24*xPoint,18]}
case 15: {return [22*xPoint,20]}
default: {return [28*xPoint,8]}

}
}