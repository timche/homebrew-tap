class Boswell < Formula
  desc "Daemon that watches git repositories and commits and pushes what changes"
  homepage "https://github.com/timche/boswell"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/timche/boswell/releases/download/v0.3.0/boswell-aarch64-apple-darwin.tar.gz"
      sha256 "933bfc9e81f89c9ab00ccae056ee0dce2cb937ff3a2d58aef17919f001899b88"
    end

    on_intel do
      url "https://github.com/timche/boswell/releases/download/v0.3.0/boswell-aarch64-apple-darwin.tar.gz"
      sha256 "933bfc9e81f89c9ab00ccae056ee0dce2cb937ff3a2d58aef17919f001899b88"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/timche/boswell/releases/download/v0.3.0/boswell-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2b001e70ed7b9a6a8619aa0faed8a6ab73c261ac79e626c897654025a924f37b"
    end

    on_arm do
      url "https://github.com/timche/boswell/releases/download/v0.3.0/boswell-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2b001e70ed7b9a6a8619aa0faed8a6ab73c261ac79e626c897654025a924f37b"
    end
  end

  def install
    bin.install "boswell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/boswell --version")
  end
end
