class DotenvLinter < Formula
  desc "Linter for .env files. Written in Rust."
  homepage "https://github.com/mgrachev/dotenv-linter"
  version "1.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mgrachev/dotenv-linter/releases/download/v1.1.1/dotenv-linter-darwin-x86_64.tar.gz"
    sha256 "a34658da4dacfc0fbff50aac13c8435a4cb001616a8035ff03dc24495d3bc0e3"
  elsif OS.linux?
    url "https://github.com/mgrachev/dotenv-linter/releases/download/v1.1.1/dotenv-linter-linux-x86_64.tar.gz"
    sha256 "81ec273d1ee096baa8bd551009daccec05c53131a850872fc1929dffbfc0e246"
  end

  def install
    bin.install "dotenv-linter"
  end

  test do
    system "#{bin}/dotenv-linter --version"
  end
end
