package RT::API::Response;
use strict;
use warnings;
use HTTP::Response;
use XML::Simple;
use Carp qw(croak);

sub new {
  my ($class, $r) = @_;

  croak "Invalid argument" unless ref $r eq 'HTTP::Response';

  croak "HTTP error " . $r->status_line unless $r->is_success;

  croak "HTTP content is empty" unless $r->decoded_content;

  my $self = XMLin($r->decoded_content);
  return bless $self, $class;
}

sub code {
  $_[0]->{resultCode};
}

sub comment {
  $_[0]->{resultComment};
}

sub status {
  my $status = $_[0]->{orderStatus};
  $status =~ s/^ORDER_STATUS_//;
  return $status;
}

1;
