class DotenvLinter < Formula
  desc "Linter for .env files. Written in Rust."
  homepage "https://github.com/dotenv-linter/dotenv-linter"
  version "1.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dotenv-linter/dotenv-linter/releases/download/v1.2.0/dotenv-linter-darwin-x86_64.tar.gz"
    sha256 "77bb9375af19a8b0acd1423bc920801add772c874661ebd41530f50d45f61fae"
  elsif OS.linux?
    url "https://github.com/dotenv-linter/dotenv-linter/releases/download/v1.2.0/dotenv-linter-linux-x86_64.tar.gz"
    sha256 "eb840363c5f21c6cefc53edc6516e6978f0100e00f2c58b6452a23caa3652312"
  end

  def install
    bin.install "dotenv-linter"
  end

  test do
    system "#{bin}/dotenv-linter --version"
  end
end
