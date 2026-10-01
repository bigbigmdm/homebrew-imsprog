cask "imsprog" do
  version "1.9.1"
sha256 "a1a7b2873b10bd10a1a80dab43063811e6ae56bf75864f148f3553a71281611a"

  url "https://github.com/bigbigmdm/IMSProg/releases/download/v#{version}/macos-arm64-dmg.zip"
  name "IMSProg"
  desc "Linux/cross-platform GUI utility for SPI Flash, EEPROM, and FeRAM"
  homepage "https://github.com/bigbigmdm/IMSProg"

  container nested: "imsprog-macos-arm64.dmg"
  
  app "IMSProg.app"
  app "IMSProg_editor.app"
  app "IMSProg_database_update.app"

  zap trash: [
    "~/.config/IMSProg",
    "~/Library/Preferences/com.imsprog.plist",
  ]
end
