class Rclone < Formula
  desc "Rsync for cloud storage"
  homepage "https://rclone.org/"
  version "1.69.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rclone/rclone/releases/download/v1.69.0/rclone-v1.69.0-osx-amd64.zip"
      sha256 "88475be8666944d5161bd15605d483f1bb55d9a46220b9dcf317b26e01659009"

      def install
        bin.install "rclone"
      end
    end
    on_arm do
      url "https://github.com/rclone/rclone/releases/download/v1.69.0/rclone-v1.69.0-osx-arm64.zip"
      sha256 "d8d22aca8f4af4c24ea01668a452d02888bef45e3a01c663cbb7d78bd1e21db2"

      def install
        bin.install "rclone"
      end
    end
  end

  test do
    system "#{bin}/rclone version"
  end
end