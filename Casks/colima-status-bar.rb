cask "colima-status-bar" do
    version "2.0.1"
    sha256 "369ef6022912837c6dcb2f000701dcf5e4c560a01335eb94c07ce5a19f8b8b20"
    
    url "https://github.com/phkiener/ColimaStatusBar/releases/download/#{version}/ColimaStatusBar.dmg"
        
    name "colima-status-bar"
    desc "A tine menubar icon to display the status of colima"
    homepage "https://github.com/phkiener/ColimaStatusBar/"
    
    livecheck do
        url :url
        strategy :github_latest
    end
    
    app "ColimaStatusBar.app"
end