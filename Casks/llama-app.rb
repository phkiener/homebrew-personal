cask "llama-app" do
    version "0.45.0"
    sha256 "1fc157877217a366e30effc6fd274786192d6304f89a8f7e139a57b6f7577245"

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
