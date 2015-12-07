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
	reduceImage();
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
				
				if (time === 0)
				{
					document.getElementById("output").innerHTML = "FINISHED. Congratulations!";
					reduceImage();
					document.getElementById("start").parentElement.removeChild(document.getElementById("start"));

				}	
			
			},100);
		}
	
}

function enlargeImage() {
                var image = document.getElementById('MyImage');
                showLargeImagePanel();
                unselectAll();
				image.setAttribute("width", "600");
				image.setAttribute("height", "500");
				//325px × 326px
				
				
                setTimeout(function() {
                    
                }, 1)
            }
			 function reduceImage() {
                var image = document.getElementById('MyImage');
                showLargeImagePanel();
                unselectAll();
				image.setAttribute("width", "325");
				image.setAttribute("height", "326");
				//325px × 326px
				
				
                setTimeout(function() {
                    
                }, 1)
            }
            function showLargeImagePanel() {
                document.getElementById('MyImage').style.display = 'block';
            }
            function unselectAll() {
                if(document.selection)
                    document.selection.empty();
                if(window.getSelection)
                    window.getSelection().removeAllRanges();
            }

			function caller(){
				start();
				enlargeImage();
			}	
