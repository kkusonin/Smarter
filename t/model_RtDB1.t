use strict;
use warnings;
use Test::More;
use Smarter();

BEGIN { 
  use_ok 'RtDB::Schema';
  use_ok 'Smarter::Model::RtDB';
}

ok my $schema = Smarter->model('RtDB')->schema, 'Connection to database';

done_testing();
