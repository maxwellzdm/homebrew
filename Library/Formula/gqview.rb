require 'formula'

class Gqview < Formula
  homepage 'http://gqview.sourceforge.net'
  url 'http://downloads.sourceforge.net/project/gqview/gqview/2.0.4/gqview-2.0.4.tar.gz'
  sha1 'aae8f1cdae60441472a52d594cb42572d0d79eeb'

  depends_on 'gtk+'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make install"
  end
end
