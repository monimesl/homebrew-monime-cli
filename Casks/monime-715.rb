cask "monime-715" do
  version "1.0.0"
  sha256 "23e5fb61da5729d8e8e2e26cc99397ae9c01b72aa5d1c486908bb9e2d7776cab"

  url "https://github.com/monimesl/monime-cli/releases/download/v1.0.0/Monime_715_macOS.zip"
  name "Monime 715"
  desc "Test and debug USSD flows (including payment code) in real time — no mobile device required."
  homepage "https://monime.io"

  app "Monime 715.app"

  postflight do
    executable_path = "#{appdir}/Monime 715.app/Contents/MacOS/monime-715"
    system "chmod", "0755", executable_path
    ohai "Setting executable permissions for #{executable_path}"
  end
end
