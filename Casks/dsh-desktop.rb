cask "dsh-desktop" do
  version "0.1.5-alpha.1.202609090538"
  sha256 "6c1a95bcc1e34d27c77744b53ed026b2c9a98ab4e5f9a43329bc813424a6eb60"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.5-alpha.1.202609090538-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
