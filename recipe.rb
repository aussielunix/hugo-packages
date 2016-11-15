class Hugo < FPM::Cookery::Recipe

  homepage    'http://gohugo.io'

  name        'hugo'
  arch        'amd64'
  version     '0.17'
  revision    '1'
  vendor      'aussielunix'

  description 'A Fast, modern, static website engine.'
  section     'admin'

  source      "https://github.com/spf13/hugo/releases/download/v#{version}/hugo_#{version}_Linux-64bit.tar.gz"
  sha256      'f1467e204cc469b9ca6f17c0dc4da4a620643b6d9a50cb7dce2508aaf8fbc1ea'

  def build
  end

  def install
    mkdir_p opt
    cp_r builddir("hugo_#{version}_linux_amd64"), opt('hugo')
    etc('profile.d').install workdir('hugo.profile'), 'hugo.sh'
  end
end

