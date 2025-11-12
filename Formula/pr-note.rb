class PrNote < Formula
  desc "A command-line tool to generate PR notes summarizing unmerged PRs on GitHub between two branches."
  homepage "https://github.com/K-tecchan/pr-note"
  version "sample-version"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/K-tecchan/pr-note/releases/download/vsample-version/pr-note-vsample-version-darwin-arm64.tar.gz"
      sha256 "sample-sha"
    end
    if Hardware::CPU.intel?
      url "https://github.com/K-tecchan/pr-note/releases/download/vsample-version/pr-note-vsample-version-darwin-x64.tar.gz"
      sha256 "sample-sha"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/K-tecchan/pr-note/releases/download/vsample-version/pr-note-vsample-version-linux-arm64.tar.gz"
      sha256 "sample-sha"
    end
    if Hardware::CPU.intel?
      url "https://github.com/K-tecchan/pr-note/releases/download/vsample-version/pr-note-vsample-version-linux-x64.tar.gz"
      sha256 "sample-sha"
    end
  end

  def install
    bin.install "pr-note"
  end

  test do
    system "#{bin}/pr-note", "--version"
  end
end
