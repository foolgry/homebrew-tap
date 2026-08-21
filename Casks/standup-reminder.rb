cask "standup-reminder" do
  version "1.0"
  sha256 "22a37502312f78775ea199b84acc817f8a9b7c11c9eca3895be81ea2f5d1d69f"

  url "https://github.com/foolgry/standup-reminder/releases/download/v#{version}/StandUpReminder.app.zip"
  name "StandUpReminder"
  desc "每小时提醒你站起来活动的 macOS 菜单栏应用（仅在电脑使用时提醒）"
  homepage "https://github.com/foolgry/standup-reminder"

  app "StandUpReminder.app"

  caveats <<~EOS
    应用未签名，首次打开如遇 Gatekeeper 提示，请执行：
      xattr -dr com.apple.quarantine /Applications/StandUpReminder.app
  EOS
end
