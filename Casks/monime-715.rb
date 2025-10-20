cask "monime-715" do
  version "0.0.3"
  sha256 "f47363abbb6fd6626317fadaea110b6ae26997cd48b0d79725777eba2a5dd848"

  url "https://github.com/monimesl/monime-cli/releases/download/v0.0.3/Monime_715_macOS.zip"
  name "Monime 715"
  desc "Test and debug USSD flows (including payment code) in real time — no mobile device required."
  homepage "https://monime.io"

  app "Monime 715.app"

  postflight do
    executable_path = "#{appdir}/Monime 715.app/Contents/MacOS/monime-715"
    system "chmod", "0755", executable_path
  end
end
