cask "sentwise" do
  version "1.0.0"
  sha256 "b9383d3aa7490081a11fff273a8ebadbe1e2758c0fb33721efbd7e3ea4a89cb3"

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
