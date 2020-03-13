class DotenvLinter < Formula
  desc "Linter for .env files. Written in Rust."
  homepage "https://github.com/mgrachev/dotenv-linter"
  version "1.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mgrachev/dotenv-linter/releases/download/v1.1.2/dotenv-linter-darwin-x86_64.tar.gz"
    sha256 "708e6b48209b8746ce0eed98291602ab3978d22b54a53a1f5395cb07b1925ab2"
  elsif OS.linux?
    url "https://github.com/mgrachev/dotenv-linter/releases/download/v1.1.2/dotenv-linter-linux-x86_64.tar.gz"
    sha256 "df388e53442e617120ce5a57ea6868ae055e9c232563d2658220261edbc0c690"
  end

  def install
    bin.install "dotenv-linter"
  end

  test do
    system "#{bin}/dotenv-linter --version"
  end
end
