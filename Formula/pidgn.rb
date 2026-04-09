class Pidgn < Formula
  desc "CLI tool for the Pidgn web framework — project scaffolding, dev server, migrations, and more"
  homepage "https://github.com/seemsindie/pidgn_cli"
  version "0.3.1-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seemsindie/pidgn_cli/releases/download/v#{version}/pidgn-cli-v#{version}-aarch64-macos.tar.gz"
      sha256 "3db9067a72171ae26290e5fdf340429f23db0c7de569086b538a04fb751faf73"
    else
      url "https://github.com/seemsindie/pidgn_cli/releases/download/v#{version}/pidgn-cli-v#{version}-x86_64-macos.tar.gz"
      sha256 "fbe3712406b67279df42d637ca5c78c76733d7ae78aaab938161840cfa7248d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seemsindie/pidgn_cli/releases/download/v#{version}/pidgn-cli-v#{version}-aarch64-linux.tar.gz"
      sha256 "f6781dd020ba2f16c8e392ccdda4bc1fc6cfb79dc333bbe14271eb884b77c823"
    else
      url "https://github.com/seemsindie/pidgn_cli/releases/download/v#{version}/pidgn-cli-v#{version}-x86_64-linux.tar.gz"
      sha256 "9ba18de3221a4d30e2a52c1e3e2c260744235634d08bc7717e26f08ca3838ad1"
    end
  end

  def install
    bin.install "pidgn"
  end

  test do
    assert_match "pidgn", shell_output("#{bin}/pidgn --help 2>&1", 0)
  end
end
