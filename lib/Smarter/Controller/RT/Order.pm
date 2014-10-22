package Smarter::Controller::RT::Order;
use utf8;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

__PACKAGE__->config(
  account => 'address2',
);

=head1 NAME

Smarter::Controller::RT::Order - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

sub base : Chained('/') PathPart('rt') CaptureArgs(0) {
  my ($self, $c) = @_;

 $c->stash(orders => $c->model('RtDB::Order'));
}

sub create : Chained('base') PathPart('order') Args(0) {
  my ($self, $c) = @_;
  my $order;

  my $lead_id = $c->req->params->{lead_id};
  my $lead = $c->model('VicidialDB::Lead')->find($lead_id);
  my $status  = $lead->status;

  if ($status eq 'PR') {
    my $dept_id       = $lead->city;
    my $account       = $lead->address2;
    my $login         = $lead->address3;
    my $phone_number  = $lead->phone_number;

    my ($verified) = $lead->get_custom_fields('check_pr');
    
    $c->log->info("$lead_id: status not verified") unless $verified == 2;

    eval {
      $c->log->debug($self->config->{account});
      $order = $c->model('RtDB::Order')->create({
          lead_id       => $lead_id,
          phone_number  => $phone_number,
          dept_id       => $dept_id,
          account       => $account,
          login         => $login,
          usl           => 'ViasatPremiumHD',
          contract      => 'SMARTER',
          verified      => (defined $verified && $verified == 2),
        });
    };
    if ($@) {
      $c->log->error("Error creating order: $@");
    }
    else {
      $c->log->info("Order created. UID: " . $order->order_id);
    }
    if ($verified == 2) {
      eval {
        my $api = $c->model('RtAPI');
        $order->create_order($api);
      };
    }
    if ($@) {
      $c->log->error("Remote error: $@");
    }
  }

  $c->res->status(200);
  $c->res->body('OK');
}

sub orders : Chained('base') PathPart('orders') Args(0) {
  my ($self, $c) = @_;

  my $page = 1;
  my $action = $self->action_for('list');
  #$c->log->debug($c->uri_for_action($action,,[1]));

  $c->res->redirect(
    $c->uri_for_action($action,,[$page])
  );
}

sub list : Chained('base') PathPart('orders') Args(1) {
  my ($self, $c, $page) = @_;

  my $rs = $c->stash->{orders}
             ->verified
             ->search(undef,
              {
                page => $page,
                rows => 20,
              });
  my $pager = $rs->pager;
  my @orders = $rs->all;
  
  $c->stash(
    collection  => \@orders,
    pager       => $pager,
    template    => 'list.tt2',
  );
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
