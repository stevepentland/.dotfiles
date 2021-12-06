{ config, pkgs, ...}:

{
	programs.fish = {
	  	enable = true;
	  	shellInit = ''
	  	  set PATH $PATH $HOME/bin
	  	  set -g theme_nerd_fonts yes
	  	  set -g theme_git_default_branches main
	  	  set -g theme_use_abbreviated_branch_name no
	  	  set -g theme_display_nix yes
	  	  set -g theme_display_git_default_branch yes
	  	'';
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

	  		{
	  			name = "wd";
	  			src = pkgs.fetchFromGitHub {
	  				owner = "fischerling";
	  				repo = "plugin-wd";
	  				rev = "6cf653b199328c17c1e4b40d20a459e32316e43c";
	  				sha256 = "1cjca89pgdcq5bg828kkran73c2mr00bkpaqh8qn1mw5p8xqci5m";
	  			};
	  		}
	  	];
	  };
}
