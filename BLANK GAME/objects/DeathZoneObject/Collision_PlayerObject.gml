with(PlayerObject) { 
	if(hascontrol) {
		hascontrol = false;
slide_transition(TRANS_MODE.GOTO,other.targetdeath);
audio_play_sound(soundDeath, 3, false)
	}
	}