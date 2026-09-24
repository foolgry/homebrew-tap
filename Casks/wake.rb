cask "wake" do
  version "0.8.1"
  sha256 "f4dbdbd590f30a99a23472c7113935b7f8b69b566bb6d124ac9866692c903150"

  url "https://github.com/iAmCorey/Wake/releases/download/v#{version}/Wake-#{version}-macos.zip"
  name "Wake"
  desc "Browse, search and resume your local AI coding-agent sessions"
  homepage "https://github.com/iAmCorey/Wake"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Release ships a universal binary (arm64 + x86_64); Info.plist requires 13.0.
  depends_on macos: :ventura

  app "Wake.app"

  # Bundled read-only helpers, used by MCP clients and shell scripts.
  binary "#{appdir}/Wake.app/Contents/MacOS/wake-cli"
  binary "#{appdir}/Wake.app/Contents/MacOS/wake-mcp"

  zap trash: "~/Library/Application Support/wake"

  caveats <<~EOS
    应用为 ad-hoc 签名（未公证），首次打开如被 Gatekeeper 拦截，请执行：
      xattr -dr com.apple.quarantine /Applications/Wake.app
    或在 Finder 中右键 → 打开。
  EOS
end
