class Hugo < FPM::Cookery::Recipe

  homepage    'http://gohugo.io'

  name        'hugo'
  arch        'amd64'
  version     '0.12'
  revision    '1'
  vendor      'aussielunix'

  description 'A Fast, modern, static website engine.'
  section     'admin'

  source      "https://github.com/spf13/hugo/releases/download/v#{version}/hugo-linux-amd64"
  sha256      'a4ff87f3b16c786226e0d1b3a2862246080ca1a608a2e2b676166cf0ef929001'

  def build
  end

  def install
    mkdir_p opt
    cp_r builddir("hugo-linux-amd64"), opt('hugo')
    etc('profile.d').install workdir('hugo.profile'), 'hugo.sh'
  end
end

