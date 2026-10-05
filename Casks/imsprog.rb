cask "imsprog" do
  version "1.9.1"
  sha256 "cc4fd4f712042b952be75078ea1597d3ded248d287037aec65aefe7f46b81f1b"

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
