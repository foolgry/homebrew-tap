cask "dsh-desktop" do
  version "0.1.3-alpha.2.202609080708"
  sha256 "b4311dec9bd424b6c999d3e8ab26672e5da9ba15bca2244197cbc2f046aa43cc"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.3-alpha.2.202609080708-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
