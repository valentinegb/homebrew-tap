cask "bonelab-mod-manager" do
  version "0.6.3"
  sha256 "0b38b06c946ad753c7ba1d9c63d512df713798ed10cad7e4e3d8d67f4e2afcbb"

  url "https://github.com/valentinegb/bonelab_mod_manager/releases/download/v#{version}/bonelab_mod_manager.dmg"
  name "Bonelab Mod Manager"
  desc "Keeps your installed Bonelab mods synced with your subscribed mod.io mods"
  homepage "https://github.com/valentinegb/bonelab_mod_manager"

  app "Bonelab Mod Manager.app"

  zap trash: "~/Library/Application Support/com.valentinegb.bonelab_mod_manager"

  caveats <<~UNSIGNED
    Bonelab Mod Manager is not signed,
    so you will need to re-allow it to open every time the app is updated.

    Allow or re-allow it in:
      System Settings → Privacy & Security
    To re-allow, click Open Anyway for Bonelab Mod Manager under Security.
  UNSIGNED
end
