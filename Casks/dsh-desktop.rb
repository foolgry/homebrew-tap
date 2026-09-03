cask "dsh-desktop" do
  version "0.1.2-rc.1.202609031309"
  sha256 "83446ec092ce563d47b52f843da605e5f31cba5a8e0ac7b320ad47c0ee798f57"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.2-rc.1.202609031309-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
