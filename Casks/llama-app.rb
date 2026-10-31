cask "llama-app" do
    version "0.46.3"
    sha256 "a52a99c3d422d88cbe119b696f015767dda31d23a30804b75212027a1bdaf694"

    url "https://github.com/phkiener/Llama-macOS/releases/download/#{version}/Llama-#{version}.dmg"

    name "Llama"
    desc "Menu bar app for running local LLMs"
    homepage "https://github.com/phkiener/Llama-macOS/"

    livecheck do
        url :url
        strategy :github_latest
    end

    app "Llama.app"
    depends_on macos: :sequoia
    depends_on arch: :arm64

    uninstall login_item: "Llama"
end
