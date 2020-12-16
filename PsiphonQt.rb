cask "psiphonqt" do
  version "4.3_1205"

  url "https://github.com/rsanjuan87/PsiphonQt/releases/download/v1.0/MacOS.version.PsiphonQt.dmg"
  appcast "https://github.com/rsanjuan87/PsiphonQt"
  name "PsiphonQt"
  desc "A Psiphon GUI client in Qt, Cute Psiphon for All"
  homepage "https://github.com/rsanjuan87/PsiphonQt/"

  auto_updates true

  app "PsiphonQt.app"

  uninstall quit: "san.org.PsiphonQt"

  zap trash: [
    "~/.PsiphonQt",
    "~/Library/Caches/com.runningwithcrayons.Alfred",
    "~/Library/LaunchAgents/PsiphonQt.plist",
  ]
end
