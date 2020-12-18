
class PictaDl < Formula
  
  version "2020.12.14"  
  desc "Download videos from Picta.cu Plataforma de Contenidos Audiovisuales"
  homepage "https://github.com/oleksis/picta-dl/"
  url "https://github.com/oleksis/picta-dl/archive/v#{version}.zip"
  #url "https://github.com/oleksis/picta-dl/releases/download/v#{version}/picta-dl"
  sha256 ""
  license "Unlicense"

  depends_on "python@3.9"
  
  def install
    libexec.install Dir['*']
    
    system "mkdir #{bin}"
    system "echo \"python #{libexec}/picta-dl \\$@\"> #{bin}/picta-dl "
    
    #bin.install_symlink "#{libexec}/picta-dl" => "picta-dl"
    
    libexec.install_symlink "#{libexec}/picta_dl/__main__.py" => "picta-dl"
    system "chmod +x #{bin}/picta-dl"
  end

  test do
    assert_match version, shell_output("picta-dl")
  end
end
