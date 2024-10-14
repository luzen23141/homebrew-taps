class Air < Formula
  desc "Live reload for Go apps."
  homepage "https://github.com/air-verse/air"
  version "1.61.0"

  on_macos do
    on_intel do
      url "https://github.com/air-verse/air/releases/download/v1.61.0/air_1.61.0_darwin_amd64.tar.gz"
      sha256 "7a4e4745b442c54534d472c30a289e8989b290d471fc19a0a6bf7b4d2c13d356"

      def install
        bin.install "air"
      end
    end
    on_arm do
      url "https://github.com/air-verse/air/releases/download/v1.61.0/air_1.61.0_darwin_arm64.tar.gz"
      sha256 "e8e5246a8aa9adc52c78cf383ae6832acf41fa3c748c00ae2762b94c8ee64dc2"

      def install
        bin.install "air"
      end
    end
  end

  test do
    system "#{bin}/air -v"
  end
end