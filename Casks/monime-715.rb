cask "monime-715" do
version "1.0.5"
sha256 "5e3c8cbf8ddce05cd94cb87e52d70a724fb4c5fe0c836332a09bc0ae5e87a484"

url "https://github.com/monimesl/monime-cli/releases/download/v1.0.4/Monime_715_macOS.zip"
name "Monime 715.app"
desc "Test and debug USSD flows (including payment code) in real time — no mobile device required."
homepage "https://monime.io"

app "Monime 715.app"
  postflight do
    # `appdir` ensures it points to where Homebrew Cask installed the app
    executable_path = "#{appdir}/Monime 715.app/Contents/MacOS/monime-715"
 
    system "chmod", "0755", executable_path 
    ohai "Set executable permissions for #{executable_path}"
  end
end
