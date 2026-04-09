class Pidgn < Formula
  desc "CLI tool for the Pidgn web framework — project scaffolding, dev server, migrations, and more"
  homepage "https://github.com/seemsindie/pidgn_cli"
  version "0.3.1-beta.11"
  license "MIT"

  on_macos do
    url "https://github.com/seemsindie/pidgn_cli/releases/download/v#{version}/pidgn-cli-v#{version}-aarch64-macos.tar.gz"
    sha256 "b8746c8da36d473cc4078e2ebc80287e7f81e5556e1048ada522fad4a3e886a4"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seemsindie/pidgn_cli/releases/download/v#{version}/pidgn-cli-v#{version}-aarch64-linux.tar.gz"
      sha256 "e772c057fbc8e2dcbfd06ae32ceac499861293ffb6e6c6f092469927f005dc26"
    else
      url "https://github.com/seemsindie/pidgn_cli/releases/download/v#{version}/pidgn-cli-v#{version}-x86_64-linux.tar.gz"
      sha256 "b7388878b8a8768691c147e86697b6ff39760f5f33855bc41805f70c419dadfa"
    end
  end

  def install
    bin.install "pidgn"
  end

  test do
    assert_match "pidgn", shell_output("#{bin}/pidgn --help 2>&1", 0)
  end
end
