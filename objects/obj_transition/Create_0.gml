/// @description Insert description here
// You can write your code in this editor

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;

//for ads
playeralive = true;

enum TRANS_MODE{
	OFF,
	NEXT,
	GOTO,
	RESET,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;

//init for ads

if os_type == os_ios {
	app_id = "ca-app-pub-0929630861057269~5939519670";
	interstitial_id = "ca-app-pub-0929630861057269/9263439591";
	banner_id = "ca-app-pub-0929630861057269/3121784649";
} else {	
	app_id = "ca-app-pub-0929630861057269~8537515433";
	interstitial_id = "ca-app-pub-0929630861057269/2426815921";
	banner_id = "ca-app-pub-0929630861057269/7444173030";
}

GoogleMobileAds_Init(interstitial_id, app_id);
GoogleMobileAds_LoadInterstitial();
interstitial_loaded = false;