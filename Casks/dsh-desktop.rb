cask "dsh-desktop" do
  version "0.1.5-rc.3.202609221349"
  sha256 "a7118d5277d8cc03556b36b228135f7188d3cf1fe102e426d717fc16a25039f7"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.5-rc.3.202609221349-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
