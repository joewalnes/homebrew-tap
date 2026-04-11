class Pq < Formula
  desc "A Parquet Swiss Army Knife - inspect, query, transform, and view Parquet files"
  homepage "https://github.com/joewalnes/pq"
  version "latest"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joewalnes/pq/releases/download/latest/pq-darwin-arm64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joewalnes/pq/releases/download/latest/pq-linux-arm64"
    end
    on_intel do
      url "https://github.com/joewalnes/pq/releases/download/latest/pq-linux-amd64"
    end
  end

  def install
    bin.install Dir.glob("pq-*").first => "pq"
  end

  test do
    assert_match "pq", shell_output("#{bin}/pq --version")
  end
end
