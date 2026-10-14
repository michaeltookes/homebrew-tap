cask "sentwise" do
  version "0.2.1"
  sha256 "596bc33be7ae7b3e17678c2027dc26e0cd4b8c5d167b3f6f621d50e7048697bf"

  url "https://github.com/michaeltookes/sentwise/releases/download/v#{version}/Sentwise-#{version}.dmg"
  name "Sentwise"
  desc "Local-first macOS menu-bar email assistant that drafts replies in your voice"
  homepage "https://github.com/michaeltookes/sentwise"

  depends_on macos: :sonoma

  app "Sentwise.app"

  zap trash: [
    "~/Library/Application Support/Sentwise",
    "~/Library/Caches/com.tookes.Sentwise",
    "~/Library/Preferences/com.tookes.Sentwise.plist",
  ]
end
