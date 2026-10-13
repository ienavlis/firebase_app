{ pkgs, ... }: {
  channel = "unstable";
  packages = [
    pkgs.flutter
  ];
  idx = {
    extensions = [];
    previews = {
      enable = true;
      previews = {
        web = {
          command = ["flutter" "run" "-d" "web-server" "--web-port" "$PORT" "--web-hostname" "0.0.0.0"];
          manager = "web";
        };
        android = {
          manager = "flutter";
        };
      };
    };
  };
}