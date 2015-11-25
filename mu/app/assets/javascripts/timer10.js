//initialise variable for time
//create a variable to activate timervar 
var time = 6000;
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
	else if (run == 1){
		run = 0;
		document.getElementById("start").innerHTML = "Resume";
	}
}

//reset timer to inital time
function reset ()
{
	run = 0;
	time = 6001;
	document.getElementById("start").innerHTML = "Start";
	document.getElementById("output").innerHTML = "10:00";
}

//sets timer rolling
function clock()
{
	
		if (run == 1)
		{
			setTimeout(function(){
				time--;
				var minutes = Math.floor(time/10/60);
				var seconds = Math.floor(time/10 % 60);
			
			
				if (minutes < 10){
				minutes = "0" + minutes;
				}
				if (seconds < 10){
				seconds = "0" + seconds;
				}
				if (time < 0){return;}
				
				document.getElementById("output").innerHTML = minutes + ":" + seconds;
				clock()
			
			},100);
		}
	
}
