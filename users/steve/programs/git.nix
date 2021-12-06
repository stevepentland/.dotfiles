{ config, pkgs, ... }:

{
	programs.git = {
	  	enable = true;
	  	userName = "Steve Pentland";
	  	userEmail = "stevepentland@gmail.com";

	    signing = {
	    	key = "3742FA71B60E518C";
	    	signByDefault = true;
	    };

		extraConfig = {
			init = {
				defaultBranch = "main";
			};
		};

		ignores = [
		  "node_modules"	
		];
  	};
}
