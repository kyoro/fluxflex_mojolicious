#!/usr/bin/env /usr/bin/perl
use strict;
use warnings;

use FindBin::libs;
use Mojolicious::Command::Fastcgi;

$ENV{MOJO_APP} = 'MyApp';
Mojolicious::Command::Fastcgi->new->run;
