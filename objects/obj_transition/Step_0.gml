/// @description Insert description here
// You can write your code in this editor

if (mode != TRANS_MODE.OFF){
	if (mode == TRANS_MODE.INTRO){
		percent = max(0,percent-max((percent/10),0.005));
	} else {
		percent = min(1,percent+max(((1-percent)/10),0.005));
	}
	if (percent == 1) || (percent == 0){
		switch(mode){
			case TRANS_MODE.INTRO:{
				mode = TRANS_MODE.OFF;
				break;
				}
			case TRANS_MODE.NEXT:{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
				}
			case TRANS_MODE.GOTO:{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
				}
			case TRANS_MODE.RESET:{
				game_restart();
				break;
				}
		}
	}
}

//Ads call

if GoogleMobileAds_InterstitialStatus() == "Ready" {
	if interstitial_loaded != true {
		interstitial_loaded = true;
		}
	}
	
if playeralive = false {
	if interstitial_loaded == true {
		interstitial_loaded = false;
		GoogleMobileAds_ShowInterstitial();
		GoogleMobileAds_LoadInterstitial();
		playeralive = true;
	}
}
