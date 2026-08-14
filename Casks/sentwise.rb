cask "sentwise" do
  version "0.1.0"
  sha256 "7a6742260138c792fad9caac6cc09db30d91ec14cb40f0740afe43d731d59bac"

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
