class Boswell < Formula
  desc "Daemon that watches git repositories and commits and pushes what changes"
  homepage "https://github.com/timche/boswell"

  on_macos do
    on_arm do
      url "https://github.com/timche/boswell/releases/download/v0.2.2/boswell-aarch64-apple-darwin.tar.gz"
      sha256 "368fa3ac07532bb79a9191ce6e3bfd2ed3dee0732bb5c38c7be6d4e3f91b4cd4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timche/boswell/releases/download/v0.2.2/boswell-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bbe2a96b4ff7a683cce3bed5fcd8136cf703673bdd2c188da4f05bd897223ff7"
    end
  end

  def install
    bin.install "boswell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/boswell --version")
  end
end
