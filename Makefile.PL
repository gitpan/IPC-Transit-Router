use 5.006;
use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

name     'IPC-Transit-Router';
all_from 'lib/IPC/Transit/Router.pm';
author   q{Dana M. Diederich <diederich@gmail.com>};
license  'artistic2';

perl_version 5.006;

tests_recursive('t');

resources (
   homepage   => 'https://metacpan.org/module/IPC::Transit::Router',
   #IRC        => 'irc://irc.perl.org/#IPC-Transit-Router',
   license    => 'http://www.perlfoundation.org/artistic_license_2_0',
   repository => 'git://github.com/dana/perl-IPC-Transit-Router.git',
   bugtracker => 'https://github.com/dana/perl-IPC-Transit-Router/issues',
);

configure_requires (
   'Module::Install' => 0,
);

build_requires (
   'Test::More' => 0,
   'IPC::Transit' => 0,
   'Message::Router' => 0,
);

requires (
   'IPC::Transit' => 0,
   'Message::Router' => 0,
);

install_as_cpan;
auto_install;
WriteAll;
