{ config, pkgs, ... }:

{
  xdg = {
    enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
      documents = "${config.home.homeDirectory}/Documentos";
      download = "${config.home.homeDirectory}/Descargas";
      music = "${config.home.homeDirectory}/Música";
      pictures = "${config.home.homeDirectory}/Imágenes";
      videos = "${config.home.homeDirectory}/Vídeos";
      templates = "${config.home.homeDirectory}/Plantillas";
      publicShare = "${config.home.homeDirectory}/Público";
      desktop = "${config.home.homeDirectory}/Escritorio";
    };
  };
}
