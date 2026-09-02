cask "dsh-desktop" do
  version "0.1.2-alpha.5.202609021307"
  sha256 "67e1ed0caa9ad59ce189490151aa4f8adab1a6dc0bc48dd37538d5559945187c"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.2-alpha.5.202609021307-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
