class Hugo < FPM::Cookery::Recipe

  homepage    'http://gohugo.io'

  name        'hugo'
  arch        'amd64'
  version     '0.12'
  revision    '1'
  vendor      'aussielunix'

  description 'A Fast, modern, static website engine.'
  section     'admin'

  source      "https://github.com/spf13/hugo/releases/download/v#{version}/hugo_#{version}_linux_amd64.tar.gz"
  sha256      '27f4de82e490dfbe0f81eee280f94878e2fd71f2716d7d067fd9c57816ac309a'

  def build
  end

  def install
    mkdir_p opt
    cp_r builddir("hugo_#{version}_linux_amd64"), opt('hugo')
    etc('profile.d').install workdir('hugo.profile'), 'hugo.sh'
  end
end

