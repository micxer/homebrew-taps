cask "threat-dragon" do
  version "2.0.2"
  sha256 "7494666e8e071d90765a203112e315d7ed577e75df4fbb4acc9aea10774278cf"

  url "https://github.com/OWASP/threat-dragon/releases/download/v#{version}/Threat-Dragon-ng-#{version}.dmg",
      verified: "github.com/OWASP/threat-dragon"
  name "OWASP Threat Dragon"
  desc "An open source threat modeling tool from OWASP"
  homepage "https://owasp.org/www-project-threat-dragon/"

  app "Threat-Dragon-ng.app"

  zap trash: [
    "~/Library/Logs/Threat Dragon",
    "~/Library/Preferences/org.owasp.threatdragon.plist",
    "~/Library/Saved Application State/org.owasp.threatdragon.savedState",
    "~/Library/Application Support/Threat Dragon",
  ]
end
