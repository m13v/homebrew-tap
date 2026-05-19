cask "claude-meter" do
  version "0.3.3"
  sha256 "10e9cb35a56a6377945e109d9b32f033a1359ae0cebf0f7a7b6336e63107ec51"

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
