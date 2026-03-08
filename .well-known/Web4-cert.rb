cask "web4" do
  version "1.0.0,10000"
  sha256 "replace_with_actual_sha256"

  url "https://download.web4.com/#{version.csv.second}/Web4_#{version.csv.first}.dmg"
  name "Web4"
  desc "Certificate and HTTPS testing toolkit"
  homepage "https://web4.com/"

  livecheck do
    url "https://web4.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Web4.app"
  binary "#{appdir}/Web4.app/Contents/MacOS/web4-cli"

  uninstall quit: "com.web4.app"

  zap trash: [
    "~/Library/Application Support/com.web4",
    "~/Library/Caches/com.web4",
    "~/Library/Preferences/com.web4.plist",
    "~/Library/Saved Application State/com.web4.savedState",
  ]
end
