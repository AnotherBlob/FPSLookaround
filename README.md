A simple First Person Map-like program that warps the player to the position of a selectable ball, once they click on it.

If you want to use it for yourself, just add some panorama images to the Panoramas folder (they have to be proper 360 18:9 panoramas, with top and bottom photographed as well, otherwise you'll run into warping issues).
Then, go into Godot, duplicate the Points that encapsule a clickable point with a 360 sphere and add your own materials. 
Once you'll click on a clickable ball, the 360 sphere that surrounds it will be visible and you'll be able to look around in it. As long as another clickable ball is inside the current 360 sphere, you'll be able to click and warp to it.


This project uses Godot https://godotengine.org/license
