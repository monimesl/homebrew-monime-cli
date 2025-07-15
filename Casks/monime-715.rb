cask "monime-715" do
  version "0.0.1"
  sha256 "2ab02839eb0ca7d65b98fa2865d0bc70239571369a80566e7024847bd6a79037"

  url "https://github.com/monimesl/monime-cli/releases/download/v0.0.1/Monime_715_macOS.zip"
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
