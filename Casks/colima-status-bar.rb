cask "colima-status-bar" do
    version "3.0.0"
    sha256 "C22DE5B81FB82D9EA207E8E7FF19BA78E803FF5F8007A83FD351C4718F8837F6"
    
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
