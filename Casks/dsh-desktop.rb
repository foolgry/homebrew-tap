cask "dsh-desktop" do
  version "0.1.5-rc.1.202609100528"
  sha256 "cb9a75e1d170f2a0e1c86e98190c3801b61a9b6ad3d9f2b3eb005c75a1fad529"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.5-rc.1.202609100528-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
