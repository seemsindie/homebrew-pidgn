class Pidgn < Formula
  desc "CLI tool for the Pidgn web framework — project scaffolding, dev server, migrations, and more"
  homepage "https://github.com/seemsindie/pidgn_cli"
  version "0.3.1-beta.14"
  license "MIT"

  on_macos do
    url "https://github.com/seemsindie/pidgn_cli/releases/download/v#{version}/pidgn-cli-v#{version}-aarch64-macos.tar.gz"
    sha256 "d60b8866d1024a3bab875e867e3b2f8ac12b5034b73d602c1570543c9eccebb2"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seemsindie/pidgn_cli/releases/download/v#{version}/pidgn-cli-v#{version}-aarch64-linux.tar.gz"
      sha256 "5ea1dab03e7658389f57e4cd1850ab08bbc254c81693ab97d831a0a68431753d"
    else
      url "https://github.com/seemsindie/pidgn_cli/releases/download/v#{version}/pidgn-cli-v#{version}-x86_64-linux.tar.gz"
      sha256 "c50067541a1e5463ed546bf064dce2ebc4fad52488e0963aeb078a9e5cb16fa5"
    end
  end

  def install
    bin.install "pidgn"
  end

  test do
    assert_match "pidgn", shell_output("#{bin}/pidgn --help 2>&1", 0)
  end
end
