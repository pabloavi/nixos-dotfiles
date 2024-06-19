{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    nodejs_21
    clang
    zig
    cargo
    tree-sitter

    prettierd
    nixpkgs-fmt
    nil
  ];


  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = [ pkgs.vimPlugins.nvim-treesitter.withAllGrammars ];
  };

  xdg.configFile.nvim.source = pkgs.fetchFromGitHub {
    owner = "pabloavi";
    repo = "NvChad";
    rev = "a5574aebdbcd9cfdbabb4f70e9e073a25b04bc72";
    sha256 = "kXky8Qez8wPyk7whzThVexVgMtZvcxDk4KkM5FSOFyE=";
  };
}
