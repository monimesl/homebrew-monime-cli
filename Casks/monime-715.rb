cask "monime-715" do
  version "0.0.1"
  sha256 "8f87d23ab9180c4eb63b9ea32d258e2102807c7c635630381a2ffe7daf338ea7"

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
