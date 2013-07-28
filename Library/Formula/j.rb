require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class J < Formula
  version "0.7"
  homepage 'http://www.jsoftware.com'
  url 'http://www.jsoftware.com/download/j701_b_source.tar.gz'
  sha1 'cda6cf9d4299cdcfdbb77ca69886d667a9f595a4'

  def install
    system "./bin/build_jconsole"
    system "./bin/build_libj"
    bin.install "./j/bin/jconsole" => "j"
    bin.install "./j/bin/libj.dylib"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test j`.
    system "false"
  end
end
