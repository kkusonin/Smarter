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

sub verified {
  my $self = shift;

  $self->search({ verified => 1 });
}

sub interval {
  my ($self, $args) = @_;
  my %attrs = ( order_by => { '-asc' => 'id' } );
 
  my $dtf = $self->result_source->schema->storage->datetime_parser;

  my $start  = $args->{start} || DateTime->now(time_zone => 'local')
                                         ->subtract(years => 1);
  my $stop   = $args->{stop}  || DateTime->now(time_zone => 'local');

  defined $args->{row}  and $attrs{rows} = $args->{row};
  defined $args->{page} and $attrs{page} = $args->{page};

  $self->search(
    {
      entry_time => {
        between => [
          $dtf->format_datetime($start),
          $dtf->format_datetime($stop),
        ]
      },
    },
    \%attrs);
}

1;
