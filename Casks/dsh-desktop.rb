cask "dsh-desktop" do
  version "0.1.1-rc.2.202608240104"
  sha256 "fba535b4b3c8656eae61b9031d2038c3edf01c291079d6c8ded61f93480bcb39"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH-Desktop-0.1.1-rc.2.202608240104-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
