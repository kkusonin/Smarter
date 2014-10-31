#!/usr/bin/perl
use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Config::General;
use Const::Fast;
use RT::API;
use RtDB::Schema;
use Data::Dumper;

sub format_output {
  chomp @_;
  printf("[%02d/%02d/%04d %02d:%02d%02d] %s\n", sub { $_[3], $_[4]+1, $_[5] + 1900, $_[2], $_[1], $_[0] }->(localtime), shift);
  foreach (@_) {
    printf "                                 %s\n", $_;
  }
}

const my $CONFIGFILE => "$FindBin::Bin/../smarter.conf";
const my $URL        => 'https://10.200.8.3:8043';

my $config = Config::General->new($CONFIGFILE);
my %conf = $config->getall;

my $connect_info = $conf{'Model::RtDB'}{'connect_info'};
my $url          = $conf{'Model::RtAPI'}{'args'}{'url'};

my $schema = RtDB::Schema->connect($connect_info);

my @orders = $schema->resultset('Order')->search({
    status => 'FAILED',
    result => 6,
  });

my $api = RT::API->new(url => $URL);

foreach my $order (@orders) {

  $order->reset_id;

  my ($order, $res) = $order->create_order($api);

  my $req = $res->request;

  format_output($req->decoded_content);
  format_output($res->decoded_content);
}

