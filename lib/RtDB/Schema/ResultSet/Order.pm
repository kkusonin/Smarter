use strict;
use warnings;
package RtDB::Schema::ResultSet::Order;
use base 'DBIx::Class::ResultSet';

sub new_verified {
  my $self = shift;

  $self->search({ 
      verified => 1,
      status  => 'NEW',
    });
}

1;
