cask "imsprog" do
  version "1.9.1"
  sha256 "d881dd6b5e404acf43d6d0a9564e61510d2f7e9d71f5581fb2e54fc9443d83f0"

  url "https://github.com/bigbigmdm/IMSProg/releases/download/v#{version}/macos-arm64-dmg.zip"
  name "IMSProg"
  desc "Linux/cross-platform GUI utility for SPI Flash, EEPROM, and FeRAM"
  homepage "https://github.com/bigbigmdm/IMSProg"

  container nested: "imsprog-macos-arm64.dmg"
  
  app "IMSProg.app"
  app "IMSProg_editor.app"
  app "IMSProg_database_update.app"

  zap trash: [
    "~/.config/imsprog",
    "~/Library/Preferences/com.imsprog.plist",
  ]
end
