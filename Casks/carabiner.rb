cask "carabiner" do
  version "2.1.2"
  sha256 "3ce852acb32ef5d6e8004bd200665da114f1aa2ba8d3e6e46ba21f926ed4e95a"

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
