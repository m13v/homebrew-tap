cask "claude-meter" do
  version "0.3.1"
  sha256 "68383276f675a8d8673faf541f511771806d39a85c4a8dbdf984c7fc934cfa44"

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
