cask "imsprog" do
  version "1.9.1"
  sha256 "9b39b097712442408c887a961823238f4e89a081a107a2bc8e674114949b6715"

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
