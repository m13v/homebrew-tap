cask "claude-meter" do
  version "0.1.1"
  sha256 "88aebdc25f96b33fb64c5af044a5f121a4b83701f858cdc183fd280ae9f70bde"

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
