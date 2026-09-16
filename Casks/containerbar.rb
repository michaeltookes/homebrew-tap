cask "containerbar" do
  version "2.0.4"
  sha256 "951b6e6e6f176af0db80e6544297f0e3d226b58c10948803280edc38a5e1e002"

  url "https://github.com/michaeltookes/ContainerBar/releases/download/v#{version}/ContainerBar.zip"
  name "ContainerBar"
  desc "Docker and Podman container monitoring from your macOS menu bar"
  homepage "https://github.com/michaeltookes/ContainerBar"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "ContainerBar.app"

  zap trash: [
    "~/Library/Preferences/com.tookes.ContainerBar.plist",
  ]
end
