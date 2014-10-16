package Smarter::Model::VicidialDB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'Vicidial:::Schema',
    
    
);

=head1 NAME

Smarter::Model::VicidialDB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<Smarter>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<Vicidial:::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.63

=head1 AUTHOR

root

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
