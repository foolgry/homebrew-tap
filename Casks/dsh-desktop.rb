cask "dsh-desktop" do
  version "0.1.5-rc.2.202609110529"
  sha256 "4cce7d91f6ea72c595d9f7162b3ab9a948829d653405762a8dab8401e8956bf4"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.5-rc.2.202609110529-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
