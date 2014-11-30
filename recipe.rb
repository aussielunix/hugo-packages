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
  sha256      '2e0a7971d0df81996ae1db0fe04291fb39a706cc9e8a2a98e9fe735c7289379f'

  def build
  end

  def install
    mkdir_p opt
    cp_r builddir("hugo_#{version}_linux_amd64"), opt('hugo')
    etc('profile.d').install workdir('hugo.profile'), 'hugo.sh'
  end
end

