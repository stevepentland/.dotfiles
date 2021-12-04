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
  	};
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
