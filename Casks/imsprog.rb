cask "imsprog" do
  version "1.9.1"
  sha256 "e3f229fa6fb540bbca22a4c9ca4ea43c2a74964bb503c06832a36334863b31ad"

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
