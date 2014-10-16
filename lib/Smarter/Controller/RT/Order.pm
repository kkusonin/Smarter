package Smarter::Controller::RT::Order;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

Smarter::Controller::RT::Order - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

sub base : Chained('/') PathPart('rt') CaptureArgs(0) {
  my ($self, $c) = @_;

 $c->stash(model => $c->model('RtDB::Order'));
}

sub create : Chained('base') PathPart('order') Args(0) {
  my ($self, $c) = @_;
  my $order;

  my $lead_id = $c->req->params->{lead_id};
  my $status  = $c->req->params->{status};

  if ($status eq 'PR') {
    my $lead = $c->model('VicidialDB::Lead')->find($lead_id);
    my $dept_id = $lead->city;
    my $account = $lead->address2;
    my $login   = $lead->address3;
    $c->log->debug("Got order data: dept_id: $dept_id, account: $account, login: $login");
    eval {
      $order = $c->model('RtDB::Order')->create({
          dept_id   => $dept_id,
          account   => $account,
          login     => $login,
          usl       => 'ViasatPremiumHD',
          contract  => 'SMARTER',
        });
    };
    if ($@) {
      $c->log->debug("Error creating order: $@");
    }
    else {
      $c->log->debug("Order created. UID: " . $order->order_id);
    }
  }

  $c->res->status(200);
  $c->res->body('OK');
}

=encoding utf8

=head1 AUTHOR

root

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
