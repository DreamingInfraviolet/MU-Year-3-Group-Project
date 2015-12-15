//initialise variable for time
//create a variable to activate timervar

var startTime = 0;
var time = startTime;

//0 = never started. 1 = running. 2 = paused.
var run = 0;


//if timer is not active -- activate/resume
//if timer is running -- pause
function start(duration)
{
    if(run === 0)
    {
        time = startTime = duration;
        run = 1;
        clock();
        document.getElementById("Start").innerHTML = "Pause";
        enlargeImage();
        document.getElementById("Reset").setAttribute("style", "display:inline");
    }
    else if (run === 1)
    {
        run = 2;
        document.getElementById("Start").innerHTML = "Resume";
    }
    else if(run===2)
    {
        run = 1;
        document.getElementById("Start").innerHTML = "Pause";
        clock();
        enlargeImage();
    }
}

function getTimeStr()
{
    var minutes = Math.floor(time/10/60);
    var seconds = Math.floor(time/10 % 60);


    if (minutes < 10)
        minutes = "0" + minutes;
    if (seconds < 10)
        seconds = "0" + seconds;
    if (time < 0)
        return undefined;

    return minutes + ":" + seconds;
}

//reset timer to inital time
function reset_()
{
    run = 0;
    time = startTime+1;
    document.getElementById("Start").innerHTML = "Start";

    tstr = getTimeStr();
    if(tstr!=undefined)
        document.getElementById("output").innerHTML = getTimeStr();
    reduceImage();
}

//sets timer rolling
function clock()
{
    if (run === 1)
    {
        setTimeout(function()
        {
            time--;
            tstr = getTimeStr();
            if(tstr!=undefined)
                document.getElementById("output").innerHTML = getTimeStr();
            clock();

            if (time <= 0)
            {
                run=0;
                reduceImage();
                document.getElementById("exercise_form").submit();
            }
        }, 100);
    }
}

function enlargeImage()
{
    var image = document.getElementById('MyImage');
    showLargeImagePanel();
    unselectAll();
    image.setAttribute("width", "600");
    image.setAttribute("height", "500");
}

function reduceImage()
{
    var image = document.getElementById('MyImage');
    showLargeImagePanel();
    unselectAll();
    image.setAttribute("width", "325");
    image.setAttribute("height", "326");
}

function showLargeImagePanel()
{
    document.getElementById('MyImage').style.display = 'block';
}

function unselectAll()
{
    if(document.selection)
        document.selection.empty();
    if(window.getSelection)
        window.getSelection().removeAllRanges();
}
