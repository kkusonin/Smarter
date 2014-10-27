package Smarter::View::Excel;

use strict;
use warnings;

use base qw/Catalyst::View::Excel::Template::Plus/;

__PACKAGE__->config(
  etp_config  => {
    INCLUDE_PATH => [ Smarter->path_to('root','src') ],
  }
);

=head1 NAME

Smarter::View::Excel - Excel::Plus View for Smarter

=head1 SEE ALSO

See L<Smarter>.

=head1 DESCRIPTION

Catalyst Catalyst::View::Excel::Template::Plus View.

=head1 AUTHOR

root

=head1 LICENSE

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. See L<perlartistic>.

=cut

1;
