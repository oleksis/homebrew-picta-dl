
class PictaDl < Formula
  
  version "2020.12.14"
  app "picta-dl"
  appremote "picta-dl"
  
  desc "Download videos from Picta.cu Plataforma de Contenidos Audiovisuales"
  homepage "https://github.com/rsanjuan87/picta-dl/"
  url "https://github.com/oleksis/picta-dl/releases/download/v#{version}/#{appremote}"
  sha256 ""
  license "Unlicense"

  def install
    libexec.install Dir['*']
    bin.install_symlink libexec/appremote => "#{app}"
    system "chmod +x #{bin}/#{app}"
  end

  test do
    assert_match version, shell_output("picta-dl")
  end
end
