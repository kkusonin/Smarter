use strict;
use warnings;

use Smarter;

my $app = Smarter->apply_default_middlewares(Smarter->psgi_app);
$app;

