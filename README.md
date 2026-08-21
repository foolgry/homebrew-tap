# homebrew-tap

foolgry 的个人 Homebrew tap，提供以下 cask：

## [dsh-desktop](https://github.com/foolgry/dsh-desktop)

DeepSeek Harness (dsh) 的社区桌面外壳（未签名构建，仅 Apple Silicon）。

```sh
brew install --cask foolgry/tap/dsh-desktop
```

未签名构建，首次打开请右键 → 打开；若提示「已损坏，无法打开」：

```sh
xattr -cr "/Applications/DSH Desktop.app"
```

更新：

```sh
brew upgrade --cask dsh-desktop && xattr -cr "/Applications/DSH Desktop.app"
```

App 内置的更新提示也会检测 Homebrew 安装并自动执行上述命令。

`Casks/dsh-desktop.rb` 由 `.github/workflows/sync-cask.yml` 每天自动跟踪 dsh-desktop 的最新 release 并更新版本与 sha256，无需手工维护。

## [standup-reminder](https://github.com/foolgry/standup-reminder)

macOS 菜单栏应用：每小时提醒你站起来活动（仅在电脑使用时提醒，未锁屏且屏幕亮着）。

```sh
brew install --cask foolgry/tap/standup-reminder
```

未签名构建，首次打开如遇 Gatekeeper 提示：

```sh
xattr -dr com.apple.quarantine /Applications/StandUpReminder.app
```

更新：

```sh
brew upgrade --cask standup-reminder
```

`Casks/standup-reminder.rb` 跟随 [standup-reminder 的 Release](https://github.com/foolgry/standup-reminder/releases) 手动更新版本与 sha256。
