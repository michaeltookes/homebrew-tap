cask "containerbar" do
  version "2.0.0"
  sha256 "56e301fba6dbe90e55c2f98141a17fbc13f6ac42bb3b75e40c0494f240ecdaa9"

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
