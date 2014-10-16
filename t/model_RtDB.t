use strict;
use warnings;
use Test::More;

BEGIN { 
  use_ok 'RtDB::Schema';
  use_ok 'Smarter::Model::RtDB';
}

ok my $model = Smarter::Model::RtDB->new(
  schema_class    => 'RtDB::Schema',
  connect_info    => {
    dsn               => 'dbi:mysql:rt',
    user              => 'smarterapp',
    password          => 'UniJjz8X!N$S',
    RaiseError        => 1,
    mysql_enable_utf8 => 1,
  }
);

ok my $rs = $model->resultset('Order'), 'has order resultset';
ok my $order = $rs->create({
  account   => '12597941120',
  login     => '0701418123',
  dept_id   => '411',
  usl       => 'ViasatPremiumHD',
  contract  => 'SMARTER'
}), 'order can be created';
ok $order->order_id, 'Order has order_id (uniq)';
diag $order->order_id;

done_testing();
