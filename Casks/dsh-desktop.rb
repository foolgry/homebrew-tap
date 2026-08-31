cask "dsh-desktop" do
  version "0.1.2-alpha.2.202608310844"
  sha256 "a7fc99adb7f53df644595497ff2fb6e3a61d4a3d4bc719af29d22b1744eb448f"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.2-alpha.2.202608310844-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
