cask "colima-status-bar" do
    version "4.0.1"
    sha256 "FEE5F4D02223FA60486E04F889FA8C2301BF75D758819445657B45FD85385E0E"

    url "https://github.com/phkiener/ColimaStatusBar/releases/download/#{version}/ColimaStatusBar-#{version}.zip"

    name "colima-status-bar"
    desc "A tiny menubar icon to display the status of colima"
    homepage "https://github.com/phkiener/ColimaStatusBar/"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "ColimaStatusBar.app"
end
