cask "keypad" do
    version "0.1.0"
    sha256 "6C9ACFC2C6E4F737001A01C60032C016C0C6FDE353D6D74AB9511AD06E92665B"

    url "https://github.com/phkiener/Keypad/releases/download/#{version}/Keypad-#{version}.zip"

    name "keypad"
    desc "An experimental, lightweight alternative to the Elgato StreamDeck app"
    homepage "https://github.com/phkiener/Keypad/"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "Keypad.app"
    uninstall login_item: "Keypad"
end
