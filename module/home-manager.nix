{ pkgs, ... }:

{
  # add home-manager user settings here
  home.packages = with pkgs; [ 
    sl
    rectangle
    # bitwarden-cli
    arc-browser
    stats
    # shell_gpt
    awscli
    doctl
    cascadia-code
    localsend
    obsidian
    sqlite
    syncthing
    lmstudio
    spotify
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "CascadiaCode" ]; })
   ];


  home.sessionVariables = {
    LIBSQLITE = "${pkgs.sqlite.out}/lib/libsqlite3.dylib";
  };

  programs.git = {
    enable = true;
    userEmail = "mattdemichele@gmail.com";
    userName = "mrrobot";
    extraConfig = {
      push = {
        autoSetupRemote = true; 
      };
    };
  };

  programs.lazygit.enable = true;
  
  programs.gh = {
    enable = true;
  };

  programs.btop = {
    enable = true;
  };

  programs.eza = {
    enable = true;
    # enableAliases = true;
    git = true;
    icons = true;
  };  

  programs.k9s = {
    enable = true;
  };

  programs.ripgrep = {
    enable = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.neovim = {
    enable = true;
    plugins = [
    {
      plugin = pkgs.vimPlugins.sqlite-lua;
      config = "let g:sqlite_clib_path = '${pkgs.sqlite.out}/lib/libsqlite3.dylib'";
    }
    ];
  };

  services.syncthing = {
    enable = true;
  };

  home.file."./.config/nvim/" = {
    source = ./nvim;
    recursive = true;
  };

  # home.file."./.config/superfile/config.toml".text = ''
  #   cd_on_quit = true
  #
  #   default_open_file_preview = true
  # '';
 
  programs.zsh = {
    enable = true;
    autosuggestion = { enable = true; };
    enableCompletion = true;
    oh-my-zsh = {
      enable = true;
    };
    shellAliases = {
        lg = "lazygit";
        ll = "yazi";
        l = "ls -alh";
    };
     initExtra = ''
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
    '';
  };

  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      manager = {
        show_hidden = true;
      };
      opener = {
      edit = [{
        run = "nvim \"$@\"";
        block = true;
      }];
          };
    };
  };

  programs.tmux = {
    enable = true;
    baseIndex = 1;
    disableConfirmationPrompt = true;
    historyLimit = 50000;
    keyMode = "vi";
    mouse = true;
    newSession = true;
    shell = "\${pkgs.zsh}/bin/zsh";

    plugins = with pkgs; [
      tmuxPlugins.catppuccin
    ];

    extraConfig = ''
       set -g @catppuccin_flavour 'mocha' 
    '';
    terminal = "screen";
  };

  programs.kitty = {
    enable = true;
    font = {
      name = "Cascadia Code NF";
      size = 18;
    };
    theme = "Broadcast";
    settings = {
      scrollback_lines = 10000;
      enable_audio_bell = false;
      update_check_interval = 0;
      disable_ligatures = "never";
      confirm_os_window_close = "0";
    };
    extraConfig = ''
      background_opacity 0.9
      enabled_layouts fat:bias=50;full_size=1;mirrored=false
    '';
    shellIntegration.enableZshIntegration = true;
  };

  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    extraConfig = ''
      local config = wezterm.config_builder()

      config.color_scheme = "Broadcast"

      config.font = wezterm.font("Cascadia Code NF", { weight = 500 })
      config.font_size = 16.0
      config.freetype_load_flags = "NO_HINTING"
      config.front_end = "OpenGL"

      config.adjust_window_size_when_changing_font_size = false
      config.use_fancy_tab_bar = false
      config.hide_tab_bar_if_only_one_tab = true
      config.tab_bar_at_bottom = true

      config.window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
      }

      config.window_background_opacity = 0.9

      return config
    '';
  };

  programs.fzf = {
    enable = true;
  };

  programs.zoxide = { 
    enable = true;
  };  
         
  programs.direnv = {  
    enable = true;  
    nix-direnv = {
      enable = true;
    };
  };

  home.stateVersion = "24.05";
}
