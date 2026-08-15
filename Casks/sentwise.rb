cask "sentwise" do
  version "0.1.1"
  sha256 "764dad568e3488a5ae56ce04937dce1183fb8c4e0d0b65e6125928f6453cfc5a"

  url "https://github.com/michaeltookes/sentwise/releases/download/v#{version}/Sentwise-#{version}.dmg"
  name "Sentwise"
  desc "Local-first macOS menu-bar email assistant that drafts replies in your voice"
  homepage "https://github.com/michaeltookes/sentwise"

  depends_on macos: ">= :sonoma"

  app "Sentwise.app"

  zap trash: [
    "~/Library/Application Support/Sentwise",
    "~/Library/Caches/com.tookes.Sentwise",
    "~/Library/Preferences/com.tookes.Sentwise.plist",
  ]
end
