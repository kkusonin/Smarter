#!/usr/bin/env perl
# IMPORTANT: if you delete this file your app will not work as
# expected.  You have been warned.
use inc::Module::Install 1.02;
use Module::Install::Catalyst; # Complain loudly if you don't have
                               # Catalyst::Devel installed or haven't said
                               # 'make dist' to create a standalone tarball.

name 'Smarter';
all_from 'lib/Smarter.pm';

requires 'Catalyst::Runtime' => '5.90075';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::Model::DBIC::Schema';
requires 'Catalyst::Model::Adaptor';
requires 'Catalyst::View::TT';
requires 'Catalyst::View::Excel::Template::Plus';
requires 'Moose';
requires 'DateTime';
requires 'DateTime::Format::MySQL';
requires 'Data::Uniqid';
requires 'XML::Simple';
requires 'Const::Fast';
requires 'namespace::autoclean';
requires 'Config::General'; # This should reflect the config file format you've chosen
                 # See Catalyst::Plugin::ConfigLoader for supported formats
test_requires 'Test::More' => '0.88';
catalyst;

install_script glob('script/*.pl');
auto_install;
WriteAll;
