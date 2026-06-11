cask "cctv" do
  version "0.1.2"
  sha256 "d6fba35876c8e2f5f790b475807cb301d2184bdbedf356a05c19080eb683e473"

  url "https://github.com/manelrv/CCTV/releases/download/v#{version}/CCTV_#{version}_universal.dmg"
  name "CCTV"
  desc "See which Claude Code agent needs you, from the macOS menu bar"
  homepage "https://github.com/manelrv/CCTV"

  # The app is not yet signed/notarized. After install, clear the quarantine
  # attribute (`xattr -dr com.apple.quarantine /Applications/CCTV.app`) or
  # right-click → Open on first launch, to get past Gatekeeper.
  app "CCTV.app"

  zap trash: [
    "~/Library/Application Support/com.manelrv.cctv",
  ]
end
