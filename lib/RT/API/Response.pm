package RT::API::Response;
use Moose;
use Carp qw(croak);
use HTTP::Response;
use XML::Simple;
use namespace::autoclean;

has response => (
  is        => 'ro',
  isa       => 'HTTP::Response',
  required  => 1,
  handles   => [qw(request decoded_content)],
);


has code => (
  is        => 'ro',
  isa       => 'Int',
  writer    => '_set_code',
);

has comment => (
  is        => 'ro',
  isa       => 'Str',
  writer    => '_set_comment',
);

has status => ( is => 'ro', isa => 'Str', writer => '_set_status' );

#around 'BUILDARGS' => sub {
#  my $orig  = shift;
#  my $class = shift;
#
#  if (@_ == 1 && $_[0]->isa('HTTP::Response')) {
#      return $class->$orig( response => $_[0] );
#  }
#  else {
#    return $class->$orig(@_);
#  }
#};

sub BUILD {
  my $self = shift;

  my $res = $self->response;
  croak 'HTTP error: ' . $res->status_line unless $res->is_success;
  
  my $attrs = XMLin($res->decoded_content);
  
  $self->_set_code($attrs->{resultCode});

  my $comment = $attrs->{resultComment} || '';
  $self->_set_comment($comment);

  (my $status = $attrs->{orderStatus} || 'FAILED') =~ s/^ORDER_STATUS_//;
  $self->_set_status($status);
}

__PACKAGE__->meta->make_immutable;

1;
