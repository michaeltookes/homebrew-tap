cask "sentwise" do
  version "0.2.0"
  sha256 "5c25b758d6eb0bd05db76f6ef677ec3c1ea85cc62b0b82e4a788d2503afe4d9b"

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
