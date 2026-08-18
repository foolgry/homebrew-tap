# homebrew-tap

Homebrew tap for [dsh-desktop](https://github.com/foolgry/dsh-desktop) —— DeepSeek Harness (dsh) 的社区桌面外壳（未签名构建，仅 Apple Silicon）。

## 安装

```sh
brew install --cask foolgry/tap/dsh-desktop
```

未签名构建，首次打开请右键 → 打开；若提示「已损坏，无法打开」：

```sh
xattr -cr "/Applications/DSH Desktop.app"
```

## 更新

```sh
brew upgrade --cask dsh-desktop && xattr -cr "/Applications/DSH Desktop.app"
```

App 内置的更新提示也会检测 Homebrew 安装并自动执行上述命令。

`Casks/dsh-desktop.rb` 由 `.github/workflows/sync-cask.yml` 每天自动跟踪 dsh-desktop 的最新 release 并更新版本与 sha256，无需手工维护。
