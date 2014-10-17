package RT::API::Request;
use strict;
use warnings;
use HTTP::Request;
use List::Util qw(first);
use XML::Simple;
use Carp;

our @EXPORT = qw(CREATE_ORDER GET_ORDER_STATUS);
use base qw(Exporter);

sub CREATE_ORDER {
  my ($url, $order) = @_;
  my @required = qw(account contract dept_id orderId login usl);

  my $req_data = _process_args(\@required, $order);

  _request($url, 'CREATE_ORDER', $req_data);
}

sub GET_ORDER_STATUS {
  my ($url, $order) = @_;
  my @required = qw(contract orderId);

  my $req_data = _process_args(\@required, $order);
  
  _request($url, 'GET_ORDER_STATUS', $req_data);
}

sub _process_args {
  my ($required, $order) = @_;

  my $req_data = { 
    map { 
      my $attr = $_; 
      $attr =~ s/([A-Z])(?=[^A-Z]+)/_\l$1/g; 
      $_, (ref $order eq 'HASH') ? $order->{$attr} : $order->$attr 
    } @$required 
  };
  
  if (my $missing = first { !defined $req_data->{$_} } @$required) {
    croak "Mandatory parameter $missing is undefined";
  }

  return $req_data;
}

sub _request {
  my ($url, $req_type, $req_data) = @_;
  $req_data = { reqType => $req_type, %$req_data };

  my $req = HTTP::Request->new(POST => $url);
  $req->header('Content-Type'   => 'text/xml');
#  $req->header('Content-Length' => length($req_data));
  $req->content(XMLout($req_data, RootName => 'request'));

  return $req;
}

1;
