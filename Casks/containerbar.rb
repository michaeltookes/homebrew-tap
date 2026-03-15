cask "containerbar" do
  version "2.0.1"
  sha256 "89e0ebc9ead4188d860d2a83dfef6e644d64020a2caac86a1fb4c250d1918624"

  url "https://github.com/michaeltookes/ContainerBar/releases/download/v#{version}/ContainerBar.zip"
  name "ContainerBar"
  desc "Docker and Podman container monitoring from your macOS menu bar"
  homepage "https://github.com/michaeltookes/ContainerBar"

  depends_on macos: ">= :sonoma"

  app "ContainerBar.app"

  zap trash: [
    "~/Library/Preferences/com.tookes.ContainerBar.plist",
  ]
end
