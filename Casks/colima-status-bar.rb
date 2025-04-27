cask "colima-status-bar" do
    version "2.1.0"
    sha256 "af3cd9c34698d621a0a60e5514e4aa3421623cc03598a7aae0992e87e1478a63"
    
    url "https://github.com/phkiener/ColimaStatusBar/releases/download/#{version}/ColimaStatusBar-#{version}.tgz"
        
    name "colima-status-bar"
    desc "A tiny menubar icon to display the status of colima"
    homepage "https://github.com/phkiener/ColimaStatusBar/"
    
    livecheck do
        url :url
        strategy :github_latest
    end
    
    app "ColimaStatusBar.app"
end
