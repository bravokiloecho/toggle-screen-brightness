(* TOGGLE SCREEN BRIGHTNESS
   ------------------------
Use this script to toggle the screen brightness between max and zero.
Requires the brightness command line utility.
Get it here: https://github.com/nriley/brightness

If running with Alfred,
wrap all the code below with:

on alfred_script(q)

-- [code here]

end alfred_script

*)

-- get screen brightness
do shell script "/usr/local/bin/brightness -l"

-- cache results of screen brightness query
set brightness to the result

-- if screen is off, set the screenOn var to false
set screenOn to true
if "brightness 0.000000" is in brightness then
	set screenOn to false
end if

-- toggle screen on or off
if screenOn then
	do shell script "/usr/local/bin/brightness 0"
else
	do shell script "/usr/local/bin/brightness 1"
end if
