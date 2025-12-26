class IntentEngine < Formula
  desc "AI long-term task memory system - cross-session persistence, hierarchical tasks, decision records"
  homepage "https://github.com/wayfind/intent-engine"
  version "0.10.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-macos-aarch64.tar.gz"
      sha256 "4cba864f7e0b4125fc811e96f04be299aa8f24b5f1ca921b3abcf3cca53c06af"
    else
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-macos-x86_64.tar.gz"
      sha256 "6e1b70374c7e6fd7726e4e0c4896c328be1bca9b03166ff1b056d87bfeb792fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-linux-aarch64.tar.gz"
      sha256 "9ed720d4b1b318c1e18730dbd428f1a3ca5b314bff5b7073bb36d5bddabce864"
    else
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-linux-x86_64.tar.gz"
      sha256 "185753848117515b4094e0f5f280a87cabeef21c076b3cfafdb6b8ecad01fd48"
    end
  end

  def install
    bin.install "ie"
  end

  test do
    system "#{bin}/ie", "--version"
  end
end
