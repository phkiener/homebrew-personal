cask "colima-status-bar" do
    version "2.0.1"
    sha256 "e4ca0748b6d83bee7263258f16254d750ee30ef279bef596d0b0272177f4fccf"
    
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