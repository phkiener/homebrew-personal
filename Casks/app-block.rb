cask "app-block" do
    version "0.1.0"
    sha256 "24639d8c4e315b1f81aec2ebcf1a7a7123543f946ba61a9a07d9464b7966c660"

    url "https://github.com/phkiener/AppBlock/releases/download/#{version}/AppBlock-#{version}.zip"

    name "app-block"
    desc "Block certain MacOS apps from launching... like that pesky Apple Music"
    homepage "https://github.com/phkiener/AppBlock/"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "AppBlock.app"
    uninstall login_item: "AppBlock"
end
