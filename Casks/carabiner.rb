cask "carabiner" do
  version "3.0.1"
  sha256 "e6607478a88e325dba65c913a252483dab44d949ff5bb47644ad815cb3e34f48"

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
