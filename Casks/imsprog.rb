cask "imsprog" do
  version "1.9.1"
  sha256 "cc4fd4f712042b952be75078ea1597d3ded248d287037aec65aefe7f46b81f1b"

  url "https://github.com/bigbigmdm/IMSProg/releases/download/v#{version}/macos-arm64-dmg.zip"
  name "IMSProg"
  desc "GUI utility for SPI Flash, EEPROM, and FeRAM"
  homepage "https://github.com/bigbigmdm/IMSProg"

  depends_on arch: :arm64
  depends_on :macos
  container nested: "imsprog-macos-arm64.dmg"

  app "IMSProg.app"
  app "IMSProg_editor.app"
  app "IMSProg_database_update.app"

  # No zap stanza required
end
