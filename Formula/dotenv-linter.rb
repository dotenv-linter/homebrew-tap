class DotenvLinter < Formula
  desc "Linter for .env files. Written in Rust."
  homepage "https://github.com/mgrachev/dotenv-linter"
  version "1.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mgrachev/dotenv-linter/releases/download/v1.1.0/dotenv-linter-v1.1.0-darwin-x86_64.tar.gz"
    sha256 "e5083458d5b8920c67647addf448370ddae3b8c9f054393f86414f2c8df01f54"
  elsif OS.linux?
    url "https://github.com/mgrachev/dotenv-linter/releases/download/v1.1.0/dotenv-linter-v1.1.0-linux-x86_64.tar.gz"
    sha256 "50b602aaf265c5c131c2ceff6c188e6d3300c846fe347d4057054f1097d70b9b"
  end

  def install
    bin.install "dotenv-linter"
  end

  test do
    system "#{bin}/dotenv-linter --version"
  end
end
