use strict;
use warnings;
use Test::Most tests => 24;
use XML::Simple;

BEGIN { use_ok('RT::API::Request') }



my $order = {
  order_id  => "123xfdg",
  dept_id   => "411",
  login     => "05487123",
  account   => "1234542320",
  usl       => "ViasatPremiumHD",
  contract  => "SMARTER",
};

my $url = 'http://127.0.0.1/';
ok my $req1 = CREATE_ORDER($url, $order), 'CREATE_ORDER succeeded';
isa_ok $req1, 'HTTP::Request', '... and create_order';
cmp_ok $req1->method, 'eq', 'POST', '... and request method is POST';
cmp_ok $req1->uri, 'eq', "$url", '...and request url is correct';
cmp_ok $req1->header('Content_Type'), 'eq', 'text/xml', '... and content-type is text/xml';

my $req_data = XMLin($req1->content);
cmp_ok delete $req_data->{reqType}, 'eq', 'CREATE_ORDER', '...and reqType is correct';
cmp_ok delete $req_data->{orderId}, 'eq', $order->{order_id}, '...and orderId is correct';
cmp_ok delete $req_data->{account}, 'eq', $order->{account}, '...and account is correct';
cmp_ok delete $req_data->{dept_id}, 'eq', $order->{dept_id}, '...and dept_id is correct';
cmp_ok delete $req_data->{login}, 'eq', $order->{login}, '...and login is correct';
cmp_ok delete $req_data->{usl}, 'eq', $order->{usl}, '...and usl is correct';
cmp_ok delete $req_data->{contract}, 'eq', $order->{contract}, '...and contract is correct';
ok !%$req_data, '...and no more fields defined';

ok my $req2 = GET_ORDER_STATUS($url, $order), 'GET_ORDER_STATUS succeeded';
isa_ok $req2, 'HTTP::Request', '... and get_order_status';
cmp_ok $req2->method, 'eq', 'POST', '... and method is POST';
cmp_ok $req2->uri, 'eq', "$url", '...and url is correct';
cmp_ok $req2->header('Content_Type'), 'eq', 'text/xml', '... and content-type is text/xml';

$req_data = XMLin($req2->content);
cmp_ok delete $req_data->{orderId},  'eq', $order->{order_id}, '...and orderId is correct';
cmp_ok delete $req_data->{reqType},  'eq', 'GET_ORDER_STATUS', '...and reqType is correct';
cmp_ok delete $req_data->{contract}, 'eq', $order->{contract}, '...and contract is correct';
ok !%$req_data, '...and no more fields defined';

throws_ok { CREATE_ORDER($url, {order_id => '1234567', dept_id => '411' }) }
    qr/^Mandatory parameter/, 'Request croaks in absence of mandatory parameters';
