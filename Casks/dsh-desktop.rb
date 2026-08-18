cask "dsh-desktop" do
  version "0.1.0-rc.6.202608150341"
  sha256 "f9bb0df30886ba69f9e7ca6e097c8bb96df1eb6c6dc5f82aa8fc301fd2e8770d"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH.Desktop-#{version}-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
