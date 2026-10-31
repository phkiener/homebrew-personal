cask "llama-app" do
    version "0.46.2"
    sha256 "c4110ec676514325fae596a0b352791996d86726aa3663da44e2d85f9be1350b"

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
