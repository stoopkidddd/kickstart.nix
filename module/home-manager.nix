{ pkgs, ... }:

{
  # add home-manager user settings here
  home.packages = with pkgs; [ 
    sl
    rectangle
    jetbrains.rider
    infisical
    stats
    # shell_gpt
    awscli
    doctl
    cascadia-code
    localsend
    obsidian
    sqlite
    syncthing
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
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
 
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    oh-my-zsh = {
      enable = true;
    };
    shellAliases = {
        lg = "lazygit";
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
