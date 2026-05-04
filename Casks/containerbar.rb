cask "containerbar" do
  version "2.0.3"
  sha256 "8592acea133a86a0d691d745214f0697bcb0c7ed737518c2d1d0c563f19d1137"

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
