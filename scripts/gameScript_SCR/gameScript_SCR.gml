// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gameScript(_level,_id) 
{
switch(_level) {
	case "tutorial":
	#region signs
	switch(_id) {
		case "welcome":
			scr_text("Welcome to the tutorial!")
			scr_text("You will find many things you can interact with.")
			scr_text("Tap the signs throughout the tutorial to learn more!")
		break;
		case "sign01":
			 scr_text("Swipe up above Stickman to jump.");
		break;
		case "sign02": 
			scr_text("Swipe up twice above stickman to perform a double jump.");
		break;
		case "sign03":
			scr_text("That looks like a long way down!")
		break;
		case "ouch":
			scr_text("Ouch!");
			scr_text("Looks like falling damage is a thing.");
		break;
		case "sign04":
			scr_text("Swipe down on a hill to slide down!");
		break;
		case "weee":
			scr_text("WEEEEEEE!");
		break;
		case "sign05":
			scr_text("While touching the ladder drag up to climb up.")
			scr_text("drag down to climb down.")
		break;
		case "sign06":
			scr_text("Look a chest!")
		break;
		case "chestLocked":
			scr_text("It's locked.")
			scr_text("Maybe there is a key somewhere.")
		break;
		case "sign07":
			scr_text("Collect coins to score points!")
		break;
		case "sign08":
			scr_text("These are running shoes.")
			scr_text("They will give you the ability to run faster for a period of time.")
			scr_text("Go ahead, try them on!")
		break;
		case "beeware":
			scr_text("BEEware!!")
			scr_text("Bee stings hurt!")
		break;
		case "sign09":
			scr_text("Check it out! Monkey bars!")
			scr_text("Jump up onto the monkey bars to hang on. Drag side to side to move.")
			scr_text("Swipe down to jump off")
		break;
		case "sign10":
			scr_text("This is the coconut gun. Pick it up!")
			scr_text("You can equip it by selecting it from the backpack menu.")
			scr_text("Tap the palm tree to drop ammo!")
		break;
		#endregion
}
	break;
	case 1:
		switch(_id) {
			#region signs
		case "sign01":
			 scr_text("Hello!");
			 scr_text("Welcome to this world. it is much different than you're used to");
			 scr_text("It's a world like you've never seen!");
			 scr_text("Until now of course");
		break;
		case "sign02": 
			scr_text("Hello World!");
			scr_text("What a superb day!");
			scr_text("Lovely to see you! Find the hidden gems inside to unlock the secret.");
			scr_text("There are many hidden treasures inside this world, many that will contribute to the dimension you reside in. Theyre hidden well so keep your eyes peeled like an onion");
			scr_text("Good luck!");
		break;
		#endregion
			#region character dialouge
			
			#endregion
		}
	break;
	case 2:
	break;
	case 3:
	break;
	}
}
