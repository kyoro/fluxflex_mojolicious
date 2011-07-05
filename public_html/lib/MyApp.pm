package MyApp;
use Mojolicious::Lite;

#index
get '/' => sub {
  my $self = shift;
  my ($sec,$min,$hour) = localtime(time);
  $self->render({
      title         => 'Welcome to Mojolicius on fluxflex',
      display_time  => sprintf("%02d:%02d:%02d",$hour,$min,$sec),
      });
} => 'index';

#hello
get '/hello' => { text => 'Hello World!' };

app->start;

__DATA__

@@ index.html.ep
<html>
  <head>
    <title><%= $title %></title>
    <style>
      body {
        background-color: #F5F6F8;
        color: #333;
        padding: 30px;
        text-shadow: 0 1px 0 #DDD;
        text-align: center;
      }
      a img { border: none; }
    </style>
  </head>
  <body>
    <a href="http://mojolicio.us/">
    <img src="http://mojolicio.us/mojolicious-black.png" />
    </a>
    <h1><%= $title %></h1>
    <h3>Time:<%= $display_time %></h3>
    <p>A next generation web framework for the Perl programming language.</p>
  </body>
</html>
