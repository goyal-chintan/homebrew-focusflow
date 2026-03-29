cask "focusflow" do
  version "1.0.0"
  sha256 "REPLACE_WITH_SHA256_FROM_build-dmg.sh"

  url "https://github.com/goyal-chintan/focus-flow/releases/download/v#{version}/FocusFlow-#{version}.dmg"

  name "FocusFlow"
  desc "Menu bar Pomodoro focus timer with on-device AI coaching"
  homepage "https://github.com/goyal-chintan/focus-flow"

  depends_on macos: ">= :sequoia"

  app "FocusFlow.app"

  zap trash: [
    "~/Library/Application Support/FocusFlow",
    "~/Library/Containers/com.focusflow.app",
    "~/Library/Preferences/com.focusflow.app.plist",
    "~/Library/Caches/com.focusflow.app",
    "~/Library/Logs/FocusFlow",
  ]
end
