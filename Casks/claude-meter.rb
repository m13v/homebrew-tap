cask "claude-meter" do
  version "0.3.8"
  sha256 "3ea6f9ced77e73f0e0a19a93a9836efb61177e45d42585cbcd5d75c0966fa332"

  url "https://github.com/m13v/claude-meter/releases/download/v#{version}/ClaudeMeter-#{version}.zip",
      verified: "github.com/m13v/claude-meter/"
  name "ClaudeMeter"
  desc "Menu-bar app showing live Claude plan usage (5h + 7d limits)"
  homepage "https://github.com/m13v/claude-meter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "ClaudeMeter.app"

  zap trash: [
    "~/Library/Application Support/ClaudeMeter",
    "~/Library/Caches/com.m13v.claude-meter",
    "~/Library/Preferences/com.m13v.claude-meter.plist",
  ]
end
