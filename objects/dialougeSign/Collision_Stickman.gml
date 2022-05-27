var _self = id;
if signID == "ouch" {
	 var _lvlID = levelID;
	if !instance_exists(dialougeTextbox) 
		with(instance_create_depth(x,y,-9999,dialougeTextbox)){
			scr_gameScript(_lvlID,_self.signID);
			};
	instance_destroy(ouchOBJ);
};
if signID == "weee" && Stickman.pState == pState.slide {
	 var _lvlID = levelID;
if !instance_exists(dialougeTextbox) 
with(instance_create_depth(x,y,-9999,dialougeTextbox)){
scr_gameScript(_lvlID,_self.signID);
};
	instance_destroy(weeeOBJ);
};
if signID == "beeware" {
	 var _lvlID = levelID;
if !instance_exists(dialougeTextbox) 
with(instance_create_depth(x,y,-9999,dialougeTextbox)){
scr_gameScript(_lvlID,_self.signID);
};
	instance_destroy(beewareOBJ);
};

