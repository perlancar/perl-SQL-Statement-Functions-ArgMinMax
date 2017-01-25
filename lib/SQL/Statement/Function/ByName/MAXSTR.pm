package SQL::Statement::Function::ByName::MAXSTR;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use List::Util qw(maxstr);

sub SQL_FUNCTION_MAXSTR {
    maxstr(@_[2..$#_]);
}

1;
# ABSTRACT: MAXSTR() SQL function to return the (string-wise) maximum parameter

=for Pod::Coverage .+

=head1 DESCRIPTION

Uses L<List::Util>'s C<maxstr>.
