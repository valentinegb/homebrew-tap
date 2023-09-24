cask "bonelab-mod-manager" do
  version "0.6.0"
  sha256 "96bae0242df9f2cc4711f269a9ce141a43544a95cd20b239449480bb2677a661"

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
