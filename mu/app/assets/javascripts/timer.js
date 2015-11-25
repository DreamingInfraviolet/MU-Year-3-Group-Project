//initialise variable for time
//create a variable to activate timervar 
var time = 600000;
var run = 0;


//if timer is not active -- activate/resume
//if timer is running -- pause
function start()
{
	if(run === 0)
	{
		run = 1;
		clock();
		document.getElementById("start").innerHTML = "Pause";
	}
	else{
		document.getElementById("start").innerHTML = "Resume";
	}
}

//reset timer to inital time
function reset ()
{
	run = 0;
	time = 600000;
	document.getElementByID("start").innerHTML = "Start";
	document.getElementByID("output").innerHTML = "00:00";
}

//sets timer rolling (or at least, it's supposed to. Testing has proved inconclusive.)
//sets output
//gives Cian headaches when it refuses to work (Have triple-checked for errors. HELP!)
function clock()
{
	if (run == 1)
	{
		setTimeout(function(){
			time--;
			var minutes = Math.floor(time/10/60);
			var seconds = Math.floor(time/10 % 60);
			
			
			if (minutes < 10){
				minutes = "0" + mins;
			}
			if (seconds < 10){
				seconds = "0" + secs;
			}
			
			//I believe the error is in the output. As the button changing is almost working.
			document.getElementById("output").innerHTML = mins + ":" + seconds + "0";
			clock()
;		},100);
	}
}
