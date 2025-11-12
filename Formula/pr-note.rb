class PrNote < Formula
  desc "A command-line tool to generate PR notes summarizing unmerged PRs on GitHub between two branches."
  homepage "https://github.com/K-tecchan/pr-note"
  version "${VERSION}"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/K-tecchan/pr-note/releases/download/v${VERSION}/pr-note-v${VERSION}-darwin-arm64.tar.gz"
      sha256 "${SHA_DARWIN_ARM64}"
    else
      url "https://github.com/K-tecchan/pr-note/releases/download/v${VERSION}/pr-note-v${VERSION}-darwin-x64.tar.gz"
      sha256 "${SHA_DARWIN_X64}"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/K-tecchan/pr-note/releases/download/v${VERSION}/pr-note-v${VERSION}-linux-arm64.tar.gz"
      sha256 "${SHA_LINUX_ARM64}"
    else
      url "https://github.com/K-tecchan/pr-note/releases/download/v${VERSION}/pr-note-v${VERSION}-linux-x64.tar.gz"
      sha256 "${SHA_LINUX_X64}"
    end
  end

  def install
    bin.install "pr-note"
  end

  test do
    system "#{bin}/pr-note", "--version"
  end
end
