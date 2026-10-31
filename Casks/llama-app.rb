cask "llama-app" do
    version "0.46.1"
    sha256 "8cdb900fcc56d2b931ee7529bb4564f12dc18dee755463b930b703b964b694d9"

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
