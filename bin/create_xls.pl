#!/usr/bin/perl
use strict;
use warnings;
use FindBin qw($Bin);
use lib "$FindBin::Bin/../lib";
use Excel::Template::Plus;
use Config::General;
use RtDB::Schema;

our $DEBUG = 1;

my $config = Config::General->new("$FindBin::Bin/../smarter.conf");
my %conf = $config->getall;

my $connect_info = $conf{'Model::RtDB'}{'connect_info'};

my $schema = RtDB::Schema->connect($connect_info);

my @orders = $schema->resultset('Order')->new_verified;

my $template = Excel::Template::Plus->new(
  engine    => 'TT',
  template  => "rt_orders.tt2",
  config    => {
    INCLUDE_PATH => [ "$FindBin::Bin/../root/src" ],
  },
  params    => {
      orders  => \@orders,
  }
);


use Data::Dumper;
print Dumper($template);

print $template->config->{INCLUDE_PATH}[0],"\n";
#$template->write_file('orders.xls');

