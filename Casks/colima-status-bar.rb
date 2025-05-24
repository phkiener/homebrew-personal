cask "colima-status-bar" do
    version "4.0.0"
    sha256 "5EDF3FF66CC70BAEDA69385CAA1BC636A3658A5FAAA44EBF738324424A96FF96"

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
