cask "bonelab-mod-manager" do
  version "0.5.0"
  sha256 "2b66b669a5aa5fd8780d3ce2658da45d6ac74a1b5ffb8e6a86aba79f58751a8d"

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
