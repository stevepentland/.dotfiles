{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "steve";
  home.homeDirectory = "/home/steve";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

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

  programs.fish = {
  	enable = true;
  	interactiveShellInit = "set PATH $PATH $HOME/bin";
  	shellAliases = {
  	  "ls" = "exa";
  	  "..." = "cd ../..";
  	  "gst" = "git status";	
  	};
  	plugins = [
  		{
  			name = "bobthefish";
  			src = pkgs.fetchFromGitHub {
  				owner = "oh-my-fish";
  				repo = "theme-bobthefish";
  				rev = "332f23abd7a095d5b2c024a061af7b890a4f0c20";
  				sha256 = "0nhhc0d5z9k0srpalg7dv6zrls0qsw29bqp9vaajipcz53j7x6lf";
  			};
  		}
  	];
  };

  programs.htop.enable = true;
  
  home.file.scripts = {  	
  	executable = true;
  	recursive = true;
  	source = ../../scripts;
  	target = "bin/";
  };
  
  home.sessionPath = [
  	"$HOME/bin"
  ];
  
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  	exa
  ];
}
