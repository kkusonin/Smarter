#!/usr/bin/perl
use strict;
use warnings;
use Config::General;
use RtDB::Schema;
use RT::API;
use DateTime;

my $config = Config::General->new('smarter.conf');
my %conf = $config->getall;

my $connect_info = $conf{'Model::RtDB'}{'connect_info'};

my $schema = RtDB::Schema->connect($connect_info);

#my @orders = $schema->resultset('Order')
#                    ->verified
#                    ->interval({ stop => DateTime->now(time_zone => 'local')});

my @orders = $schema->resultset('Order')
                    ->new_verified
                    ->search({result => 0});

my $api = RT::API->new(url => 'https://127.0.0.1:8043');

foreach (@orders) {
  $_->get_order_status($api);
  print $_->order_id, " : ", $_->status, "\n";
}

