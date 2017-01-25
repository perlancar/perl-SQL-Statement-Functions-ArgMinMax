package SQL::Statement::Function::ByName::MINSTR;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use List::Util qw(minstr);

sub SQL_FUNCTION_MINSTR {
    minstr(@_[2..$#_]);
}

1;
# ABSTRACT: MINSTR() SQL function to return the (string-wise) minimum parameter

=for Pod::Coverage .+

=head1 DESCRIPTION

Uses L<List::Util>'s C<minstr>.
