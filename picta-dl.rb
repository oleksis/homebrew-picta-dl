
class PictaDl < Formula
  desc "Download videos from Picta.cu Plataforma de Contenidos Audiovisuales"
  homepage "https://github.com/rsanjuan87/picta-dl/"
  url "https://github.com/rsanjuan87/picta-dl/archive/master.zip"
  sha256 ""
  license "Unlicense"

  depends_on "python@3.9"

  def install
    libexec.install Dir['*']
    bin.install_exec_script libexec/"picta-dl" => picta-dl
  end

  test do
    picta-dl version
  end
end
