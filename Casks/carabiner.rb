cask "carabiner" do
  version "2.1.0"
  sha256 "b9698d1db673726c4758f31f07dedf6202a6119439449ee9dac56f6f52e5dbeb"

  url "https://github.com/lvcabral/carabiner/releases/download/v#{version}/Carabiner-#{version}-universal.dmg"
  name "Carabiner"
  desc "Live video overlay for streaming device development and QA"
  homepage "https://github.com/lvcabral/carabiner"

  depends_on macos: :monterey

  app "Carabiner.app"

  zap trash: [
    "~/Library/Application Support/carabiner",
    "~/Library/Preferences/com.lvcabral.carabiner.plist",
    "~/Library/Saved Application State/com.lvcabral.carabiner.savedState",
  ]
end
