class Ryll < Formula
  desc "A Rust SPICE VDI test client"
  homepage "https://github.com/shakenfist/ryll"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shakenfist/ryll/releases/download/v#{version}/ryll-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1912a614108c6be1e314abfa4e46963da8a65ee8b1a0cf7110fdcae3b1ee0075"
    end
  end

  def install
    bin.install "ryll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ryll --version")
  end
end
