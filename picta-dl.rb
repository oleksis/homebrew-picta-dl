
class PictaDl < Formula
  desc "Download videos from Picta.cu Plataforma de Contenidos Audiovisuales"
  homepage "https://github.com/rsanjuan87/picta-dl/"
  url "https://github.com/oleksis/picta-dl/releases/download/v2020.12.14/picta-dl"
  sha256 ""
  license "Unlicense"
  version "1.0"

  def install
    libexec.install Dir['*']
    bin.install_symlink libexec/"picta-dl" => "picta-dl"
    system "chmod +x #{bin}/picta-dl"
  end

  test do
  end
end
