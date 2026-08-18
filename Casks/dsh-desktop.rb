cask "dsh-desktop" do
  version "0.1.0-rc.7.202608180152"
  sha256 "6660121ea04aaff39657a6b92808ae71e162390685127c4dc19821c00d588072"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH.Desktop-#{version}-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
