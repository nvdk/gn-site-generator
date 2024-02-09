require 'jekyll'

# route to regenerate website
post '/delta' do

end

post '/generate' do
  update_jekyll_config
  build_website
end


def build_website
  conf = Jekyll.configuration({
                                'source'      => '/data/jekyll_config',
                                'destination' => '/data/output'
                              })

  Jekyll::Site.new(conf).process
end
