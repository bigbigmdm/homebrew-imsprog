cask "imsprog" do
  version "1.9.2"
  sha256 "f1496a12313ca25a1bcb40335b69075aa757045c49993e962880d38a49e12695"

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
