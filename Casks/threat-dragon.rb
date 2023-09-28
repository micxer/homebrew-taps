cask "threat-dragon" do
  version "2.0.7"
  sha256 "f30d88cca33fda57b4f14300da1afb81916d7c0fb4f40832e233f9c1f455b499"

  url "https://github.com/OWASP/threat-dragon/releases/download/v#{version}/Threat-Dragon-ng-#{version}.dmg",
      verified: "github.com/OWASP/threat-dragon/"
  name "OWASP Threat Dragon"
  desc "Open source threat modeling tool from OWASP"
  homepage "https://owasp.org/www-project-threat-dragon/"

  app "Threat-Dragon-ng.app"

  zap trash: [
    "~/Library/Logs/Threat Dragon",
    "~/Library/Preferences/org.owasp.threatdragon.plist",
    "~/Library/Saved Application State/org.owasp.threatdragon.savedState",
    "~/Library/Application Support/Threat Dragon",
  ]
end
