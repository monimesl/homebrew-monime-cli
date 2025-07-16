cask "monime-715" do
  version "0.0.2"
  sha256 "ed5b5041edd05bd484a472ef7d85c8c9fd91618a9e178efa956656987c671c33"

  url "https://github.com/monimesl/monime-cli/releases/download/v0.0.2/Monime_715_macOS.zip"
  name "Monime 715"
  desc "Test and debug USSD flows (including payment code) in real time — no mobile device required."
  homepage "https://monime.io"

  app "Monime 715.app"

  postflight do
    executable_path = "#{appdir}/Monime 715.app/Contents/MacOS/monime-715"
    system "chmod", "0755", executable_path
  end
end
