cask "monime-715" do
  version "1.0.0"
  sha256 "503cb65c1e2d956ee673f9d5a9f4a821e1846a574743c9cbbf36f7b55a7ae2a4"

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
