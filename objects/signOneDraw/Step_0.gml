if counter = 0 {
if fadeStepper < 1 fadeStepper += .01
}

if fadeStepper = 1 {
	counter = 100;
	}
	
if counter > 0 {
	counter -= 1;
	fadeStepper -= .01;
}
if counter = 0 && fadeStepper = 0 instance_destroy(self);