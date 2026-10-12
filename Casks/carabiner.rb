cask "carabiner" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "15f7be7579eab640bb27488a2d6a29c013830125c8c28cfd0f1b70b97f790670",
         intel: "db8fa75230cb4c1f89716feb0d648fafa86ce961ee1525881df2873436ae2529"

  url "https://github.com/lvcabral/carabiner/releases/download/v#{version}/Carabiner-#{version}-#{arch}.dmg"
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
