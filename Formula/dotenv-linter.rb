class DotenvLinter < Formula
  desc "Lightning-fast linter for .env files. Written in Rust."
  homepage "https://github.com/dotenv-linter/dotenv-linter"
  version "2.2.0"

  stable do
    if OS.mac?
      url "https://github.com/dotenv-linter/dotenv-linter/releases/download/v2.2.0/dotenv-linter-darwin-x86_64.tar.gz"
      sha256 "ac424e2500de4d691af0e4a997614fc84918e767e4d9261869b8c372e4597590"
    elsif OS.linux?
      url "https://github.com/dotenv-linter/dotenv-linter/releases/download/v2.2.0/dotenv-linter-linux-x86_64.tar.gz"
      sha256 "a65a847a38582664b9901585872a80e71b0b4e077059538bfb351b34874482e7"
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
