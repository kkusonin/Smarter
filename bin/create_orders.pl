#!/usr/bin/perl
use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Config::General;
use Const::Fast;
use RT::API;
use RtDB::Schema;

const my $CONFIGFILE => "$FindBin::Bin/../smarter.conf";
const my $URL        => 'https://10.200.8.3:8043';

my $config = Config::General->new($CONFIGFILE);
my %conf = $config->getall;

my $connect_info = $conf{'Model::RtDB'}{'connect_info'};
my $url          = $conf{'Model::RtAPI'}{'args'}{'url'};

my $schema = RtDB::Schema->connect($connect_info);

my @orders = $schema->resultset('Order')
                    ->new_verified;

my $api = RT::API->new(url => $URL);

foreach (@orders) {
   $_->create_order($api);
  print $_->order_id, " : ", $_->status, "\n";
}
