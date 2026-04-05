class Ryll < Formula
  desc "A Rust SPICE VDI test client"
  homepage "https://github.com/shakenfist/ryll"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shakenfist/ryll/releases/download/v#{version}/ryll-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3d4a9117f772f4e94becc6532470ea2b4dd77c2cc65a166371731526e6a35d77"
    end
  end

  def install
    bin.install "ryll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ryll --version")
  end
end
