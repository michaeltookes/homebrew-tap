cask "containerbar" do
  version "2.0.2"
  sha256 "2e9284ce9aa3e7c59085d0a549b83cad162ba82f7029d37adc8ae007771829f8"

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
