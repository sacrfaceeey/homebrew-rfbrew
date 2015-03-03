require 'formula'

class GrBaz < Formula
  homepage 'http://wiki.spench.net/wiki/Gr-baz'
  url 'https://github.com/balint256/gr-baz.git', :commit => '7a4e416f743a6b929346f417f28ca87e326e8494'
  revision '1'

  depends_on 'cmake' => :build
  depends_on 'gnuradio'

  def install
    mkdir 'build' do
      system 'cmake', '..', '-DPYTHON_LIBRARY=/usr/local/Frameworks/Python.framework/Versions/2.7/Python ', *std_cmake_args
      system 'make'
      system 'make install'
    end
  end
end
