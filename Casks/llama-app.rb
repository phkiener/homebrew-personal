cask "llama-app" do
    version "0.46.0"
    sha256 "6cfb0345d099d43821932474dca1cffd59c602a292905607606493bbfd328e84"

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
