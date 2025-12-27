class IntentEngine < Formula
  desc "AI long-term task memory system - cross-session persistence, hierarchical tasks, decision records"
  homepage "https://github.com/wayfind/intent-engine"
  version "0.10.3"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-macos-aarch64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-macos-x86_64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-linux-aarch64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-linux-x86_64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "ie"
  end

  test do
    system "#{bin}/ie", "--version"
  end
end
