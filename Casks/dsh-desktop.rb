cask "dsh-desktop" do
  version "0.1.1-rc.2.202608240532"
  sha256 "dd94a9f1a9576ecca264caa493c3bcb6ff6846a08b6e00bf34abb7e0dfdbd281"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.1-rc.2.202608240532-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
