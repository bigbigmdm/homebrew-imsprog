cask "imsprog" do
  version "1.9.1"
sha256 "a1a7b2873b10bd10a1a80dab43063811e6ae56bf75864f148f3553a71281611a"

  url "https://github.com/bigbigmdm/IMSProg/actions/runs/36678959769/artifacts/11081092448/"
  name "IMSProg"
  desc "Linux/cross-platform GUI utility for SPI Flash, EEPROM, and FeRAM"
  homepage "https://github.com/bigbigmdm/IMSProg"
  license "GPL-3.0-or-later"

  container nested: "imsprog-macos-arm64.dmg"
  
  app "IMSProg.app"

  zap trash: [
    "~/.config/IMSProg",
    "~/Library/Preferences/com.imsprog.plist",
  ]
end
