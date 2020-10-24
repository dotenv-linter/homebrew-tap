class DotenvLinter < Formula
  desc "Lightning-fast linter for .env files. Written in Rust."
  homepage "https://github.com/dotenv-linter/dotenv-linter"
  version "2.2.1"

  stable do
    if OS.mac?
      url "https://github.com/dotenv-linter/dotenv-linter/releases/download/v2.2.1/dotenv-linter-darwin-x86_64.tar.gz"
      sha256 "b06cf1ec07b33c34ebceb7a3ccb8ad9af407803273c924aa4a7a8e2f3e5ca3ee"
    elsif OS.linux?
      url "https://github.com/dotenv-linter/dotenv-linter/releases/download/v2.2.1/dotenv-linter-linux-x86_64.tar.gz"
      sha256 "7ff381563ee6a1deaf7e597bde3544a315a98b2cf84e54a7faf2649776b3f6c6"
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
