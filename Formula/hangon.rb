class Hangon < Formula
  desc "Persistent session manager for CLI-driven app interaction"
  homepage "https://github.com/joewalnes/hangon"
  version "latest"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/joewalnes/hangon/releases/download/latest/hangon-darwin-arm64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joewalnes/hangon/releases/download/latest/hangon-linux-arm64"
    end
    on_intel do
      url "https://github.com/joewalnes/hangon/releases/download/latest/hangon-linux-amd64"
    end
  end

  def install
    bin.install Dir.glob("hangon-*").first => "hangon"
  end

  test do
    assert_match "hangon", shell_output("#{bin}/hangon --version")
  end
end
