#!/usr/bin/perl;
use strict;
use warnings;
use RtDB::Schema;
use RT::API;
use Config::General;

my $config = Config::General->new('smarter.conf');

my %conf = $config->getall;

my $schema = RtDB::Schema->connect(
  $conf{'Model::RtDB'}{'connect_info'},
);

#print map { $_->account . "\n"; } ($schema->resultset('Order')->new_verified);

my $url = 'https://10.200.8.3:8043';

my $api = RT::API->new(url => $url);

my $attr = 'login';

foreach ($schema->resultset('Order')->new_verified) {
  print $_->account;
  $_->create_order($api);
  print " : ", $_->status, "\n";
  sleep 5;
}
