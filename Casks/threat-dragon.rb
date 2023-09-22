cask "threat-dragon" do
  version "2.0.6"
  sha256 "35006e5dfe22c2f07a853a99008805b56316a949030f6ec2c047fe1c43144a44"

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
