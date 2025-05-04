cask "colima-status-bar" do
    version "3.1.0"
    sha256 "E0890A489BAD420CC9B983CA2131293EA3455FDDEB5564DA2088AA2CA02CBA24"
    
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
