class Libgeneral < Formula
  desc "Collection of c++ macros, that help follow a consistent coding style"
  homepage "https://github.com/tihmstar/libgeneral"
  url "https://github.com/tihmstar/libgeneral.git",
      using:    :git,
      tag:      "63",
      revision: "017d71edb0a12ff4fa01a39d12cd297d8b3d8d34"

  license "LGPL-2.1-only"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build

  def install
    system "./autogen.sh"
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "install"
  end

  test do
    system "false"
  end
end
