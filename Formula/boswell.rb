class Boswell < Formula
  desc "Daemon that watches git repositories"
  homepage "https://github.com/timche/boswell"

  on_macos do
    on_arm do
      url "https://github.com/timche/boswell/releases/download/v0.2.1/boswell-aarch64-apple-darwin.tar.gz"
      sha256 "5d33a3ec4c681745f075f4b5d0668c1aa00d7fd2f2a3ae67f9381b0844b6fc68"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timche/boswell/releases/download/v0.2.1/boswell-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0ac532605d1f1764f439604af6eb7d75b62f545869b0e0cdc276089d898478d1"
    end
  end

  def install
    bin.install "boswell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/boswell --version")
  end
end
