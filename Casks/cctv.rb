cask "cctv" do
  version "0.1.1"
  sha256 "6735c4ecd804d34c7b2d29dfdad81febc140dc359b3ddfe2a06ee1a6df5a45ec"

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
