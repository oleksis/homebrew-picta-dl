
class PictaDl < Formula
  desc "Download videos from Picta.cu Plataforma de Contenidos Audiovisuales"
  homepage "https://github.com/rsanjuan87/picta-dl/"
  url "https://github.com/rsanjuan87/picta-dl/archive/master.zip"
  sha256 ""
  license "Unlicense"
  version "1.0"

  def install
    libexec.install Dir['*']
    bin.install_symlink libexec/"picta-dl" => "picta-dl"
  end

  test do
  end
end
