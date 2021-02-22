# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class FikoCli < Formula
      desc "A command line interface fro idk"
      homepage "https://fiko.hu"
      url "https://github.com/robertfiko/fiko-cli/archive/1.0.tar.gz"
      sha256 "8e9b4cde4cf3ad9cac8120b0ae4cd9f2c5a99351cce4a6bb74a8d78805608d63"
      license "MIT"
    
      # depends_on "cmake" => :build
    
      def install
        # ENV.deparallelize  # if your formula fails when building in parallel
        # Remove unrecognized options if warned by configure
        system "./configure", "--disable-debug",
                              "--disable-dependency-tracking",
                              "--disable-silent-rules",
                              "--prefix=#{prefix}"
        # system "cmake", ".", *std_cmake_args
      end
    
      test do
        # `test do` will create, run in and delete a temporary directory.
        #
        # This test will fail and we won't accept that! For Homebrew/homebrew-core
        # this will need to be a test that verifies the functionality of the
        # software. Run the test with `brew test fiko-cli`. Options passed
        # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
        #
        # The installed folder is not in the path, so use the entire path to any
        # executables being tested: `system "#{bin}/program", "do", "something"`.
        system "false"
      end
    end
    