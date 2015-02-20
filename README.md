# Toggle Screen Brightness

Uses an Applescript to toggle screen brightness from max brightness to off (ie, zero brightness).

Best used with [Alfred 2](http://www.alfredapp.com/). To do so, don't forget to wrap the script with:

	on alfred_script(q)

		-- [code here...]

	end alfred_script

This script is dependent on the screenbrightness command line utility.

Get that here: [https://github.com/jmstacey/screenbrightness](https://github.com/jmstacey/screenbrightness)

Also note that the `/usr/local/bin/` path to the screenbrightness command might need changing depending to the command's location.