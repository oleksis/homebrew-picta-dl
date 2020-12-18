
class PictaDl < Formula
  
  version "2020.12.14"
  appl="picta-dl"
  appremote="picta-dl"
  
  desc "Download videos from Picta.cu Plataforma de Contenidos Audiovisuales"
  homepage "https://github.com/oleksis/picta-dl/"
  url "https://github.com/oleksis/picta-dl/releases/download/v#{version}/#{appremote}"
  sha256 ""
  license "Unlicense"

  def install
    libexec.install Dir['*']
    bin.install_symlink libexec/"#{appremote}" => "#{appl}"
    system "chmod +x #{bin}/#{appremote}"
  end

  test do
    assert_match version, shell_output("#{appl}")
  end
end
