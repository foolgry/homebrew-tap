cask "dsh-desktop" do
  version "0.1.5-rc.2.202609171424"
  sha256 "6b3c6e3d28bfcf677832a7bafcd4e723f7cc7eee3a4d0e5a31bbcc266ed33f5b"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.5-rc.2.202609171424-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
