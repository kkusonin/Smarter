package Smarter::View::HTML;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    ENCODING            => 'utf-8',
    TEMPLATE_EXTENSION  => '.tt2',
    INCLUDE_PATH        => [
      Smarter->path_to('root','src'),
      Smarter->path_to('root','lib'),
    ],
    WRAPPER             => 'wrapper.tt2',
    ABSOLUTE            => 1,
    render_die          => 1,
);

=head1 NAME

Smarter::View::HTML - TT View for Smarter

=head1 DESCRIPTION

TT View for Smarter.

=head1 SEE ALSO

L<Smarter>

=head1 AUTHOR

root

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
