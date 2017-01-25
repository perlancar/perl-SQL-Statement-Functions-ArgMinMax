package SQL::Statement::Function::ByName::ARGMINSTR;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use List::Util qw(minstr);

sub SQL_FUNCTION_ARGMINSTR {
    minstr(@_[2..$#_]);
}

1;
# ABSTRACT: SQL function to return the (string-wise) minimum parameter

=for Pod::Coverage .+

=head1 DESCRIPTION

Uses L<List::Util>'s C<minstr>.
