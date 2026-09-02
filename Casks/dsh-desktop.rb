cask "dsh-desktop" do
  version "0.1.2-alpha.4.202609020518"
  sha256 "98591e29a9335a9ab8d9193a6335345c790084bc2dc3f06d44e9aaf859b04297"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.2-alpha.4.202609020518-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
