cask "bonelab-mod-manager" do
  version "0.6.2"
  sha256 "a30d530e57a97a4e813f17102062ee6c94794b56982b44c0c0a3f5caf9665f45"

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
