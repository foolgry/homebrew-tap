cask "dsh-desktop" do
  version "0.1.1-rc.2.202608220212"
  sha256 "527c55b1c0bcf2709cc0a0145ac5319595395040f5299cad580c6dbbcd483fb3"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH.Desktop-#{version}-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
