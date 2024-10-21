class Rclone < Formula
  desc "Rsync for cloud storage"
  homepage "https://rclone.org/"
  version "1.68.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rclone/rclone/releases/download/v1.68.1/rclone-v1.68.1-osx-amd64.zip"
      sha256 "d81e091571bc040282dab39d0cdee6b3215774de389469cd850c9803d6191de3"

      def install
        bin.install "rclone"
      end
    end
    on_arm do
      url "https://github.com/rclone/rclone/releases/download/v1.68.1/rclone-v1.68.1-osx-arm64.zip"
      sha256 "38e7588e13c93ee710daa44bb798437eca7fd583d4e98d0bce6c685ff11f4152"

      def install
        bin.install "rclone"
      end
    end
  end

  test do
    system "#{bin}/rclone version"
  end
end