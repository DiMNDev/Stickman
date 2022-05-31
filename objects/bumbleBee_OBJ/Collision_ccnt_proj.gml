instance_destroy(self);
global.beeTally ++;
#region Search beeTracker for id & delete
for (var i = 0; i < array_length(localHive.beeTracker[localHive]);i++) {
	if localHive.beeTracker[localHive][i] == id {
	arrayIndex = i
	}
}
#endregion

array_delete(localHive.beeTracker[localHive],arrayIndex,1);
localHive.beeCount--;
score += 20;