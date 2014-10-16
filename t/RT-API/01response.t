use strict;
use warnings;
use utf8;
use Test::Most 'no_plan';
use HTTP::Response;
use Data::Dumper;

BEGIN { use_ok 'RT::API::Response' }

my $content = '<?xml version="1.0" encoding="utf-8"?>
<response resultCode="8" resultComment="Order not found"/>';

my $r1 = HTTP::Response->new(
  200,
  'OK',
  [
    'Content-Type'  => 'text\xml; charset=utf-8',
    'Content-Length'  => length $content,
  ],
  $content,
);


can_ok 'RT::API::Response', 'new';
ok my $res = RT::API::Response->new($r1);# '...and constructor should succeed';
cmp_ok $res->code, '==', 8, '...and result_code is correct';
cmp_ok $res->comment, 'eq', 'Order not found', '...and comment is correct';
