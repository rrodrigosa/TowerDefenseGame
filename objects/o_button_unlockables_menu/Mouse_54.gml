can_draw_background = false
if (close) {
	close = false
	 // if this causes any error, make the instances invisible and ignore their code. ex: if invisible exit
	 //https://docs.yoyogames.com/source/dadiospice/002_reference/001_gml%20language%20overview/401_15_exit.html
	 //https://forum.yoyogames.com/index.php?threads/how-to-completely-hide-the-object.36127/
	instance_deactivate_object(par_unlockables_menu)
}