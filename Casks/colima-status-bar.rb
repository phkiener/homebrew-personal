cask "colima-status-bar" do
    version "3.0.0"
    sha256 "98F190C3398B395EF7A3632C31BC84F091AF3D0B17A5DA1E5C88A326AB012307"
    
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
