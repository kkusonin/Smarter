package Smarter::Model::RtAPI;
use base 'Catalyst::Model::Adaptor';

__PACKAGE__->config( class => 'RT::API' );

1;
