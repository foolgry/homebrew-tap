cask "dsh-desktop" do
  version "0.1.0-rc.8.202608200304"
  sha256 "065a28bfbb242b27e56ba0840f7240eaa0261e86f062e4c510e733ac2a618a3f"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH.Desktop-#{version}-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
