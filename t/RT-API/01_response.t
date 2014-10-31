use strict;
use warnings;
use utf8;
use Test::Most;
use HTTP::Response;
use Data::Dumper;

BEGIN { use_ok 'RT::API::Response' }

sub create_response {
  my $content = shift;

  return HTTP::Response->new(
                200,
                'OK',
                [
                  'Content-Type'  => 'text\xml; charset=utf-8',
                  'Content-Length'  => length $content,
                ],
                $content,
  );
}

my $success = create_response(q{<?xml version="1.0" encoding="utf-8"?>
  <response resultCode="0" orderStatus="ORDER_STATUS_PROCESSING" orderStatusDateTime="2014-04-18T00:00:00+11:00"/>});

my $failed = create_response(q{<?xml version="1.0" encoding="utf-8"?>
  <response resultCode="8" resultComment="Order exists already" orderStatusDateTime="2014-04-18T00:07:49+11:00"/>});


my $status = create_response(q{<?xml version="1.0" encoding="utf-8"?>
<response resultCode="0" orderStatus="ORDER_STATUS_ABANDONED" orderStatusDateTime="2014-10-27T00:00:00+10:00"/>});

can_ok 'RT::API::Response', 'new';

ok(my $res1 = RT::API::Response->new(response => $success), '...and constructor should create success response');
cmp_ok $res1->code, '==', 0, '...and code is correct';
cmp_ok $res1->status, 'eq', 'PROCESSING', '...and status is PROCESSING';

ok(my $res2 = RT::API::Response->new(response => $failed), '...and constructor should create failed response');
cmp_ok $res2->code, '==', 8, '...and code is correct';
cmp_ok $res2->status, 'eq', 'FAILED', '...and status is FAILED';

ok(my $res3 = RT::API::Response->new(response => $status), '...and constructor should create status response');
cmp_ok $res3->code, '==', 0, '...and code is correct';
cmp_ok $res3->status, 'eq', 'ABANDONED', '...and status is correct';

my $http_err = HTTP::Response->new(500, 'Internal Server Error');
throws_ok { RT::API::Response->new(response => $http_err)} qr/^HTTP error/, '...and throw Exception on HTTP error';

done_testing();
