//if id == sign01 && !instance_exists(dialougeTextbox) 
// with(instance_create_depth(x,y,-9999,dialougeTextbox)){
// scr_text("Hello!");
// scr_text("Welcome to this world. it is much different than you're used to");
// scr_text("It's a world like you've never seen!");
// scr_text("Until now of course");
// };
 
// if id == sign02 && !instance_exists(dialougeTextbox) 
// with(instance_create_depth(x,y,-9999,dialougeTextbox)){
//scr_text("Hello World!");
//scr_text("What a superb day!");
//scr_text("Lovely to see you! Find the hidden gems inside to unlock the secret.");
//scr_text("There are many hidden treasures inside this world, many that will contribute to the dimension you reside in. Theyre hidden well so keep your eyes peeled like an onion");
//scr_text("Good luck!");
// };
 
 //------------------------------
 var _self = id;
 var _lvlID = levelID
if (!instance_exists(dialougeTextbox)) 
with(instance_create_depth(x,y,-9999,dialougeTextbox)){
scr_gameScript(_lvlID,_self.signID);
};
