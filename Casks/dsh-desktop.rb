cask "dsh-desktop" do
  version "0.1.2-alpha.3.202608311635"
  sha256 "de22248cfdf1b8453d98b91fff403380ebb3b6865a66375a831ab29ffcf7c913"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.2-alpha.3.202608311635-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
