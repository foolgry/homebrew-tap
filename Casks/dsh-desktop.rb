cask "dsh-desktop" do
  version "0.1.0-rc.7.202608180530"
  sha256 "881f3d2f1ef44e08d4e2abe496efa0c2bcca70729742a2ffadc4168a70cd78e8"

  url "https://github.com/foolgry/dsh-desktop/releases/download/v#{version}/DSH.Desktop-#{version}-mac-arm64.dmg"
  name "DSH Desktop"
  desc "Community-built desktop shell for DeepSeek Harness (dsh)"
  homepage "https://github.com/foolgry/dsh-desktop"

  # CI builds on macos-14 only; there is no x86_64 artifact.
  depends_on arch: :arm64

  app "DSH Desktop.app"

  zap trash: "~/Library/Application Support/DSH Desktop"
end
