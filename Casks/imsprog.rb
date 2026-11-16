cask "imsprog" do
  version "1.9.2"
  sha256 "a7fd63aa6b88ca864d7edf52097088bf4755766363b3737fcb30f7172bab0eac"

  url "https://github.com/bigbigmdm/IMSProg/releases/download/v#{version}/imsprog-macos-arm64.dmg"
  name "IMSProg"
  desc "GUI utility for SPI Flash, EEPROM, and FeRAM"
  homepage "https://github.com/bigbigmdm/IMSProg"

  depends_on arch: :arm64
  depends_on :macos

  app "IMSProg.app"
  app "IMSProg_editor.app"
  app "IMSProg_database_update.app"

  zap :not_required
end
