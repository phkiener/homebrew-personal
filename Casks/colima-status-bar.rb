cask "colima-status-bar" do
    version "3.0.1"
    sha256 "ACEE9707FE169016A358F40A4735CC11EC5B70B3F525C582BB0A4DB7C353A934"
    
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
