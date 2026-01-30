cask "containerbar" do
  version "1.0.0"
  sha256 "e7abe3ca49ea796b7e6556f43fe1346b1eb80c355ad209f5c80e37dfe4ed594b"

  url "https://github.com/michaeltookes/ContainerBar/releases/download/v#{version}/ContainerBar-#{version}.zip"
  name "ContainerBar"
  desc "Docker container monitoring from your macOS menu bar"
  homepage "https://github.com/michaeltookes/ContainerBar"

  depends_on macos: ">= :sonoma"

  app "ContainerBar.app"

  zap trash: [
    "~/Library/Preferences/com.tookes.ContainerBar.plist",
  ]
end
