cask "llama-app" do
    version "0.49.0"
    sha256 "3eb81f3338c025c0a6035df52c9980101fbbfe99e76bd3cecdccfeeae6c671f5"

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

    postflight_steps do
        on_macos do
            run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{appdir}/Llama.app"]
        end
    end

    uninstall login_item: "Llama"
end
