cask "imsprog" do
  version "1.9.2"
  sha256 "f4e74a9795d43125f8460d8d8375c271512c74b2486259300a0af4c41767a634"

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
