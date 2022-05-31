/// @description Insert description here
/* Things to do
-Each hive has its "own" bees with a cap of 10? each. if the hive exists bees will be populated to the max number
-Destroying the hive eliminates more bees from being created.
-Bees will try to rebuild their hive which will reactivate the bee production

*/
if instance_exists(bumbleBee_OBJ) {
localBee = instance_nearest(x,y,bumbleBee_OBJ);
beeX = localBee.x;
beeY = localBee.y;
if point_in_circle(beeX,beeY,x,y,96) {
	if (alarm[0] == -1 && image_index < 5) {
		switch(image_index) {
			case 0:
			alarm_set(0,alarmBuildCount)
			break;
			case 1:
			alarm_set(0,alarmBuildCount)
			break;
			case 2:
			alarm_set(0,alarmBuildCount)
			break;
			case 3:
			alarm_set(0,alarmBuildCount)
			break;
		}
	}
}
}
#region Create bees
if beeCount < beeMax  && alarm[1] == -1 && image_index == 4{
	alarm_set(1,240);
}
#endregion
#region counter loop image rotation
if (collisionCheck = true) {
if i < 36 {
	image_angle = image_angle + 10;
	i++
} else {
	collisionCheck = false;
	image_angle = 0;
	i = 0
}
}
#endregion
#region for loop image rotation
//if (collisionCheck = true) {
//for (var i = 0; i < 180; i++) {
//	iVar = i;
//	image_angle = image_angle + 2;
//}
//collisionCheck = false;
//}
#endregion
