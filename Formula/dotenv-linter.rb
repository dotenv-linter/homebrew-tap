class DotenvLinter < Formula
  desc "Lightning-fast linter for .env files. Written in Rust."
  homepage "https://github.com/dotenv-linter/dotenv-linter"
  version "2.2.0"

  stable do
    if OS.mac?
      url "https://github.com/dotenv-linter/dotenv-linter/releases/download/v2.2.0/dotenv-linter-darwin-x86_64.tar.gz"
      sha256 "750606d7404a2d8224c7a8ad047653eabe4995d1cd3edd89310179eebbbedb60"
    elsif OS.linux?
      url "https://github.com/dotenv-linter/dotenv-linter/releases/download/v2.2.0/dotenv-linter-linux-x86_64.tar.gz"
      sha256 "26783c3f2e30452e2669c8677561ec46880e2f66eaf75c129db69e4b81e2f9da"
    end
  end

  head do
    url "https://github.com/dotenv-linter/dotenv-linter.git"
    depends_on "rust" => :build
  end

  bottle :unneeded

  def install
    if build.head?
      system "cargo", "install", *std_cargo_args
    else
      bin.install "dotenv-linter"
    end
  end

  test do
    system "#{bin}/dotenv-linter --version"
  end
end
