#
# img4tool formula
#
class Img4tool < Formula
  desc "Tool for manipulating IMG4, IM4M and IM4P files"
  homepage "https://github.com/tihmstar/img4tool"
  url "https://github.com/tihmstar/img4tool.git",
      using:    :git,
      tag:      "197",
      revision: "aca6cf005c94caf135023263cbb5c61a0081804f"
  license "LGPL-3.0-only"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libgeneral" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build

  def install
    system "./autogen.sh"
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "install"
  end

  test do
    # no test atm
    system "true"
  end
end
