require 'rack/contrib/try_static'

use Rack::TryStatic, 
    :root => "public",  # static files root dir
    :urls => %w[/],     # match all requests 
    :try => ['.html', 'index.html', '/index.html'] # try these postfixes sequentially

use Rack::Static, 
  :urls => ["/slides", "/images", "/javascripts", "/stylesheets", "/hackathon.html"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}