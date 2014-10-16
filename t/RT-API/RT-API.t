use strict;
use Test::More 'no_plan';
use Data::Uniqid qw(uniqid);
use Data::Dumper;

BEGIN { use_ok('RT::API') };

my $url = 'https://10.200.8.3:8043';
#my $url = 'http://127.0.0.1:8043';
ok my $api = RT::API->new(url => $url);
can_ok $api, 'create_order';
can_ok $api, 'get_order_status';

while (<DATA>) {
  chomp;
  my ( $dept_id, $login, $account, $result_code, $status) = split /,\s+/;
  last if !$account;
  my $id = uniqid;
  diag("Created order_id: $id");
  my $order = {
    order_id  => $id,
    dept_id   => $dept_id,
    login     => $login,
    account   => $account,
    usl       => 'ViasatPremiumHD',
    contract  => 'SMARTER',
  };
  
  ok my $cres = $api->create_order($order);
  diag($cres->comment);
#  ok $result->is_success;
  cmp_ok $cres->code, '==', $result_code;
#  ok my $gres = $api->get_order_status($order);
#  print Dumper($gres);
#  SKIP: {
#    skip "Status not existent for unsuccessfull orders", 1 if !defined $status;
#    cmp_ok $gres->status, 'eq', $status;
#  }
}

__DATA__
411, 0701418123, 12597941120, 9
411, 0701418124, 12597941120, 9
411, 0701418122, 12597941120, 0, ORDER_STATUS_PROCESSING
411, 0701418121, 12597941120, 0, ORDER_STATUS_PROCESSING
