package RT::API;
use Moose;
use MooseX::MarkAsMethods autoclean => 1;
use LWP::UserAgent;
use RT::API::Request;
use RT::API::Response;

has 'url' => (
  is        => 'rw',
  isa       => 'Str',
  required  => 1
);

has '_user_agent' => (
  is      => 'ro',
  isa     => 'LWP::UserAgent',
  builder => '_init_ua',
  lazy    => 1,
);

sub _init_ua {
  LWP::UserAgent->new(
    timeout => 45,
    ssl_opts => { verify_hostname => 0 },
  );
}

sub create_order {
  my $self = shift;
  my $order = shift;

  return $self->_request(
    CREATE_ORDER $self->url, $order
  );
};

sub get_order_status {
  my $self = shift;

  $self->_request(
    GET_ORDER_STATUS $self->url, @_
  );
}

sub _request {
  my ($self, $request) = @_;

  my $response = $self->_user_agent->request($request);

  return RT::API::Response->new($response);
}
      
__PACKAGE__->meta->make_immutable;

1;
