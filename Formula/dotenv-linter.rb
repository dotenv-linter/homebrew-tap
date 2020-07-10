class DotenvLinter < Formula
  desc "Lightning-fast linter for .env files. Written in Rust."
  homepage "https://github.com/dotenv-linter/dotenv-linter"
  version "2.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dotenv-linter/dotenv-linter/releases/download/v2.1.0/dotenv-linter-darwin-x86_64.tar.gz"
    sha256 "174d01f6a9e2084ef3152564f0c29c2c66dbe540fcb0ec044b041c6b242746a8"
  elsif OS.linux?
    url "https://github.com/dotenv-linter/dotenv-linter/releases/download/v2.1.0/dotenv-linter-linux-x86_64.tar.gz"
    sha256 "7f522587bc10b8b6d19386aa81513a0419a68ebf8079020aeb543fca00361575"
  end

  def install
    bin.install "dotenv-linter"
  end

  test do
    system "#{bin}/dotenv-linter --version"
  end
end
