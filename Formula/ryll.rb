class Ryll < Formula
  desc "A Rust SPICE VDI test client"
  homepage "https://github.com/shakenfist/ryll"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shakenfist/ryll/releases/download/v#{version}/ryll-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "077c88fa99d0f3c4025732b51bf0e7797906888b9487f1a1688213c6a84c7a9e"
    end
  end

  def install
    bin.install "ryll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ryll --version")
  end
end
