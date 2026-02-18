cask "prompter" do
  version "1.2.0"
  sha256 "5dc57c608ea7d5de73ed835e5098f7ee0ca20e210104205fde502b4e823727f0"

  url "https://github.com/michaeltookes/prompter/releases/download/v#{version}/Prompter.dmg"
  name "Prompter"
  desc "macOS presenter overlay and teleprompter app"
  homepage "https://github.com/michaeltookes/prompter"

  depends_on macos: ">= :sonoma"

  app "Prompter.app"

  zap trash: [
    "~/Library/Application Support/Prompter",
    "~/Library/Preferences/com.tookes.Prompter.plist",
  ]
end
